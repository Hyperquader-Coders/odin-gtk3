#!/usr/bin/env bash
# Rewrites runic's output where runic gets Odin wrong. Run by `make generate` after runic,
# once per package: scripts/postprocess.sh atk|gtk3. Deterministic: the same runic output
# always gives the same file. Every rule is listed in docs/PATCHED.md.
#
# Flag enums become bit_sets (see bit_sets below and docs/PATCHED.md).
#
# The rules are odin-gtk's (MIT, docs/LICENSE-odin-gtk.md), kept where they still apply to
# runic 0.8 on the system headers.
set -euo pipefail

# The GFlags types of each package. runic emits them as `enum u32` of the C values; a value
# rule cannot tell them from sequential enums (Orientation is 0, 1 too), so they are listed.
atk_flags="HyperlinkStateFlags"
gtk3_flags="GdkModifierType GdkEventMask GdkAxisFlags GdkDragAction GdkWindowState
    GdkWindowAttributesType GdkWindowHints GdkWMDecoration GdkWMFunction GdkFrameClockPhase
    GdkAnchorHints GdkSeatCapabilities StateFlags RegionFlags JunctionSides AccelFlags
    ApplicationInhibitFlags DialogFlags TreeModelFlags CellRendererState TextSearchFlags
    TargetFlags CalendarDisplayOptions DebugFlag DestDefaults EventControllerScrollFlags
    FileFilterFlags FontChooserLevel StyleContextPrintFlags IconLookupFlags PlacesOpenFlags
    RecentFilterFlags ToolPaletteDragTargets RcFlags AttachOptions UIManagerItemType InputHints"

# bit_sets <file> <strip-prefix> <enum>...: `Foo :: enum u32 {A = 1, B = 4, C = 5, NONE = 0}`
# becomes
#   FooBit :: enum u32 {A = 0, B = 2}        bit indices, prefix stripped from the members
#   Foo :: bit_set[FooBit; u32]              same size and bits as the C type
#   C :: Foo{.A, .B}                         composite masks, by their C names
#   NONE :: Foo{}                            zero members, by their C names
# Members that are not one bit or zero are composites; a composite with a bit that has no
# member is a transmute of the C value. Fails if a listed enum is missing, has a negative
# value or has no single-bit member, so a header bump that changes a flag type is noticed.
bit_sets() {
    local file=$1 strip=$2
    shift 2
    STRIP=$strip NAMES="$*" perl -i -ne '
        BEGIN { $strip = $ENV{STRIP}; %want = map { $_ => 1 } split " ", $ENV{NAMES}; }
        if (/^(\w+) :: enum u32 \{(.*)\}\s*$/ && $want{$1}) {
            my ($name, $body) = ($1, $2);
            delete $want{$name};
            my (@bits, @zero, @comp, $all);
            for my $m (split /,\s*/, $body =~ s/\s+$//r) {
                $m =~ /^(\w+) = (-?\d+)$/ or die "postprocess: $name: cannot read member $m\n";
                my ($id, $v) = ($1, $2);
                die "postprocess: $name.$id is negative\n" if $v < 0;
                if ($v == 0) { push @zero, $id }
                elsif (($v & ($v - 1)) == 0) { push @bits, [$id, $v] }
                else { push @comp, [$id, $v] }
            }
            die "postprocess: $name has no single-bit member\n" unless @bits;
            my %idx; my $mask = 0;
            for (@bits) {
                my $i = 0; $i++ while (1 << $i) != $_->[1];
                ($id = $_->[0]) =~ s/^\Q$strip\E//;
                $idx{$_->[1]} = $id; $mask |= $_->[1];
                $_ = [$id, $i];
            }
            print "${name}Bit :: enum u32 {", join(", ", map { "$_->[0] = $_->[1]" } @bits), "}\n";
            print "$name :: bit_set[${name}Bit; u32]\n";
            for (@zero) { print "$_ :: $name\{}\n" }
            for (@comp) {
                my ($id, $v) = @$_;
                if (($v & ~$mask) == 0) {
                    print "$id :: $name\{", join(", ", map { ".$idx{$_}" } grep { $v & $_ } sort { $a <=> $b } keys %idx), "}\n";
                } else { print "$id :: transmute($name)u32($v)\n" }
            }
        } else { print }
        END { die "postprocess: flag enum(s) not found: " . join(" ", sort keys %want) . "\n" if %want; }
    ' "$file"
}

