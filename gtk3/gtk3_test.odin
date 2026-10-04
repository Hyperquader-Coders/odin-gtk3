#+test
package gtk3

import "core:strings"
import "core:testing"

import glib "glib:glib"
import gobj "glib:gobject"
import pango "pango:pango"

// Version recorded in README.md: "**Bound version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (major, minor, micro: int, ok: bool) {
    marker :: "**Bound version:** "
    readme := README
    i := strings.index(readme, marker)
    if i < 0 do return
    rest := readme[i + len(marker):]
    end := strings.index_any(rest, " \n")
    if end < 0 do return
    parts := strings.split(rest[:end], ".", context.temp_allocator)
    if len(parts) != 3 do return
    nums: [3]int
    for p, n in parts {
        v := 0
        if len(p) == 0 do return
        for c in p {
            if c < '0' || c > '9' do return
            v = v * 10 + int(c - '0')
        }
        nums[n] = v
    }
    return nums[0], nums[1], nums[2], true
}

@(test)
test_readme_version_matches_header_macros :: proc(t: ^testing.T) {
    major, minor, micro, ok := bound_version()
    testing.expect(t, ok, "README.md has no '**Bound version:** X.Y.Z'")
    testing.expect_value(t, major, MAJOR_VERSION)
    testing.expect_value(t, minor, MINOR_VERSION)
    testing.expect_value(t, micro, MICRO_VERSION)
}

@(test)
test_loaded_library_matches_the_headers :: proc(t: ^testing.T) {
    testing.expect_value(t, int(get_major_version()), MAJOR_VERSION)
    testing.expect_value(t, int(get_minor_version()), MINOR_VERSION)
    testing.expect_value(t, int(get_micro_version()), MICRO_VERSION)
    testing.expect(
        t,
        check_version(MAJOR_VERSION, MINOR_VERSION, MICRO_VERSION) == nil,
        "check_version rejects the bound version",
    )
}

@(test)
test_gdk_is_linked :: proc(t: ^testing.T) {
    testing.expect_value(t, string(gdk_keyval_name(0xff0d)), "Return")
    testing.expect_value(t, gdk_keyval_from_name("Escape"), 0xff1b)
    testing.expect_value(t, gdk_keyval_to_upper('a'), 'A')
}

@(test)
test_accelerator_valid :: proc(t: ^testing.T) {
    // No display is open, so only the procedures that need no keymap run.
    testing.expect(t, bool(accelerator_valid('q', GdkModifierType{})), "'q' is not a valid accelerator key")
    testing.expect(t, accelerator_valid(0, GdkModifierType{}) == b32(false), "0 is a valid accelerator key")
    testing.expect_value(t, gdk_unicode_to_keyval('q'), 'q')
}

@(test)
test_type_names :: proc(t: ^testing.T) {
    testing.expect_value(t, string(gobj.type_name(TYPE_WINDOW())), "GtkWindow")
    testing.expect_value(t, string(gobj.type_name(GDK_TYPE_WINDOW())), "GdkWindow")
}

@(test)
test_hand_written_layouts_match_c :: proc(t: ^testing.T) {
    // sizeof() and offsetof() of the C structs on x86_64, from a C compile against libgtk-3-dev.
    testing.expect_value(t, size_of(GdkEventKey), 56)
    testing.expect_value(t, offset_of(GdkEventKey, keyval), 28)
    testing.expect_value(t, offset_of(GdkEventKey, string), 40)
    testing.expect_value(t, offset_of(GdkEventKey, hardware_keycode), 48)
    testing.expect_value(t, offset_of(GdkEventKey, group), 50)
    testing.expect_value(t, size_of(GdkEventScroll), 96)
    testing.expect_value(t, offset_of(GdkEventScroll, direction), 44)
    testing.expect_value(t, offset_of(GdkEventScroll, delta_y), 80)
    testing.expect_value(t, size_of(TextAppearance), 48)
    testing.expect_value(t, offset_of(TextAppearance, rise), 24)
    testing.expect_value(t, offset_of(TextAppearance, rgba), 32)
    testing.expect_value(t, size_of(TextAttributes), 168)
    testing.expect_value(t, offset_of(TextAttributes, appearance), 8)
    testing.expect_value(t, offset_of(TextAttributes, font_scale), 72)
    testing.expect_value(t, offset_of(TextAttributes, pg_bg_color), 128)
    testing.expect_value(t, offset_of(TextAttributes, pg_bg_rgba), 144)
    testing.expect_value(t, offset_of(TextAttributes, letter_spacing), 152)
    testing.expect_value(t, offset_of(TextAttributes, font_features), 160)
    testing.expect_value(t, size_of(BindingSet), 64)
    testing.expect_value(t, offset_of(BindingSet, entries), 40)
    testing.expect_value(t, size_of(BindingEntry), 48)
    testing.expect_value(t, offset_of(BindingEntry, binding_set), 8)
    testing.expect_value(t, offset_of(BindingEntry, set_next), 24)
    testing.expect_value(t, offset_of(BindingEntry, signals), 40)
}

@(test)
test_opaque_patched_sizes_match_c :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(RcStyle), 384)
    testing.expect_value(t, size_of(ContainerClass), 976)
    testing.expect_value(t, size_of(MenuShellClass), 1088)
    testing.expect_value(t, size_of(MenuItemClass), 1112)
    testing.expect_value(t, size_of(TableChild), 24)
    testing.expect_value(t, size_of(TableRowCol), 8)
}

@(test)
test_event_key_bit_field :: proc(t: ^testing.T) {
    e: GdkEventKey
    e.is_modifier = 1
    testing.expect_value(t, e.is_modifier, 1)
    e.is_modifier = 0
    testing.expect_value(t, e.is_modifier, 0)
}

// Single-object parameters are ^T (docs/PATCHED.md); runic wrote [^]T for names ending in "s".
// The typed pins in patched.odin cover the type of each; this one calls through a receiver
// that used to be [^]PrintSettings. GtkPrintSettings needs no display.
@(test)
test_print_settings_receiver_is_one_object :: proc(t: ^testing.T) {
    s := print_settings_new()
    defer gobj.object_unref(s)
    testing.expect(t, s != nil)
    print_settings_set_n_copies(s, 3)
    testing.expect_value(t, print_settings_get_n_copies(s), 3)
}

// `PangoAttrList **attrs` is one out-pointer: ^^pango.AttrList, not the [^]^ runic wrote
// (docs/PATCHED.md). A simple context with no preedit returns an empty string and, as the
// header allows, may leave attrs alone. GtkIMContextSimple needs no display.
@(test)
test_preedit_attrs_is_one_out_pointer :: proc(t: ^testing.T) {
    ctx := im_context_simple_new()
    defer gobj.object_unref(rawptr(ctx))
    str: cstring
    attrs: ^pango.AttrList
    pos: glib.int_ = -1
    im_context_get_preedit_string(ctx, &str, &attrs, &pos)
    defer glib.free(rawptr(str))
    testing.expect_value(t, string(str), "")
    testing.expect_value(t, pos, 0)
    if attrs != nil do pango.attr_list_unref(attrs)
}
