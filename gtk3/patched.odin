package gtk3

import glib "glib:glib"
import cairo "cairo:cairo"
import gio "glib:gio"
import gobj "glib:gobject"
import pango "pango:pango"
import pixbuf "pixbuf:gdkpixbuf"

// Typed pins for the hand-fixed declarations (docs/PATCHED.md). A regeneration that drops or
// changes one fails to compile here.

// gtk_main, gtk_true and gtk_false keep their C names, because trimmed they would be Odin's
// `main`, `true` and `false`.
patched_main: proc "c" () = gtk_main
patched_true: proc "c" () -> glib.boolean = gtk_true
patched_false: proc "c" () -> glib.boolean = gtk_false

// runic cannot lay out bit-field structs; rune.yml overwrites these with arrays of the
// x86_64 size and alignment. test_opaque_patched_sizes_match_c checks the sizes against the
// C structs.
patched_rc_style: [48]u64 = RcStyle{}
patched_container_class: [122]u64 = ContainerClass{}
patched_menu_shell_class: [136]u64 = MenuShellClass{}
patched_menu_item_class: [139]u64 = MenuItemClass{}
patched_table_child: [3]u64 = TableChild{}
patched_table_row_col: [2]u32 = TableRowCol{}

// The structs with bit fields that stay usable are declared in hand.odin instead. A regeneration
// that emits one of them too fails to compile with a redeclaration, which pins them.

// Single-object parameters: the C header passes one `T *`, so the parameter is `^T`, not the
// `[^]T` runic writes for a name ending in "s" (scripts/single-object-params.*.txt). One pin per
// type; a regeneration that brings `[^]T` back fails to compile here.

@(private = "file")
patched__gtk_accel_label_class_get_accelerator_label_single_object: proc "c" (_: ^AccelLabelClass, _: glib.uint_, _: GdkModifierType) -> cstring = _gtk_accel_label_class_get_accelerator_label

@(private = "file")
patched_accel_group_query_single_object: proc "c" (_: ^AccelGroup, _: glib.uint_, _: GdkModifierType, _: ^glib.uint_) -> ^AccelGroupEntry = accel_group_query

@(private = "file")
patched_accel_label_get_accel_single_object: proc "c" (_: ^AccelLabel, _: ^glib.uint_, _: ^GdkModifierType) = accel_label_get_accel

@(private = "file")
patched_binding_entry_add_signall_single_object: proc "c" (_: ^BindingSet, _: glib.uint_, _: GdkModifierType, _: cstring, _: ^glib.SList) = binding_entry_add_signall

@(private = "file")
patched_cell_area_class_find_cell_property_single_object: proc "c" (_: ^CellAreaClass, _: cstring) -> ^gobj.ParamSpec = cell_area_class_find_cell_property

@(private = "file")
patched_cell_renderer_class_set_accessible_type_single_object: proc "c" (_: ^CellRendererClass, _: gobj.Type) = cell_renderer_class_set_accessible_type

@(private = "file")
patched_clipboard_wait_for_targets_single_object: proc "c" (_: ^Clipboard, _: [^]^GdkAtom, _: ^glib.int_) -> glib.boolean = clipboard_wait_for_targets

@(private = "file")
patched_container_class_find_child_property_single_object: proc "c" (_: ^gobj.ObjectClass, _: cstring) -> ^gobj.ParamSpec = container_class_find_child_property

@(private = "file")
patched_container_class_handle_border_width_single_object: proc "c" (_: ^ContainerClass) = container_class_handle_border_width

@(private = "file")
patched_container_set_focus_chain_single_object: proc "c" (_: ^Container, _: ^glib.List) = container_set_focus_chain

@(private = "file")
patched_drag_begin_single_object: proc "c" (_: ^Widget, _: ^TargetList, _: GdkDragAction, _: glib.int_, _: ^GdkEvent) -> ^GdkDragContext = drag_begin

@(private = "file")
patched_entry_set_attributes_single_object: proc "c" (_: ^Entry, _: ^pango.AttrList) = entry_set_attributes

@(private = "file")
patched_entry_set_tabs_single_object: proc "c" (_: ^Entry, _: ^pango.TabArray) = entry_set_tabs

@(private = "file")
patched_gdk_device_grab_info_libgtk_only_single_object: proc "c" (_: ^GdkDisplay, _: ^GdkDevice, _: ^^GdkWindow, _: ^glib.boolean) -> glib.boolean = gdk_device_grab_info_libgtk_only