# rows_for <pkg>: the `scope|name|from|to` rows param_rules applies. `parameters: declared`
# types every procedure parameter ^T, including those of function-pointer types, which the
# `arrays:` list cannot name; a row here gives a callback-type parameter its previous type
# (`[^]T`, the real arrays among them) back. Scope is the callback type's name.
rows_for() {
    case $1 in
    atk)
        printf '%s\n' \
            "PropertyChangeHandler|vals|^PropertyValues|[^]PropertyValues" \
            "property_change_func_ptr_anon_20|values|^PropertyValues|[^]PropertyValues" \
            "bounds_changed_func_ptr_anon_54|bounds|^Rectangle|[^]Rectangle" \
            "set_text_selections_func_ptr_anon_67|selections|^glib.Array|[^]glib.Array"
        ;;
    gtk3)
        printf '%s\n' \
            "dispatch_child_properties_changed_func_ptr_anon_17|pspecs|^^gobj.ParamSpec|[^]^gobj.ParamSpec" \
            "adjust_size_allocation_func_ptr_anon_92|allocated_pos|^glib.int_|[^]glib.int_" \
            "set_focus_func_ptr_anon_117|focus|^Widget|[^]Widget" \
            "et_selection_bounds_func_ptr_anon_278|start_pos|^glib.int_|[^]glib.int_" \
            "et_selection_bounds_func_ptr_anon_278|end_pos|^glib.int_|[^]glib.int_" \
            "et_text_func_ptr_anon_305|n_bytes|^glib.size|[^]glib.size" \
            "ClipboardURIReceivedFunc|uris|^cstring|[^]cstring" \
            "ClipboardTargetsReceivedFunc|atoms|^GdkAtom|[^]GdkAtom" \
            "add_palette_func_ptr_anon_539|colors|^GdkRGBA|[^]GdkRGBA" \
            "update_custom_widget_func_ptr_anon_834|settings|^PrintSettings|[^]PrintSettings" \
            "insert_text_func_ptr_anon_998|pos|^TextIter|[^]TextIter" \
            "ColorSelectionChangePaletteFunc|colors|^GdkColor|[^]GdkColor" \
            "ColorSelectionChangePaletteWithScreenFunc|colors|^GdkColor|[^]GdkColor" \
            "parse_func_ptr_anon_1156|settings|^Settings|[^]Settings"
        ;;
    esac
}

