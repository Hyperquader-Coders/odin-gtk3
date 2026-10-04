#+test
package gtk3

import "core:testing"

// Flag enums are bit_sets of the C bits: the size is that of the C enum (4 bytes) and a member's
// index is the position of its bit in the header (gdk/gdktypes.h, gdk/gdkevents.h, gtk/gtkenums.h).

bits :: proc(s: $S) -> u32 {
    return transmute(u32)s
}

@(test)
test_flag_sets_are_the_size_of_the_c_enum :: proc(t: ^testing.T) {
    testing.expect_value(t, size_of(GdkModifierType), 4)
    testing.expect_value(t, size_of(GdkEventMask), 4)
    testing.expect_value(t, size_of(GdkDragAction), 4)
    testing.expect_value(t, size_of(GdkWindowState), 4)
    testing.expect_value(t, size_of(GdkSeatCapabilities), 4)
    testing.expect_value(t, size_of(StateFlags), 4)
    testing.expect_value(t, size_of(DialogFlags), 4)
    testing.expect_value(t, size_of(AccelFlags), 4)
    testing.expect_value(t, size_of(JunctionSides), 4)
    testing.expect_value(t, size_of(FileFilterFlags), 4)
}

@(test)
test_modifier_bits_match_the_header :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(GdkModifierType{.SHIFT_MASK}), 1 << 0)
    testing.expect_value(t, bits(GdkModifierType{.CONTROL_MASK}), 1 << 2)
    testing.expect_value(t, bits(GdkModifierType{.MOD1_MASK}), 1 << 3)
    testing.expect_value(t, bits(GdkModifierType{.BUTTON1_MASK}), 1 << 8)
    testing.expect_value(t, bits(GdkModifierType{.SUPER_MASK}), 1 << 26)
    testing.expect_value(t, bits(GdkModifierType{.META_MASK}), 1 << 28)
    testing.expect_value(t, bits(GdkModifierType{.RELEASE_MASK}), 1 << 30)
    testing.expect_value(t, bits(GdkModifierType{.SHIFT_MASK, .CONTROL_MASK}), 5)
    testing.expect_value(t, bits(GDK_MODIFIER_MASK), 0x5c001fff)
}

@(test)
test_event_mask_bits_match_the_header :: proc(t: ^testing.T) {
    // GDK_EXPOSURE_MASK is 1 << 1: bit 0 has no member
    testing.expect_value(t, bits(GdkEventMask{.EXPOSURE_MASK}), 1 << 1)
    testing.expect_value(t, bits(GdkEventMask{.BUTTON_PRESS_MASK}), 1 << 8)
    testing.expect_value(t, bits(GdkEventMask{.KEY_PRESS_MASK}), 1 << 10)
    testing.expect_value(t, bits(GdkEventMask{.SCROLL_MASK}), 1 << 21)
    testing.expect_value(t, bits(GdkEventMask{.TABLET_PAD_MASK}), 1 << 25)
    testing.expect_value(t, bits(GDK_ALL_EVENTS_MASK), 0x3fffffe)
}

@(test)
test_drag_action_and_state_flags_match_the_header :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(GdkDragAction{.ACTION_DEFAULT}), 1)
    testing.expect_value(t, bits(GdkDragAction{.ACTION_COPY, .ACTION_MOVE}), 2 | 4)
    testing.expect_value(t, bits(GdkDragAction{.ACTION_ASK}), 32)
    testing.expect_value(t, bits(StateFlags{.STATE_FLAG_ACTIVE}), 1)
    testing.expect_value(t, bits(StateFlags{.STATE_FLAG_FOCUSED}), 32)
    testing.expect_value(t, bits(StateFlags{.STATE_FLAG_BACKDROP}), 64)
}

@(test)
test_zero_members_are_the_empty_set :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(STATE_FLAG_NORMAL), 0)
    testing.expect_value(t, bits(JUNCTION_NONE), 0)
    testing.expect_value(t, bits(GDK_SEAT_CAPABILITY_NONE), 0)
    testing.expect_value(t, STATE_FLAG_NORMAL, StateFlags{})
}

@(test)
test_composite_masks_are_sets :: proc(t: ^testing.T) {
    testing.expect_value(t, bits(JUNCTION_TOP), 3)
    testing.expect_value(t, bits(JUNCTION_RIGHT), 10)
    testing.expect_value(t, bits(GDK_SEAT_CAPABILITY_ALL_POINTING), 7)
    testing.expect_value(t, bits(GDK_ANCHOR_RESIZE), 48)
    // GTK_ACCEL_MASK is 0x07, which includes a bit that has no member
    testing.expect_value(t, bits(ACCEL_MASK), 7)
    testing.expect_value(t, GdkModifierType{.SHIFT_MASK} <= GDK_MODIFIER_MASK, true)
}

@(test)
test_hand_written_structs_take_the_flag_sets :: proc(t: ^testing.T) {
    k := GdkEventKey{state = {.SHIFT_MASK, .CONTROL_MASK}}
    testing.expect_value(t, k.state, GdkModifierType{.SHIFT_MASK, .CONTROL_MASK})
    e := BindingEntry{modifiers = {.SHIFT_MASK}}
    testing.expect_value(t, bits(e.modifiers), 1)
}