@(private = "file")
patched_gdk_frame_timings_get_complete_single_object: proc "c" (_: ^GdkFrameTimings) -> glib.boolean = gdk_frame_timings_get_complete

@(private = "file")
patched_gdk_screen_set_font_options_single_object: proc "c" (_: ^GdkScreen, _: ^cairo.font_options_t) = gdk_screen_set_font_options

@(private = "file")
patched_gdk_window_get_decorations_single_object: proc "c" (_: ^GdkWindow, _: ^GdkWMDecoration) -> glib.boolean = gdk_window_get_decorations

@(private = "file")
patched_gdk_window_new_single_object: proc "c" (_: ^GdkWindow, _: ^GdkWindowAttr, _: glib.int_) -> ^GdkWindow = gdk_window_new

@(private = "file")
patched_gradient_resolve_single_object: proc "c" (_: ^radient, _: ^StyleProperties, _: ^^cairo.pattern_t) -> glib.boolean = gradient_resolve

@(private = "file")
patched_icon_info_load_icon_finish_single_object: proc "c" (_: ^IconInfo, _: ^gio.AsyncResult, _: ^^glib.Error) -> ^pixbuf.Pixbuf = icon_info_load_icon_finish

@(private = "file")
patched_icon_size_lookup_for_settings_single_object: proc "c" (_: ^Settings, _: IconSize, _: ^glib.int_, _: ^glib.int_) -> glib.boolean = icon_size_lookup_for_settings

@(private = "file")
patched_icon_view_get_dest_item_at_pos_single_object: proc "c" (_: ^IconView, _: glib.int_, _: glib.int_, _: ^^TreePath, _: ^IconViewDropPosition) -> glib.boolean = icon_view_get_dest_item_at_pos

@(private = "file")
patched_print_operation_set_print_settings_single_object: proc "c" (_: ^PrintOperation, _: ^PrintSettings) = print_operation_set_print_settings

@(private = "file")
patched_style_context_state_is_running_single_object: proc "c" (_: ^StyleContext, _: StateType, _: ^glib.double) -> glib.boolean = style_context_state_is_running

@(private = "file")
patched_text_attributes_ref_single_object: proc "c" (_: ^TextAttributes) -> ^TextAttributes = text_attributes_ref

@(private = "file")
patched_text_buffer_select_range_single_object: proc "c" (_: ^TextBuffer, _: ^TextIter, _: ^TextIter) = text_buffer_select_range

@(private = "file")
patched_theming_engine_has_region_single_object: proc "c" (_: ^ThemingEngine, _: cstring, _: ^RegionFlags) -> glib.boolean = theming_engine_has_region

@(private = "file")
patched_tree_view_get_dest_row_at_pos_single_object: proc "c" (_: ^TreeView, _: glib.int_, _: glib.int_, _: ^^TreePath, _: ^TreeViewDropPosition) -> glib.boolean = tree_view_get_dest_row_at_pos

@(private = "file")
patched_widget_class_bind_template_callback_full_single_object: proc "c" (_: ^WidgetClass, _: cstring, _: gobj.Callback) = widget_class_bind_template_callback_full

@(private = "file")
patched_widget_class_set_template_single_object: proc "c" (_: ^WidgetClass, _: ^glib.Bytes) = widget_class_set_template

@(private = "file")
patched_widget_path_append_with_siblings_single_object: proc "c" (_: ^WidgetPath, _: ^WidgetPath, _: glib.uint_) -> glib.int_ = widget_path_append_with_siblings

@(private = "file")
patched_window_set_focus_single_object: proc "c" (_: ^Window, _: ^Widget) = window_set_focus

// `T **` out-parameters that return one pointer: runic writes `[^]^T`, which lets a caller index
// past one pointer; they are `^^T`. Same lists and check as above.

@(private = "file")
patched_im_context_get_preedit_string_single_pointer: proc "c" (_: ^IMContext, _: ^cstring, _: ^^pango.AttrList, _: ^glib.int_) = im_context_get_preedit_string

@(private = "file")
patched_container_get_focus_chain_single_pointer: proc "c" (_: ^Container, _: ^^glib.List) -> glib.boolean = container_get_focus_chain

// GtkIMContextClass.get_preedit_string is an anonymous callback type that postprocess.sh
// (preedit_callbacks) rewrites: `attrs` and `cursor_pos` are one pointer each.
@(private = "file")
patched_im_context_class_get_preedit_string_single_pointer: proc "c" (_: ^IMContext, _: ^cstring, _: ^^pango.AttrList, _: ^glib.int_) = IMContextClass{}.get_preedit_string