# param_rules <file> <row>...: applies the rows; fails when one matched nothing, so a header
# bump that changes a declaration is noticed.
param_rules() {
    local file=$1
    shift
    [ $# -gt 0 ] || return 0
    RULES=$(printf '%s\n' "$@") perl -i -ne '
        BEGIN { @r = map { [split /\|/, $_, 4] } split /\n/, $ENV{RULES}; @hit = (0) x @r }
        for my $i (0..$#r) {
            my ($scope, $n, $from, $to) = @{$r[$i]};
            if (/^(?:    )?\Q$scope\E :: /) {
                $hit[$i]++ if s/\b\Q$n\E: \Q$from\E(?![\w.])/$n: $to/;
            }
        }
        print;
        END { my $bad = 0; for my $i (0..$#r) { next if $hit[$i]; print STDERR "postprocess: row matched nothing: @{$r[$i]}[0..3]\n"; $bad = 1 } exit $bad }
    ' "$file"
}

pkg=${1:?usage: postprocess.sh atk|gtk3}
cd "$(dirname "$0")/.."
file="$pkg/$pkg.odin"
[ -f "$file" ] || { echo "postprocess: $file not found" >&2; exit 2; }

case "$pkg" in
atk)
    # `typedef struct _AtkFoo AtkFoo` comes out as `Foo :: _AtkFoo` plus `_AtkFoo :: ...`: drop
    # the alias, rename the struct. gchar * is ^char (cstring). Macro constants runic emits as
    # backtick strings become Odin expressions; the version functions and the `extern` marker
    # are not constants.
    sed -i "$file" \
        -e 's/\(\^\|\[\^\]\)glib\.char/cstring/g' \
        -e '/^\(atk_[a-z_]*version\|atk_[a-z_]*age\|VAR\) ::/d' \
        -e '/^\(MAJOR_VERSION\|MINOR_VERSION\|MICRO_VERSION\|BINARY_AGE\|INTERFACE_AGE\) ::/ {s/`//g; s/(//g; s/)//g}' \
        -e '/^VERSION_/ {s/`//g; s/(((\([0-9]*\)) << 16 | (\([0-9]*\)) << 8))/(\1 << 16 | \2 << 8)/}' \
        -e '/^TYPE_/ {s/`//g; s/(//g; s/)//g; s/atk_//g; s/ *$//}' \
        -e 's#^\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*_Atk\1$##' \
        -e 's#^_Atk\([a-zA-Z][a-zA-Z_0-9]*\)\s*::\s*\(.*\)$#\1 :: \2#'
    # shellcheck disable=SC2086
    bit_sets "$file" "" $atk_flags
    ;;
gtk3)
    # runic trims the `G` of `GdkFoo` as it does that of `GFoo`, which leaves `dkFoo`; Gdk keeps
    # its prefix, because GtkWindow and GdkWindow would both be `Window`. `typedef struct
    # _GtkFoo GtkFoo` comes out as `Foo :: _GtkFoo` plus `_GtkFoo :: ...`: rename the struct, drop
    # the self-alias. gtk_main, gtk_true and gtk_false keep their C names: `main`, `true` and
    # `false` are reserved in Odin. Structs with bit fields are declared by hand (gtk3/hand.odin); runic leaves
    # their placeholder. Macro constants runic emits as backtick strings become Odin expressions.
    sed -i "$file" \
        -e 's/\(\^\|\[\^\]\)glib\.char/cstring/g' \
        -e 's/\bdk\([A-Z]\)/Gdk\1/g' \
        -e 's/\bpixbuf\.Gdk/pixbuf./g; s/\batk\.Atk/atk./g; s/\bpango\.Pango/pango./g' \
        -e 's/^\(    \)\(main\|true\|false\) :: proc/\1gtk_\2 :: proc/' \
        -e 's/^foreign import gtk3_runic "system:gtk-3"$/foreign import gtk3_runic {"system:gtk-3", "system:gdk-3"}/' \
        -e 's/^UNIT_PIXEL :: .*/UNIT_PIXEL :: Unit.NONE/' \
        -e 's/cairo\.cairo_t\b/cairo.context_t/g' \
        -e 's/cairo\.cairo_\([a-z_]*_t\)/cairo.\1/g' \
        -e 's/\b_Gtk\([A-Z]\)/\1/g' \
        -e 's/\b_Gdk\([A-Z]\)/Gdk\1/g' \
        -e 's/\bGdkAtom :: struct/_GdkAtom :: struct/; s/\bGdkAtom :: ^GdkAtom$/GdkAtom :: ^_GdkAtom/' \
        -e '/^[A-Za-z0-9_]* :: ThisTypeIsUntyped$/d' \
        -e '/^\(GdkEventKey\|GdkEventScroll\|TextAppearance\|TextAttributes\|BindingSet\|BindingEntry\) :: \[1\]u8$/d' \
        -e '/^\([A-Za-z0-9_]*\) :: \1$/d' \
        -e '/^\(ModuleFlags\|_GModule\|Module\|ModuleCheckInit\|ModuleUnload\|ModuleError\) :: /d' \
        -e 's/^\(GDK_[A-Z_]*\) :: `((GdkAtom)((gpointer) (gulong) (\([0-9]*\))))`$/\1 := GdkAtom(uintptr(\2))/' \
        -e '/^STOCK_/ s/`((GtkStock)\\"\(.*\)\\")`/"\1"/' \
        -e '/^\(GDK_\)\?TYPE_/ {s/`//g; s/(//g; s/)//g; s/gtk_//; s/ *$//}' \
        -e '/_ERROR :: / {s/`//g; s/(//g; s/)//g; s/gtk_//; s/ *$//}' \
        -e 's/^GDK_EVENT_STOP :: .*/GDK_EVENT_STOP :: 1/' \
        -e 's/^GDK_EVENT_PROPAGATE :: .*/GDK_EVENT_PROPAGATE :: 0/' \
        -e 's/^ENTRY_BUFFER_MAX_SIZE :: .*/ENTRY_BUFFER_MAX_SIZE :: max(u16)/' \
        -e '/^GDK_\(CURRENT_TIME\|PARENT_RELATIVE\) :: / s/L`$/`/' \
        -e '/^[A-Z_0-9]* :: `/ s/`//g' \
        -e '/^GdkEvent\(Motion\|Button\|Touch\|Crossing\|TouchpadSwipe\|TouchpadPinch\) :: struct {$/,/^}$/ s/^    state: glib\.uint_,$/    state: GdkModifierType,/'
    # shellcheck disable=SC2086
    bit_sets "$file" GDK_ $gtk3_flags
    ;;
*)
    echo "postprocess: unknown package $pkg" >&2
    exit 2
    ;;
esac

mapfile -t rules < <(rows_for "$pkg")
param_rules "$file" "${rules[@]}"
