package gtk3

import glib "glib:glib"
import pango "pango:pango"

// Declarations runic cannot generate: structs with bit fields, laid out by hand. Listed in docs/PATCHED.md; hand_test.odin checks
// every size and offset against the C structs on x86_64.

// GdkXEvent is `void` in C: a native event, cast to the window system's own type.
GdkXEvent :: struct {}

GdkEventKey :: struct {
    type:             GdkEventType,
    window:           ^GdkWindow,
    send_event:       glib.int8,
    time:             glib.uint32,
    state:            GdkModifierType,
    keyval:           glib.uint_,
    length:           glib.int_,
    string:           cstring,
    hardware_keycode: glib.uint16,
    group:            glib.uint8,
    using _:          bit_field glib.uint_ {
        is_modifier: glib.uint_ | 1,
    },
}

GdkEventScroll :: struct {
    type:       GdkEventType,
    window:     ^GdkWindow,
    send_event: glib.int8,
    time:       glib.uint32,
    x:          glib.double,
    y:          glib.double,
    state:      GdkModifierType,
    direction:  GdkScrollDirection,
    device:     ^GdkDevice,
    x_root:     glib.double,
    y_root:     glib.double,
    delta_x:    glib.double,
    delta_y:    glib.double,
    using _:    bit_field glib.uint_ {
        is_stop: glib.uint_ | 1,
    },
}

TextAppearance :: struct {
    bg_color: GdkColor,
    fg_color: GdkColor,
    rise:     glib.int_,
    using _:  bit_field glib.uint_ {
        underline:        glib.uint_ | 4,
        strikethrough:    glib.uint_ | 1,
        draw_bg:          glib.uint_ | 1,
        inside_selection: glib.uint_ | 1,
        is_text:          glib.uint_ | 1,
    },
    rgba:     [2]^GdkRGBA,
}

TextAttributes :: struct {
    refcount:            glib.uint_,
    appearance:          TextAppearance,
    justification:       Justification,
    direction:           TextDirection,
    font:                ^pango.FontDescription,
    font_scale:          glib.double,
    left_margin:         glib.int_,
    right_margin:        glib.int_,
    indent:              glib.int_,
    pixels_above_lines:  glib.int_,
    pixels_below_lines:  glib.int_,
    pixels_inside_wrap:  glib.int_,
    tabs:                ^pango.TabArray,
    wrap_mode:           WrapMode,
    language:            ^pango.Language,
    pg_bg_color:         ^GdkColor,
    using _:             bit_field glib.uint_ {
        invisible:      glib.uint_ | 1,
        bg_full_height: glib.uint_ | 1,
        editable:       glib.uint_ | 1,
        no_fallback:    glib.uint_ | 1,
    },
    pg_bg_rgba:          ^GdkRGBA,
    letter_spacing:      glib.int_,
    font_features:       cstring,
}

BindingSet :: struct {
    set_name:            cstring,
    priority:            glib.int_,
    widget_path_pspecs:  ^glib.SList,
    widget_class_pspecs: ^glib.SList,
    class_branch_pspecs: ^glib.SList,
    entries:             ^BindingEntry,
    current:             ^BindingEntry,
    using _:             bit_field glib.uint_ {
        parsed: glib.uint_ | 1,
    },
}

BindingEntry :: struct {
    keyval:    glib.uint_,
    modifiers: GdkModifierType,
    binding_set: ^BindingSet,
    using _:   bit_field glib.uint_ {
        destroyed:     glib.uint_ | 1,
        in_emission:   glib.uint_ | 1,
        marks_unbound: glib.uint_ | 1,
    },
    set_next:  ^BindingEntry,
    hash_next: ^BindingEntry,
    signals:   ^BindingSignal,
}
