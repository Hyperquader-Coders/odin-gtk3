# Decisions — odin-gtk3

Settled choices. An entry that stops being true is rewritten, not appended to.

## 1. Generated, not hand-written

The bindings are generated with runic from the headers Amber ships, so a library bump is a
regeneration. Hand fixes are the exception and are tracked in [PATCHED.md](PATCHED.md).

## 2. runic: Amber's fork, branch amber-patched

The generator is Hyperquader-Coders/runic on the branch `amber-patched` (upstream 0.8 plus two
patches), as in odin-glib's decision 2.
The Makefile takes it as `RUNIC ?= ../runic/build/runic`.

## 3. GTK and GDK share one package; Gtk is trimmed and Gdk is not

`gtk3` binds GTK 3 and GDK 3 together, because `gtk.h` includes `gdk.h` and each uses the
other's types. `GtkWindow` and `GdkWindow` would both be `Window`, as would `GTK_TYPE_WINDOW`
and `GDK_TYPE_WINDOW`, so only the Gtk prefix is trimmed: `Window`, `window_new`, `TYPE_WINDOW`
for GTK, and `GdkWindow`, `gdk_window_new`, `GDK_TYPE_WINDOW` for GDK. Two packages (`gtk3` and
`gdk3`) were rejected: GTK's headers and GDK's reference each other, so runic would declare one
set of types twice. Trimming both prefixes was rejected for the collisions above.

## 4. ATK is its own package

GTK 3's headers include ATK, and nothing else in the suite binds it. `atk` is a package of this
repo, imported by `gtk3` as `gtk3:atk`, and has its own version line in the README.

## 5. The whole surface is bound

Generation makes the whole of GTK 3, GDK 3 and ATK cheap, deprecated API included. Copal and
amberlin use a small part; the rest costs a regeneration and no hand work. GtkUnixPrint, the
GDK X11, Wayland and Broadway backends and GtkX are not included by `gtk.h` and are not bound.

## 6. Dependencies are siblings, resolved through collections

`gtk3` imports `glib:`, `cairo:`, `pango:` and `pixbuf:`; the Makefile sets their paths as `?=`
variables. Their types come from those packages as external sources in `rune.yml`. A program
links one GLib, one Cairo, one Pango and one GdkPixbuf.

## 7. A name that two packages share is renamed after generation

runic resolves an external type by its trimmed name. `GObject` and `AtkObject` are both `Object`,
and trimming `Atk` made the choice differ between runs. `rune.yml` therefore trims neither `Atk`
nor `Pango`, and `postprocess.sh` removes the prefix from the references, so a regeneration is
reproducible byte for byte.

## 8. Flag enums are bit_sets, chosen by a list

C flag types (`GdkModifierType`, `GdkEventMask`, `GdkDragAction`, `StateFlags`, …) are
`bit_set[FooBit; u32]`, so callers write `{.SHIFT_MASK, .CONTROL_MASK}`. `postprocess.sh` rewrites
the enums runic emits; the members of `FooBit` are bit indices, `GDK_` is stripped from them, and
the type keeps the C size (4 bytes) and bits. A zero member (`STATE_FLAG_NORMAL`) is the constant
`Foo{}`; a composite (`GDK_MODIFIER_MASK`, `JUNCTION_TOP`) is a constant set; one with a bit that has
no member (`ACCEL_MASK`) is a `transmute` of the C value.

A value rule was rejected: `Orientation` and `SortType` are 0 and 1 and are not flags, and
composites defeat it for the real ones. The list is checked, not trusted: generation fails if a
listed enum is missing, has a negative value or has no single-bit member. A new GFlags type in a
header bump is added to the list by hand.

## 9. Parameters are single objects unless declared

runic 0.8 writes `[^]T` for a pointer parameter whose C name ends in `s` (`settings`, `lines`),
however many elements it holds, which lets a caller index past one element, and drops a trailing
`va_list`, binding the procedure as `#c_vararg ..any`. Amber's runic fork (branch `amber-patched`)
has `parameters: declared`: with it every procedure parameter is `^T` (`T **` is `^^T`) unless
`arrays:` in the package's `rune.yml` lists it, chosen against the C headers, and a va_list
procedure is skipped. Struct members, variables and typedefs keep runic's name guess, and the
parameters of function-pointer types are plain `^T`: a limit of the fork, true in every binding.
Where a binding needs it, the `param_rules` table in `postprocess.sh` restores the `[^]` for
those parameters' real arrays, rewrites single-object struct members and corrects `T ***` outs;
a row that matches nothing fails the build. Rejected: rewriting the output in `postprocess.sh`,
which had to be told each parameter, matched `va_list` procedures by name pattern (it deleted
`list_store_insert_with_values` for containing `_va`) and was a second place to keep in step
with the headers. `scripts/check-generated.sh` stays as the guard that any regeneration, with
any runic, keeps the listed parameters right.

In this repo: the `postprocess.sh` rewrite this replaced had to name 199 single-object parameters across `atk` and `gtk3`. `list_store_insert_with_values` and `tree_store_insert_with_values` are bound again, as the real `...` procedures they are.
