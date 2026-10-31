# odin-gtk3 API

Every public declaration of every package, generated from the source by `make api`; do not
edit. The short form is the [cheat sheet](CHEATSHEET.md); the rules of the bindings are in the
[README](../README.md) and [PATCHED.md](PATCHED.md).

## gtk3:atk

```text
package atk
	constants
		BINARY_AGE :: 25210
		INTERFACE_AGE :: 1
		MAJOR_VERSION :: 2
		MICRO_VERSION :: 0
		MINOR_VERSION :: 52
		VERSION_2_10 :: 2 << 16 | 10 << 8
		VERSION_2_12 :: 2 << 16 | 12 << 8
		VERSION_2_14 :: 2 << 16 | 14 << 8
		VERSION_2_2 :: 2 << 16 | 2 << 8
		VERSION_2_30 :: 2 << 16 | 30 << 8
		VERSION_2_32 :: 2 << 16 | 32 << 8
		VERSION_2_36 :: 2 << 16 | 36 << 8
		VERSION_2_4 :: 2 << 16 | 4 << 8
		VERSION_2_52 :: 2 << 16 | 52 << 8
		VERSION_2_6 :: 2 << 16 | 6 << 8
		VERSION_2_8 :: 2 << 16 | 8 << 8
		VERSION_CUR_STABLE :: ((2)) << 16 | ((52)) << 8
		VERSION_PREV_STABLE :: ((2)) << 16 | ((52) - 2) << 8

	variables
		misc_instance: ^Misc

	procedures
		action_do_action :: proc(action: ^Action, i: glib.int_) -> glib.boolean ---
		action_get_description :: proc(action: ^Action, i: glib.int_) -> cstring ---
		action_get_keybinding :: proc(action: ^Action, i: glib.int_) -> cstring ---
		action_get_localized_name :: proc(action: ^Action, i: glib.int_) -> cstring ---
		action_get_n_actions :: proc(action: ^Action) -> glib.int_ ---
		action_get_name :: proc(action: ^Action, i: glib.int_) -> cstring ---
		action_get_type :: proc() -> gobj.Type ---
		action_set_description :: proc(action: ^Action, i: glib.int_, desc: cstring) -> glib.boolean ---
		add_focus_tracker :: proc(focus_tracker: EventListener) -> glib.uint_ ---
		add_global_event_listener :: proc(listener: gobj.SignalEmissionHook, event_type: cstring) -> glib.uint_ ---
		add_key_event_listener :: proc(listener: KeySnoopFunc, data: glib.pointer) -> glib.uint_ ---
		attribute_set_free :: proc(attrib_set: ^AttributeSet) ---
		component_add_focus_handler :: proc(component: ^Component, handler: FocusHandler) -> glib.uint_ ---
		component_contains :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean ---
		component_get_alpha :: proc(component: ^Component) -> glib.double ---
		component_get_extents :: proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coord_type: CoordType) ---
		component_get_layer :: proc(component: ^Component) -> Layer ---
		component_get_mdi_zorder :: proc(component: ^Component) -> glib.int_ ---
		component_get_position :: proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType) ---
		component_get_size :: proc(component: ^Component, width: ^glib.int_, height: ^glib.int_) ---
		component_get_type :: proc() -> gobj.Type ---
		component_grab_focus :: proc(component: ^Component) -> glib.boolean ---
		component_ref_accessible_at_point :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> ^Object ---
		component_remove_focus_handler :: proc(component: ^Component, handler_id: glib.uint_) ---
		component_scroll_to :: proc(component: ^Component, type: ScrollType) -> glib.boolean ---
		component_scroll_to_point :: proc(component: ^Component, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean ---
		component_set_extents :: proc(component: ^Component, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, coord_type: CoordType) -> glib.boolean ---
		component_set_position :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean ---
		component_set_size :: proc(component: ^Component, width: glib.int_, height: glib.int_) -> glib.boolean ---
		coord_type_get_type :: proc() -> gobj.Type ---
		document_get_attribute_value :: proc(document: ^Document, attribute_name: cstring) -> cstring ---
		document_get_attributes :: proc(document: ^Document) -> ^AttributeSet ---
		document_get_current_page_number :: proc(document: ^Document) -> glib.int_ ---
		document_get_document :: proc(document: ^Document) -> glib.pointer ---
		document_get_document_type :: proc(document: ^Document) -> cstring ---
		document_get_locale :: proc(document: ^Document) -> cstring ---
		document_get_page_count :: proc(document: ^Document) -> glib.int_ ---
		document_get_text_selections :: proc(document: ^Document) -> ^glib.Array ---
		document_get_type :: proc() -> gobj.Type ---
		document_set_attribute_value :: proc(document: ^Document, attribute_name: cstring, attribute_value: cstring) -> glib.boolean ---
		document_set_text_selections :: proc(document: ^Document, selections: ^glib.Array) -> glib.boolean ---
		editable_text_copy_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---
		editable_text_cut_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---
		editable_text_delete_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---
		editable_text_get_type :: proc() -> gobj.Type ---
		editable_text_insert_text :: proc(text: ^EditableText, string_p: cstring, length: glib.int_, position: ^glib.int_) ---
		editable_text_paste_text :: proc(text: ^EditableText, position: glib.int_) ---
		editable_text_set_run_attributes :: proc(text: ^EditableText, attrib_set: ^AttributeSet, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---
		editable_text_set_text_contents :: proc(text: ^EditableText, string_p: cstring) ---
		focus_tracker_init :: proc(init: EventListenerInit) ---
		focus_tracker_notify :: proc(object: ^Object) ---
		get_binary_age :: proc() -> glib.uint_ ---
		get_default_registry :: proc() -> ^Registry ---
		get_focus_object :: proc() -> ^Object ---
		get_interface_age :: proc() -> glib.uint_ ---
		get_major_version :: proc() -> glib.uint_ ---
		get_micro_version :: proc() -> glib.uint_ ---
		get_minor_version :: proc() -> glib.uint_ ---
		get_root :: proc() -> ^Object ---
		get_toolkit_name :: proc() -> cstring ---
		get_toolkit_version :: proc() -> cstring ---
		get_version :: proc() -> cstring ---
		gobject_accessible_for_object :: proc(obj: ^gobj.Object) -> ^Object ---
		gobject_accessible_get_object :: proc(obj: ^GObjectAccessible) -> ^gobj.Object ---
		gobject_accessible_get_type :: proc() -> gobj.Type ---
		hyperlink_get_end_index :: proc(link_: ^Hyperlink) -> glib.int_ ---
		hyperlink_get_n_anchors :: proc(link_: ^Hyperlink) -> glib.int_ ---
		hyperlink_get_object :: proc(link_: ^Hyperlink, i: glib.int_) -> ^Object ---
		hyperlink_get_start_index :: proc(link_: ^Hyperlink) -> glib.int_ ---
		hyperlink_get_type :: proc() -> gobj.Type ---
		hyperlink_get_uri :: proc(link_: ^Hyperlink, i: glib.int_) -> cstring ---
		hyperlink_impl_get_hyperlink :: proc(impl: ^HyperlinkImpl) -> ^Hyperlink ---
		hyperlink_impl_get_type :: proc() -> gobj.Type ---
		hyperlink_is_inline :: proc(link_: ^Hyperlink) -> glib.boolean ---
		hyperlink_is_selected_link :: proc(link_: ^Hyperlink) -> glib.boolean ---
		hyperlink_is_valid :: proc(link_: ^Hyperlink) -> glib.boolean ---
		hyperlink_state_flags_get_type :: proc() -> gobj.Type ---
		hypertext_get_link :: proc(hypertext: ^Hypertext, link_index: glib.int_) -> ^Hyperlink ---
		hypertext_get_link_index :: proc(hypertext: ^Hypertext, char_index: glib.int_) -> glib.int_ ---
		hypertext_get_n_links :: proc(hypertext: ^Hypertext) -> glib.int_ ---
		hypertext_get_type :: proc() -> gobj.Type ---
		image_get_image_description :: proc(image: ^Image) -> cstring ---
		image_get_image_locale :: proc(image: ^Image) -> cstring ---
		image_get_image_position :: proc(image: ^Image, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType) ---
		image_get_image_size :: proc(image: ^Image, width: ^glib.int_, height: ^glib.int_) ---
		image_get_type :: proc() -> gobj.Type ---
		image_set_image_description :: proc(image: ^Image, description: cstring) -> glib.boolean ---
		implementor_get_type :: proc() -> gobj.Type ---
		implementor_ref_accessible :: proc(implementor: ^Implementor) -> ^Object ---
		key_event_type_get_type :: proc() -> gobj.Type ---
		layer_get_type :: proc() -> gobj.Type ---
		live_get_type :: proc() -> gobj.Type ---
		misc_get_instance :: proc() -> ^Misc ---
		misc_get_type :: proc() -> gobj.Type ---
		misc_threads_enter :: proc(misc: ^Misc) ---
		misc_threads_leave :: proc(misc: ^Misc) ---
		no_op_object_factory_get_type :: proc() -> gobj.Type ---
		no_op_object_factory_new :: proc() -> ^ObjectFactory ---
		no_op_object_get_type :: proc() -> gobj.Type ---
		no_op_object_new :: proc(obj: ^gobj.Object) -> ^Object ---
		object_add_relationship :: proc(object: ^Object, relationship: RelationType, target: ^Object) -> glib.boolean ---
		object_connect_property_change_handler :: proc(accessible: ^Object, handler: ^PropertyChangeHandler) -> glib.uint_ ---
		object_factory_create_accessible :: proc(factory: ^ObjectFactory, obj: ^gobj.Object) -> ^Object ---
		object_factory_get_accessible_type :: proc(factory: ^ObjectFactory) -> gobj.Type ---
		object_factory_get_type :: proc() -> gobj.Type ---
		object_factory_invalidate :: proc(factory: ^ObjectFactory) ---
		object_get_accessible_id :: proc(accessible: ^Object) -> cstring ---
		object_get_attributes :: proc(accessible: ^Object) -> ^AttributeSet ---
		object_get_description :: proc(accessible: ^Object) -> cstring ---
		object_get_help_text :: proc(accessible: ^Object) -> cstring ---
		object_get_index_in_parent :: proc(accessible: ^Object) -> glib.int_ ---
		object_get_layer :: proc(accessible: ^Object) -> Layer ---
		object_get_mdi_zorder :: proc(accessible: ^Object) -> glib.int_ ---
		object_get_n_accessible_children :: proc(accessible: ^Object) -> glib.int_ ---
		object_get_name :: proc(accessible: ^Object) -> cstring ---
		object_get_object_locale :: proc(accessible: ^Object) -> cstring ---
		object_get_parent :: proc(accessible: ^Object) -> ^Object ---
		object_get_role :: proc(accessible: ^Object) -> Role ---
		object_get_type :: proc() -> gobj.Type ---
		object_initialize :: proc(accessible: ^Object, data: glib.pointer) ---
		object_notify_state_change :: proc(accessible: ^Object, state: State, value: glib.boolean) ---
		object_peek_parent :: proc(accessible: ^Object) -> ^Object ---
		object_ref_accessible_child :: proc(accessible: ^Object, i: glib.int_) -> ^Object ---
		object_ref_relation_set :: proc(accessible: ^Object) -> ^RelationSet ---
		object_ref_state_set :: proc(accessible: ^Object) -> ^StateSet ---
		object_remove_property_change_handler :: proc(accessible: ^Object, handler_id: glib.uint_) ---
		object_remove_relationship :: proc(object: ^Object, relationship: RelationType, target: ^Object) -> glib.boolean ---
		object_set_accessible_id :: proc(accessible: ^Object, id: cstring) ---
		object_set_description :: proc(accessible: ^Object, description: cstring) ---
		object_set_help_text :: proc(accessible: ^Object, help_text: cstring) ---
		object_set_name :: proc(accessible: ^Object, name: cstring) ---
		object_set_parent :: proc(accessible: ^Object, parent: ^Object) ---
		object_set_role :: proc(accessible: ^Object, role: Role) ---
		plug_get_id :: proc(plug: ^Plug) -> cstring ---
		plug_get_type :: proc() -> gobj.Type ---
		plug_new :: proc() -> ^Object ---
		plug_set_child :: proc(plug: ^Plug, child: ^Object) ---
		range_copy :: proc(src: ^Range) -> ^Range ---
		range_free :: proc(range: ^Range) ---
		range_get_description :: proc(range: ^Range) -> cstring ---
		range_get_lower_limit :: proc(range: ^Range) -> glib.double ---
		range_get_type :: proc() -> gobj.Type ---
		range_get_upper_limit :: proc(range: ^Range) -> glib.double ---
		range_new :: proc(lower_limit: glib.double, upper_limit: glib.double, description: cstring) -> ^Range ---
		rectangle_get_type :: proc() -> gobj.Type ---
		registry_get_factory :: proc(registry: ^Registry, type: gobj.Type) -> ^ObjectFactory ---
		registry_get_factory_type :: proc(registry: ^Registry, type: gobj.Type) -> gobj.Type ---
		registry_get_type :: proc() -> gobj.Type ---
		registry_set_factory_type :: proc(registry: ^Registry, type: gobj.Type, factory_type: gobj.Type) ---
		relation_add_target :: proc(relation: ^Relation, target: ^Object) ---
		relation_get_relation_type :: proc(relation: ^Relation) -> RelationType ---
		relation_get_target :: proc(relation: ^Relation) -> ^glib.PtrArray ---
		relation_get_type :: proc() -> gobj.Type ---
		relation_new :: proc(targets: [^]^Object, n_targets: glib.int_, relationship: RelationType) -> ^Relation ---
		relation_remove_target :: proc(relation: ^Relation, target: ^Object) -> glib.boolean ---
		relation_set_add :: proc(set: ^RelationSet, relation: ^Relation) ---
		relation_set_add_relation_by_type :: proc(set: ^RelationSet, relationship: RelationType, target: ^Object) ---
		relation_set_contains :: proc(set: ^RelationSet, relationship: RelationType) -> glib.boolean ---
		relation_set_contains_target :: proc(set: ^RelationSet, relationship: RelationType, target: ^Object) -> glib.boolean ---
		relation_set_get_n_relations :: proc(set: ^RelationSet) -> glib.int_ ---
		relation_set_get_relation :: proc(set: ^RelationSet, i: glib.int_) -> ^Relation ---
		relation_set_get_relation_by_type :: proc(set: ^RelationSet, relationship: RelationType) -> ^Relation ---
		relation_set_get_type :: proc() -> gobj.Type ---
		relation_set_new :: proc() -> ^RelationSet ---
		relation_set_remove :: proc(set: ^RelationSet, relation: ^Relation) ---
		relation_type_for_name :: proc(name: cstring) -> RelationType ---
		relation_type_get_name :: proc(type: RelationType) -> cstring ---
		relation_type_get_type :: proc() -> gobj.Type ---
		relation_type_register :: proc(name: cstring) -> RelationType ---
		remove_focus_tracker :: proc(tracker_id: glib.uint_) ---
		remove_global_event_listener :: proc(listener_id: glib.uint_) ---
		remove_key_event_listener :: proc(listener_id: glib.uint_) ---
		role_for_name :: proc(name: cstring) -> Role ---
		role_get_localized_name :: proc(role: Role) -> cstring ---
		role_get_name :: proc(role: Role) -> cstring ---
		role_get_type :: proc() -> gobj.Type ---
		role_register :: proc(name: cstring) -> Role ---
		scroll_type_get_type :: proc() -> gobj.Type ---
		selection_add_selection :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---
		selection_clear_selection :: proc(selection: ^Selection) -> glib.boolean ---
		selection_get_selection_count :: proc(selection: ^Selection) -> glib.int_ ---
		selection_get_type :: proc() -> gobj.Type ---
		selection_is_child_selected :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---
		selection_ref_selection :: proc(selection: ^Selection, i: glib.int_) -> ^Object ---
		selection_remove_selection :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---
		selection_select_all_selection :: proc(selection: ^Selection) -> glib.boolean ---
		socket_embed :: proc(obj: ^Socket, plug_id: cstring) ---
		socket_get_type :: proc() -> gobj.Type ---
		socket_is_occupied :: proc(obj: ^Socket) -> glib.boolean ---
		socket_new :: proc() -> ^Object ---
		state_set_add_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---
		state_set_add_states :: proc(set: ^StateSet, types: [^]StateType, n_types: glib.int_) ---
		state_set_and_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---
		state_set_clear_states :: proc(set: ^StateSet) ---
		state_set_contains_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---
		state_set_contains_states :: proc(set: ^StateSet, types: [^]StateType, n_types: glib.int_) -> glib.boolean ---
		state_set_get_type :: proc() -> gobj.Type ---
		state_set_is_empty :: proc(set: ^StateSet) -> glib.boolean ---
		state_set_new :: proc() -> ^StateSet ---
		state_set_or_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---
		state_set_remove_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---
		state_set_xor_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---
		state_type_for_name :: proc(name: cstring) -> StateType ---
		state_type_get_name :: proc(type: StateType) -> cstring ---
		state_type_get_type :: proc() -> gobj.Type ---
		state_type_register :: proc(name: cstring) -> StateType ---
		streamable_content_get_mime_type :: proc(streamable: ^StreamableContent, i: glib.int_) -> cstring ---
		streamable_content_get_n_mime_types :: proc(streamable: ^StreamableContent) -> glib.int_ ---
		streamable_content_get_stream :: proc(streamable: ^StreamableContent, mime_type: cstring) -> ^glib.IOChannel ---
		streamable_content_get_type :: proc() -> gobj.Type ---
		streamable_content_get_uri :: proc(streamable: ^StreamableContent, mime_type: cstring) -> cstring ---
		table_add_column_selection :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---
		table_add_row_selection :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---
		table_cell_get_column_header_cells :: proc(cell: ^TableCell) -> ^glib.PtrArray ---
		table_cell_get_column_span :: proc(cell: ^TableCell) -> glib.int_ ---
		table_cell_get_position :: proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_) -> glib.boolean ---
		table_cell_get_row_column_span :: proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_, row_span: ^glib.int_, column_span: ^glib.int_) -> glib.boolean ---
		table_cell_get_row_header_cells :: proc(cell: ^TableCell) -> ^glib.PtrArray ---
		table_cell_get_row_span :: proc(cell: ^TableCell) -> glib.int_ ---
		table_cell_get_table :: proc(cell: ^TableCell) -> ^Object ---
		table_cell_get_type :: proc() -> gobj.Type ---
		table_get_caption :: proc(table: ^Table) -> ^Object ---
		table_get_column_at_index :: proc(table: ^Table, index_: glib.int_) -> glib.int_ ---
		table_get_column_description :: proc(table: ^Table, column: glib.int_) -> cstring ---
		table_get_column_extent_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---
		table_get_column_header :: proc(table: ^Table, column: glib.int_) -> ^Object ---
		table_get_index_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---
		table_get_n_columns :: proc(table: ^Table) -> glib.int_ ---
		table_get_n_rows :: proc(table: ^Table) -> glib.int_ ---
		table_get_row_at_index :: proc(table: ^Table, index_: glib.int_) -> glib.int_ ---
		table_get_row_description :: proc(table: ^Table, row: glib.int_) -> cstring ---
		table_get_row_extent_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---
		table_get_row_header :: proc(table: ^Table, row: glib.int_) -> ^Object ---
		table_get_selected_columns :: proc(table: ^Table, selected: ^^glib.int_) -> glib.int_ ---
		table_get_selected_rows :: proc(table: ^Table, selected: ^^glib.int_) -> glib.int_ ---
		table_get_summary :: proc(table: ^Table) -> ^Object ---
		table_get_type :: proc() -> gobj.Type ---
		table_is_column_selected :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---
		table_is_row_selected :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---
		table_is_selected :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.boolean ---
		table_ref_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> ^Object ---
		table_remove_column_selection :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---
		table_remove_row_selection :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---
		table_set_caption :: proc(table: ^Table, caption: ^Object) ---
		table_set_column_description :: proc(table: ^Table, column: glib.int_, description: cstring) ---
		table_set_column_header :: proc(table: ^Table, column: glib.int_, header: ^Object) ---
		table_set_row_description :: proc(table: ^Table, row: glib.int_, description: cstring) ---
		table_set_row_header :: proc(table: ^Table, row: glib.int_, header: ^Object) ---
		table_set_summary :: proc(table: ^Table, accessible: ^Object) ---
		text_add_selection :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---
		text_attribute_for_name :: proc(name: cstring) -> TextAttribute ---
		text_attribute_get_name :: proc(attr: TextAttribute) -> cstring ---
		text_attribute_get_type :: proc() -> gobj.Type ---
		text_attribute_get_value :: proc(attr: TextAttribute, index_: glib.int_) -> cstring ---
		text_attribute_register :: proc(name: cstring) -> TextAttribute ---
		text_boundary_get_type :: proc() -> gobj.Type ---
		text_clip_type_get_type :: proc() -> gobj.Type ---
		text_free_ranges :: proc(ranges: [^]^TextRange) ---
		text_get_bounded_ranges :: proc(text: ^Text, rect: ^TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) -> ^^TextRange ---
		text_get_caret_offset :: proc(text: ^Text) -> glib.int_ ---
		text_get_character_at_offset :: proc(text: ^Text, offset: glib.int_) -> glib.unichar ---
		text_get_character_count :: proc(text: ^Text) -> glib.int_ ---
		text_get_character_extents :: proc(text: ^Text, offset: glib.int_, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coords: CoordType) ---
		text_get_default_attributes :: proc(text: ^Text) -> ^AttributeSet ---
		text_get_n_selections :: proc(text: ^Text) -> glib.int_ ---
		text_get_offset_at_point :: proc(text: ^Text, x: glib.int_, y: glib.int_, coords: CoordType) -> glib.int_ ---
		text_get_range_extents :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coord_type: CoordType, rect: ^TextRectangle) ---
		text_get_run_attributes :: proc(text: ^Text, offset: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> ^AttributeSet ---
		text_get_selection :: proc(text: ^Text, selection_num: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---
		text_get_string_at_offset :: proc(text: ^Text, offset: glib.int_, granularity: TextGranularity, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---
		text_get_text :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> cstring ---
		text_get_text_after_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---
		text_get_text_at_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---
		text_get_text_before_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---
		text_get_type :: proc() -> gobj.Type ---
		text_granularity_get_type :: proc() -> gobj.Type ---
		text_range_get_type :: proc() -> gobj.Type ---
		text_remove_selection :: proc(text: ^Text, selection_num: glib.int_) -> glib.boolean ---
		text_scroll_substring_to :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, type: ScrollType) -> glib.boolean ---
		text_scroll_substring_to_point :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean ---
		text_set_caret_offset :: proc(text: ^Text, offset: glib.int_) -> glib.boolean ---
		text_set_selection :: proc(text: ^Text, selection_num: glib.int_, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---
		util_get_type :: proc() -> gobj.Type ---
		value_get_current_value :: proc(obj: ^Value, value: ^gobj.Value) ---
		value_get_increment :: proc(obj: ^Value) -> glib.double ---
		value_get_maximum_value :: proc(obj: ^Value, value: ^gobj.Value) ---
		value_get_minimum_increment :: proc(obj: ^Value, value: ^gobj.Value) ---
		value_get_minimum_value :: proc(obj: ^Value, value: ^gobj.Value) ---
		value_get_range :: proc(obj: ^Value) -> ^Range ---
		value_get_sub_ranges :: proc(obj: ^Value) -> ^glib.SList ---
		value_get_type :: proc() -> gobj.Type ---
		value_get_value_and_text :: proc(obj: ^Value, value: ^glib.double, text: ^cstring) ---
		value_set_current_value :: proc(obj: ^Value, value: ^gobj.Value) -> glib.boolean ---
		value_set_value :: proc(obj: ^Value, new_value: glib.double) ---
		value_type_get_localized_name :: proc(value_type: ValueType) -> cstring ---
		value_type_get_name :: proc(value_type: ValueType) -> cstring ---
		value_type_get_type :: proc() -> gobj.Type ---
		window_get_type :: proc() -> gobj.Type ---

	types
		Action :: struct #packed {}
		ActionIface :: struct {parent: gobj.TypeInterface, do_action: do_action_func_ptr_anon_27, get_n_actions: et_n_actions_func_ptr_anon_28, get_description: et_description_func_ptr_anon_29, get_name: et_name_func_ptr_anon_30, get_keybinding: et_keybinding_func_ptr_anon_31, set_description: set_description_func_ptr_anon_32, get_localized_name: et_localized_name_func_ptr_anon_33}
		Attribute :: struct {name: cstring, value: cstring}
		AttributeSet :: glib.SList
		Component :: struct #packed {}
		ComponentIface :: struct {parent: gobj.TypeInterface, add_focus_handler: add_focus_handler_func_ptr_anon_41, contains: contains_func_ptr_anon_42, ref_accessible_at_point: ref_accessible_at_point_func_ptr_anon_43, get_extents: et_extents_func_ptr_anon_44, get_position: et_position_func_ptr_anon_45, get_size: et_size_func_ptr_anon_46, grab_focus: rab_focus_func_ptr_anon_47, remove_focus_handler: remove_focus_handler_func_ptr_anon_48, set_extents: set_extents_func_ptr_anon_49, set_position: set_position_func_ptr_anon_50, set_size: set_size_func_ptr_anon_51, get_layer: et_layer_func_ptr_anon_52, get_mdi_zorder: et_mdi_zorder_func_ptr_anon_53, bounds_changed: bounds_changed_func_ptr_anon_54, get_alpha: et_alpha_func_ptr_anon_55, scroll_to: scroll_to_func_ptr_anon_56, scroll_to_point: scroll_to_point_func_ptr_anon_57}
		CoordType :: enum u32 {XY_SCREEN = 0, XY_WINDOW = 1, XY_PARENT = 2}
		Document :: struct #packed {}
		DocumentIface :: struct {parent: gobj.TypeInterface, get_document_type: et_document_type_func_ptr_anon_58, get_document: et_document_func_ptr_anon_59, get_document_locale: et_document_locale_func_ptr_anon_60, get_document_attributes: et_document_attributes_func_ptr_anon_61, get_document_attribute_value: et_document_attribute_value_func_ptr_anon_62, set_document_attribute: set_document_attribute_func_ptr_anon_63, get_current_page_number: et_current_page_number_func_ptr_anon_64, get_page_count: et_page_count_func_ptr_anon_65, get_text_selections: et_text_selections_func_ptr_anon_66, set_text_selections: set_text_selections_func_ptr_anon_67}
		EditableText :: struct #packed {}
		EditableTextIface :: struct {parent_interface: gobj.TypeInterface, set_run_attributes: set_run_attributes_func_ptr_anon_94, set_text_contents: set_text_contents_func_ptr_anon_95, insert_text: insert_text_func_ptr_anon_96, copy_text: copy_text_func_ptr_anon_97, cut_text: cut_text_func_ptr_anon_98, delete_text: delete_text_func_ptr_anon_99, paste_text: paste_text_func_ptr_anon_100}
		EventListener :: #type proc(obj: ^Object)
		EventListenerInit :: #type proc()
		FocusHandler :: #type proc(object: ^Object, focus_in: glib.boolean)
		Function :: #type proc(user_data: glib.pointer) -> glib.boolean
		GObjectAccessible :: struct {parent: Object}
		GObjectAccessibleClass :: struct {parent_class: ObjectClass, pad1: Function, pad2: Function}
		Hyperlink :: struct {parent: gobj.Object}
		HyperlinkClass :: struct {parent: gobj.ObjectClass, get_uri: et_uri_func_ptr_anon_101, get_object: et_object_func_ptr_anon_102, get_end_index: et_end_index_func_ptr_anon_103, get_start_index: et_start_index_func_ptr_anon_104, is_valid: is_valid_func_ptr_anon_105, get_n_anchors: et_n_anchors_func_ptr_anon_106, link_state: link_state_func_ptr_anon_107, is_selected_link: is_selected_link_func_ptr_anon_108, link_activated: link_activated_func_ptr_anon_109, pad1: Function}
		HyperlinkImpl :: struct #packed {}
		HyperlinkImplIface :: struct {parent: gobj.TypeInterface, get_hyperlink: et_hyperlink_func_ptr_anon_110}
		HyperlinkStateFlags :: bit_set[HyperlinkStateFlagsBit]
		HyperlinkStateFlagsBit :: enum u32 {HYPERLINK_IS_INLINE = 0}
		Hypertext :: struct #packed {}
		HypertextIface :: struct {parent: gobj.TypeInterface, get_link: et_link_func_ptr_anon_111, get_n_links: et_n_links_func_ptr_anon_112, get_link_index: et_link_index_func_ptr_anon_113, link_selected: link_selected_func_ptr_anon_114}
		Image :: struct #packed {}
		ImageIface :: struct {parent: gobj.TypeInterface, get_image_position: et_image_position_func_ptr_anon_115, get_image_description: et_image_description_func_ptr_anon_116, get_image_size: et_image_size_func_ptr_anon_117, set_image_description: set_image_description_func_ptr_anon_118, get_image_locale: et_image_locale_func_ptr_anon_119}
		Implementor :: struct #packed {}
		ImplementorIface :: struct {parent: gobj.TypeInterface, ref_accessible: ref_accessible_func_ptr_anon_26}
		KeyEventStruct :: struct {type: glib.int_, state: glib.uint_, keyval: glib.uint_, length: glib.int_, string_m: cstring, keycode: glib.uint16, timestamp: glib.uint32}
		KeyEventType :: enum u32 {KEY_EVENT_PRESS = 0, KEY_EVENT_RELEASE = 1, KEY_EVENT_LAST_DEFINED = 2}
		KeySnoopFunc :: #type proc(event: ^KeyEventStruct, user_data: glib.pointer) -> glib.int_
		Layer :: enum u32 {INVALID = 0, BACKGROUND = 1, CANVAS = 2, WIDGET = 3, MDI = 4, POPUP = 5, OVERLAY = 6, WINDOW = 7}
		Live :: enum u32 {NONE = 0, POLITE = 1, ASSERTIVE = 2}
		Misc :: struct {parent: gobj.Object}
		MiscClass :: struct {parent: gobj.ObjectClass, threads_enter: threads_enter_func_ptr_anon_120, threads_leave: threads_leave_func_ptr_anon_121, vfuncs: [32]glib.pointer}
		NoOpObject :: struct {parent: Object}
		NoOpObjectClass :: struct {parent_class: ObjectClass}
		NoOpObjectFactory :: struct {parent: ObjectFactory}
		NoOpObjectFactoryClass :: struct {parent_class: ObjectFactoryClass}
		Object :: struct {parent: gobj.Object, description: cstring, name: cstring, accessible_parent: ^Object, role: Role, relation_set: ^RelationSet, layer: Layer}
		ObjectClass :: struct {parent: gobj.ObjectClass, get_name: et_name_func_ptr_anon_0, get_description: et_description_func_ptr_anon_1, get_parent: et_parent_func_ptr_anon_2, get_n_children: et_n_children_func_ptr_anon_3, ref_child: ref_child_func_ptr_anon_4, get_index_in_parent: et_index_in_parent_func_ptr_anon_5, ref_relation_set: ref_relation_set_func_ptr_anon_6, get_role: et_role_func_ptr_anon_7, get_layer: et_layer_func_ptr_anon_8, get_mdi_zorder: et_mdi_zorder_func_ptr_anon_9, ref_state_set: ref_state_set_func_ptr_anon_10, set_name: set_name_func_ptr_anon_11, set_description: set_description_func_ptr_anon_12, set_parent: set_parent_func_ptr_anon_13, set_role: set_role_func_ptr_anon_14, connect_property_change_handler: connect_property_change_handler_func_ptr_anon_15, remove_property_change_handler: remove_property_change_handler_func_ptr_anon_16, initialize: initialize_func_ptr_anon_17, children_changed: children_changed_func_ptr_anon_18, focus_event: focus_event_func_ptr_anon_19, property_change: property_change_func_ptr_anon_20, state_change: state_change_func_ptr_anon_21, visible_data_changed: visible_data_changed_func_ptr_anon_22, active_descendant_changed: active_descendant_changed_func_ptr_anon_23, get_attributes: et_attributes_func_ptr_anon_24, get_object_locale: et_object_locale_func_ptr_anon_25, pad1: Function}
		ObjectFactory :: struct {parent: gobj.Object}
		ObjectFactoryClass :: struct {parent_class: gobj.ObjectClass, create_accessible: create_accessible_func_ptr_anon_122, invalidate: invalidate_func_ptr_anon_123, get_accessible_type: et_accessible_type_func_ptr_anon_124, pad1: Function, pad2: Function}
		Plug :: struct {parent: Object}
		PlugClass :: struct {parent_class: ObjectClass, get_object_id: et_object_id_func_ptr_anon_125}
		PropertyChangeHandler :: #type proc(obj: ^Object, vals: [^]PropertyValues)
		PropertyValues :: struct {property_name: cstring, old_value: gobj.Value, new_value: gobj.Value}
		Range :: struct #packed {}
		Rectangle :: struct {x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_}
		Registry :: struct {parent: gobj.Object, factory_type_registry: ^glib.HashTable, factory_singleton_cache: ^glib.HashTable}
		RegistryClass :: struct {parent_class: gobj.ObjectClass}
		Relation :: struct {parent: gobj.Object, target: ^glib.PtrArray, relationship: RelationType}
		RelationClass :: struct {parent: gobj.ObjectClass}
		RelationSet :: struct {parent: gobj.Object, relations: [^]glib.PtrArray}
		RelationSetClass :: struct {parent: gobj.ObjectClass, pad1: Function, pad2: Function}
		RelationType :: enum u32 {RELATION_NULL = 0, RELATION_CONTROLLED_BY = 1, RELATION_CONTROLLER_FOR = 2, RELATION_LABEL_FOR = 3, RELATION_LABELLED_BY = 4, RELATION_MEMBER_OF = 5, RELATION_NODE_CHILD_OF = 6, RELATION_FLOWS_TO = 7, RELATION_FLOWS_FROM = 8, RELATION_SUBWINDOW_OF = 9, RELATION_EMBEDS = 10, RELATION_EMBEDDED_BY = 11, RELATION_POPUP_FOR = 12, RELATION_PARENT_WINDOW_OF = 13, RELATION_DESCRIBED_BY = 14, RELATION_DESCRIPTION_FOR = 15, RELATION_NODE_PARENT_OF = 16, RELATION_DETAILS = 17, RELATION_DETAILS_FOR = 18, RELATION_ERROR_MESSAGE = 19, RELATION_ERROR_FOR = 20, RELATION_LAST_DEFINED = 21}
		Role :: enum u32 {INVALID = 0, ACCEL_LABEL = 1, ALERT = 2, ANIMATION = 3, ARROW = 4, CALENDAR = 5, CANVAS = 6, CHECK_BOX = 7, CHECK_MENU_ITEM = 8, COLOR_CHOOSER = 9, COLUMN_HEADER = 10, COMBO_BOX = 11, DATE_EDITOR = 12, DESKTOP_ICON = 13, DESKTOP_FRAME = 14, DIAL = 15, DIALOG = 16, DIRECTORY_PANE = 17, DRAWING_AREA = 18, FILE_CHOOSER = 19, FILLER = 20, FONT_CHOOSER = 21, FRAME = 22, GLASS_PANE = 23, HTML_CONTAINER = 24, ICON = 25, IMAGE = 26, INTERNAL_FRAME = 27, LABEL = 28, LAYERED_PANE = 29, LIST = 30, LIST_ITEM = 31, MENU = 32, MENU_BAR = 33, MENU_ITEM = 34, OPTION_PANE = 35, PAGE_TAB = 36, PAGE_TAB_LIST = 37, PANEL = 38, PASSWORD_TEXT = 39, POPUP_MENU = 40, PROGRESS_BAR = 41, PUSH_BUTTON = 42, RADIO_BUTTON = 43, RADIO_MENU_ITEM = 44, ROOT_PANE = 45, ROW_HEADER = 46, SCROLL_BAR = 47, SCROLL_PANE = 48, SEPARATOR = 49, SLIDER = 50, SPLIT_PANE = 51, SPIN_BUTTON = 52, STATUSBAR = 53, TABLE = 54, TABLE_CELL = 55, TABLE_COLUMN_HEADER = 56, TABLE_ROW_HEADER = 57, TEAR_OFF_MENU_ITEM = 58, TERMINAL = 59, TEXT = 60, TOGGLE_BUTTON = 61, TOOL_BAR = 62, TOOL_TIP = 63, TREE = 64, TREE_TABLE = 65, UNKNOWN = 66, VIEWPORT = 67, WINDOW = 68, HEADER = 69, FOOTER = 70, PARAGRAPH = 71, RULER = 72, APPLICATION = 73, AUTOCOMPLETE = 74, EDITBAR = 75, EMBEDDED = 76, ENTRY = 77, CHART = 78, CAPTION = 79, DOCUMENT_FRAME = 80, HEADING = 81, PAGE = 82, SECTION = 83, REDUNDANT_OBJECT = 84, FORM = 85, LINK = 86, INPUT_METHOD_WINDOW = 87, TABLE_ROW = 88, TREE_ITEM = 89, DOCUMENT_SPREADSHEET = 90, DOCUMENT_PRESENTATION = 91, DOCUMENT_TEXT = 92, DOCUMENT_WEB = 93, DOCUMENT_EMAIL = 94, COMMENT = 95, LIST_BOX = 96, GROUPING = 97, IMAGE_MAP = 98, NOTIFICATION = 99, INFO_BAR = 100, LEVEL_BAR = 101, TITLE_BAR = 102, BLOCK_QUOTE = 103, AUDIO = 104, VIDEO = 105, DEFINITION = 106, ARTICLE = 107, LANDMARK = 108, LOG = 109, MARQUEE = 110, MATH = 111, RATING = 112, TIMER = 113, DESCRIPTION_LIST = 114, DESCRIPTION_TERM = 115, DESCRIPTION_VALUE = 116, STATIC = 117, MATH_FRACTION = 118, MATH_ROOT = 119, SUBSCRIPT = 120, SUPERSCRIPT = 121, FOOTNOTE = 122, CONTENT_DELETION = 123, CONTENT_INSERTION = 124, MARK = 125, SUGGESTION = 126, PUSH_BUTTON_MENU = 127, LAST_DEFINED = 128}
		ScrollType :: enum u32 {SCROLL_TOP_LEFT = 0, SCROLL_BOTTOM_RIGHT = 1, SCROLL_TOP_EDGE = 2, SCROLL_BOTTOM_EDGE = 3, SCROLL_LEFT_EDGE = 4, SCROLL_RIGHT_EDGE = 5, SCROLL_ANYWHERE = 6}
		Selection :: struct #packed {}
		SelectionIface :: struct {parent: gobj.TypeInterface, add_selection: add_selection_func_ptr_anon_126, clear_selection: clear_selection_func_ptr_anon_127, ref_selection: ref_selection_func_ptr_anon_128, get_selection_count: et_selection_count_func_ptr_anon_129, is_child_selected: is_child_selected_func_ptr_anon_130, remove_selection: remove_selection_func_ptr_anon_131, select_all_selection: select_all_selection_func_ptr_anon_132, selection_changed: selection_changed_func_ptr_anon_133}
		Socket :: struct {parent: Object, embedded_plug_id: cstring}
		SocketClass :: struct {parent_class: ObjectClass, embed: embed_func_ptr_anon_134}
		State :: glib.uint64
		StateSet :: struct {parent: gobj.Object}
		StateSetClass :: struct {parent: gobj.ObjectClass}
		StateType :: enum u32 {STATE_INVALID = 0, STATE_ACTIVE = 1, STATE_ARMED = 2, STATE_BUSY = 3, STATE_CHECKED = 4, STATE_DEFUNCT = 5, STATE_EDITABLE = 6, STATE_ENABLED = 7, STATE_EXPANDABLE = 8, STATE_EXPANDED = 9, STATE_FOCUSABLE = 10, STATE_FOCUSED = 11, STATE_HORIZONTAL = 12, STATE_ICONIFIED = 13, STATE_MODAL = 14, STATE_MULTI_LINE = 15, STATE_MULTISELECTABLE = 16, STATE_OPAQUE = 17, STATE_PRESSED = 18, STATE_RESIZABLE = 19, STATE_SELECTABLE = 20, STATE_SELECTED = 21, STATE_SENSITIVE = 22, STATE_SHOWING = 23, STATE_SINGLE_LINE = 24, STATE_STALE = 25, STATE_TRANSIENT = 26, STATE_VERTICAL = 27, STATE_VISIBLE = 28, STATE_MANAGES_DESCENDANTS = 29, STATE_INDETERMINATE = 30, STATE_TRUNCATED = 31, STATE_REQUIRED = 32, STATE_INVALID_ENTRY = 33, STATE_SUPPORTS_AUTOCOMPLETION = 34, STATE_SELECTABLE_TEXT = 35, STATE_DEFAULT = 36, STATE_ANIMATED = 37, STATE_VISITED = 38, STATE_CHECKABLE = 39, STATE_HAS_POPUP = 40, STATE_HAS_TOOLTIP = 41, STATE_READ_ONLY = 42, STATE_COLLAPSED = 43, STATE_LAST_DEFINED = 44}
		StreamableContent :: struct #packed {}
		StreamableContentIface :: struct {parent: gobj.TypeInterface, get_n_mime_types: et_n_mime_types_func_ptr_anon_135, get_mime_type: et_mime_type_func_ptr_anon_136, get_stream: et_stream_func_ptr_anon_137, get_uri: et_uri_func_ptr_anon_138, pad1: Function, pad2: Function, pad3: Function}
		Table :: struct #packed {}
		TableCell :: struct #packed {}
		TableCellIface :: struct {parent: gobj.TypeInterface, get_column_span: et_column_span_func_ptr_anon_175, get_column_header_cells: et_column_header_cells_func_ptr_anon_176, get_position: et_position_func_ptr_anon_177, get_row_span: et_row_span_func_ptr_anon_178, get_row_header_cells: et_row_header_cells_func_ptr_anon_179, get_row_column_span: et_row_column_span_func_ptr_anon_180, get_table: et_table_func_ptr_anon_181}
		TableIface :: struct {parent: gobj.TypeInterface, ref_at: ref_at_func_ptr_anon_139, get_index_at: et_index_at_func_ptr_anon_140, get_column_at_index: et_column_at_index_func_ptr_anon_141, get_row_at_index: et_row_at_index_func_ptr_anon_142, get_n_columns: et_n_columns_func_ptr_anon_143, get_n_rows: et_n_rows_func_ptr_anon_144, get_column_extent_at: et_column_extent_at_func_ptr_anon_145, get_row_extent_at: et_row_extent_at_func_ptr_anon_146, get_caption: et_caption_func_ptr_anon_147, get_column_description: et_column_description_func_ptr_anon_148, get_column_header: et_column_header_func_ptr_anon_149, get_row_description: et_row_description_func_ptr_anon_150, get_row_header: et_row_header_func_ptr_anon_151, get_summary: et_summary_func_ptr_anon_152, set_caption: set_caption_func_ptr_anon_153, set_column_description: set_column_description_func_ptr_anon_154, set_column_header: set_column_header_func_ptr_anon_155, set_row_description: set_row_description_func_ptr_anon_156, set_row_header: set_row_header_func_ptr_anon_157, set_summary: set_summary_func_ptr_anon_158, get_selected_columns: et_selected_columns_func_ptr_anon_159, get_selected_rows: et_selected_rows_func_ptr_anon_160, is_column_selected: is_column_selected_func_ptr_anon_161, is_row_selected: is_row_selected_func_ptr_anon_162, is_selected: is_selected_func_ptr_anon_163, add_row_selection: add_row_selection_func_ptr_anon_164, remove_row_selection: remove_row_selection_func_ptr_anon_165, add_column_selection: add_column_selection_func_ptr_anon_166, remove_column_selection: remove_column_selection_func_ptr_anon_167, row_inserted: row_inserted_func_ptr_anon_168, column_inserted: column_inserted_func_ptr_anon_169, row_deleted: row_deleted_func_ptr_anon_170, column_deleted: column_deleted_func_ptr_anon_171, row_reordered: row_reordered_func_ptr_anon_172, column_reordered: column_reordered_func_ptr_anon_173, model_changed: model_changed_func_ptr_anon_174}
		Text :: struct #packed {}
		TextAttribute :: enum u32 {TEXT_ATTR_INVALID = 0, TEXT_ATTR_LEFT_MARGIN = 1, TEXT_ATTR_RIGHT_MARGIN = 2, TEXT_ATTR_INDENT = 3, TEXT_ATTR_INVISIBLE = 4, TEXT_ATTR_EDITABLE = 5, TEXT_ATTR_PIXELS_ABOVE_LINES = 6, TEXT_ATTR_PIXELS_BELOW_LINES = 7, TEXT_ATTR_PIXELS_INSIDE_WRAP = 8, TEXT_ATTR_BG_FULL_HEIGHT = 9, TEXT_ATTR_RISE = 10, TEXT_ATTR_UNDERLINE = 11, TEXT_ATTR_STRIKETHROUGH = 12, TEXT_ATTR_SIZE = 13, TEXT_ATTR_SCALE = 14, TEXT_ATTR_WEIGHT = 15, TEXT_ATTR_LANGUAGE = 16, TEXT_ATTR_FAMILY_NAME = 17, TEXT_ATTR_BG_COLOR = 18, TEXT_ATTR_FG_COLOR = 19, TEXT_ATTR_BG_STIPPLE = 20, TEXT_ATTR_FG_STIPPLE = 21, TEXT_ATTR_WRAP_MODE = 22, TEXT_ATTR_DIRECTION = 23, TEXT_ATTR_JUSTIFICATION = 24, TEXT_ATTR_STRETCH = 25, TEXT_ATTR_VARIANT = 26, TEXT_ATTR_STYLE = 27, TEXT_ATTR_TEXT_POSITION = 28, TEXT_ATTR_LAST_DEFINED = 29}
		TextBoundary :: enum u32 {CHAR = 0, WORD_START = 1, WORD_END = 2, SENTENCE_START = 3, SENTENCE_END = 4, LINE_START = 5, LINE_END = 6}
		TextClipType :: enum u32 {TEXT_CLIP_NONE = 0, TEXT_CLIP_MIN = 1, TEXT_CLIP_MAX = 2, TEXT_CLIP_BOTH = 3}
		TextGranularity :: enum u32 {CHAR = 0, WORD = 1, SENTENCE = 2, LINE = 3, PARAGRAPH = 4}
		TextIface :: struct {parent: gobj.TypeInterface, get_text: et_text_func_ptr_anon_68, get_text_after_offset: et_text_after_offset_func_ptr_anon_69, get_text_at_offset: et_text_at_offset_func_ptr_anon_70, get_character_at_offset: et_character_at_offset_func_ptr_anon_71, get_text_before_offset: et_text_before_offset_func_ptr_anon_72, get_caret_offset: et_caret_offset_func_ptr_anon_73, get_run_attributes: et_run_attributes_func_ptr_anon_74, get_default_attributes: et_default_attributes_func_ptr_anon_75, get_character_extents: et_character_extents_func_ptr_anon_76, get_character_count: et_character_count_func_ptr_anon_77, get_offset_at_point: et_offset_at_point_func_ptr_anon_78, get_n_selections: et_n_selections_func_ptr_anon_79, get_selection: et_selection_func_ptr_anon_80, add_selection: add_selection_func_ptr_anon_81, remove_selection: remove_selection_func_ptr_anon_82, set_selection: set_selection_func_ptr_anon_83, set_caret_offset: set_caret_offset_func_ptr_anon_84, text_changed: text_changed_func_ptr_anon_85, text_caret_moved: text_caret_moved_func_ptr_anon_86, text_selection_changed: text_selection_changed_func_ptr_anon_87, text_attributes_changed: text_attributes_changed_func_ptr_anon_88, get_range_extents: et_range_extents_func_ptr_anon_89, get_bounded_ranges: et_bounded_ranges_func_ptr_anon_90, get_string_at_offset: et_string_at_offset_func_ptr_anon_91, scroll_substring_to: scroll_substring_to_func_ptr_anon_92, scroll_substring_to_point: scroll_substring_to_point_func_ptr_anon_93}
		TextRange :: struct {bounds: TextRectangle, start_offset: glib.int_, end_offset: glib.int_, content: cstring}
		TextRectangle :: struct {x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_}
		TextSelection :: struct {start_object: ^Object, start_offset: glib.int_, end_object: ^Object, end_offset: glib.int_, start_is_active: glib.boolean}
		Util :: struct {parent: gobj.Object}
		UtilClass :: struct {parent: gobj.ObjectClass, add_global_event_listener: add_global_event_listener_func_ptr_anon_34, remove_global_event_listener: remove_global_event_listener_func_ptr_anon_35, add_key_event_listener: add_key_event_listener_func_ptr_anon_36, remove_key_event_listener: remove_key_event_listener_func_ptr_anon_37, get_root: et_root_func_ptr_anon_38, get_toolkit_name: et_toolkit_name_func_ptr_anon_39, get_toolkit_version: et_toolkit_version_func_ptr_anon_40}
		Value :: struct #packed {}
		ValueIface :: struct {parent: gobj.TypeInterface, get_current_value: et_current_value_func_ptr_anon_182, get_maximum_value: et_maximum_value_func_ptr_anon_183, get_minimum_value: et_minimum_value_func_ptr_anon_184, set_current_value: set_current_value_func_ptr_anon_185, get_minimum_increment: et_minimum_increment_func_ptr_anon_186, get_value_and_text: et_value_and_text_func_ptr_anon_187, get_range: et_range_func_ptr_anon_188, get_increment: et_increment_func_ptr_anon_189, get_sub_ranges: et_sub_ranges_func_ptr_anon_190, set_value: set_value_func_ptr_anon_191}
		ValueType :: enum u32 {VALUE_VERY_WEAK = 0, VALUE_WEAK = 1, VALUE_ACCEPTABLE = 2, VALUE_STRONG = 3, VALUE_VERY_STRONG = 4, VALUE_VERY_LOW = 5, VALUE_LOW = 6, VALUE_MEDIUM = 7, VALUE_HIGH = 8, VALUE_VERY_HIGH = 9, VALUE_VERY_BAD = 10, VALUE_BAD = 11, VALUE_GOOD = 12, VALUE_VERY_GOOD = 13, VALUE_BEST = 14, VALUE_LAST_DEFINED = 15}
		Window :: struct #packed {}
		WindowIface :: struct {parent: gobj.TypeInterface}
		active_descendant_changed_func_ptr_anon_23 :: #type proc(accessible: ^Object, child: ^glib.pointer)
		add_column_selection_func_ptr_anon_166 :: #type proc(table: ^Table, column: glib.int_) -> glib.boolean
		add_focus_handler_func_ptr_anon_41 :: #type proc(component: ^Component, handler: FocusHandler) -> glib.uint_
		add_global_event_listener_func_ptr_anon_34 :: #type proc(listener: gobj.SignalEmissionHook, event_type: cstring) -> glib.uint_
		add_key_event_listener_func_ptr_anon_36 :: #type proc(listener: KeySnoopFunc, data: glib.pointer) -> glib.uint_
		add_row_selection_func_ptr_anon_164 :: #type proc(table: ^Table, row: glib.int_) -> glib.boolean
		add_selection_func_ptr_anon_126 :: #type proc(selection: ^Selection, i: glib.int_) -> glib.boolean
		add_selection_func_ptr_anon_81 :: #type proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
		bounds_changed_func_ptr_anon_54 :: #type proc(component: ^Component, bounds: [^]Rectangle)
		children_changed_func_ptr_anon_18 :: #type proc(accessible: ^Object, change_index: glib.uint_, changed_child: glib.pointer)
		clear_selection_func_ptr_anon_127 :: #type proc(selection: ^Selection) -> glib.boolean
		column_deleted_func_ptr_anon_171 :: #type proc(table: ^Table, column: glib.int_, num_deleted: glib.int_)
		column_inserted_func_ptr_anon_169 :: #type proc(table: ^Table, column: glib.int_, num_inserted: glib.int_)
		column_reordered_func_ptr_anon_173 :: #type proc(table: ^Table)
		connect_property_change_handler_func_ptr_anon_15 :: #type proc(accessible: ^Object, handler: ^PropertyChangeHandler) -> glib.uint_
		contains_func_ptr_anon_42 :: #type proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean
		copy_text_func_ptr_anon_97 :: #type proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
		create_accessible_func_ptr_anon_122 :: #type proc(obj: ^gobj.Object) -> ^Object
		cut_text_func_ptr_anon_98 :: #type proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
		delete_text_func_ptr_anon_99 :: #type proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
		do_action_func_ptr_anon_27 :: #type proc(action: ^Action, i: glib.int_) -> glib.boolean
		embed_func_ptr_anon_134 :: #type proc(obj: ^Socket, plug_id: cstring)
		et_accessible_type_func_ptr_anon_124 :: #type proc() -> gobj.Type
		et_alpha_func_ptr_anon_55 :: #type proc(component: ^Component) -> glib.double
		et_attributes_func_ptr_anon_24 :: #type proc(accessible: ^Object) -> ^AttributeSet
		et_bounded_ranges_func_ptr_anon_90 :: #type proc(text: ^Text, rect: ^TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) -> ^^TextRange
		et_caption_func_ptr_anon_147 :: #type proc(table: ^Table) -> ^Object
		et_caret_offset_func_ptr_anon_73 :: #type proc(text: ^Text) -> glib.int_
		et_character_at_offset_func_ptr_anon_71 :: #type proc(text: ^Text, offset: glib.int_) -> glib.unichar
		et_character_count_func_ptr_anon_77 :: #type proc(text: ^Text) -> glib.int_
		et_character_extents_func_ptr_anon_76 :: #type proc(text: ^Text, offset: glib.int_, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coords: CoordType)
		et_column_at_index_func_ptr_anon_141 :: #type proc(table: ^Table, index_: glib.int_) -> glib.int_
		et_column_description_func_ptr_anon_148 :: #type proc(table: ^Table, column: glib.int_) -> cstring
		et_column_extent_at_func_ptr_anon_145 :: #type proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
		et_column_header_cells_func_ptr_anon_176 :: #type proc(cell: ^TableCell) -> ^glib.PtrArray
		et_column_header_func_ptr_anon_149 :: #type proc(table: ^Table, column: glib.int_) -> ^Object
		et_column_span_func_ptr_anon_175 :: #type proc(cell: ^TableCell) -> glib.int_
		et_current_page_number_func_ptr_anon_64 :: #type proc(document: ^Document) -> glib.int_
		et_current_value_func_ptr_anon_182 :: #type proc(obj: ^Value, value: ^gobj.Value)
		et_default_attributes_func_ptr_anon_75 :: #type proc(text: ^Text) -> ^AttributeSet
		et_description_func_ptr_anon_1 :: #type proc(accessible: ^Object) -> cstring
		et_description_func_ptr_anon_29 :: #type proc(action: ^Action, i: glib.int_) -> cstring
		et_document_attribute_value_func_ptr_anon_62 :: #type proc(document: ^Document, attribute_name: cstring) -> cstring
		et_document_attributes_func_ptr_anon_61 :: #type proc(document: ^Document) -> ^AttributeSet
		et_document_func_ptr_anon_59 :: #type proc(document: ^Document) -> glib.pointer
		et_document_locale_func_ptr_anon_60 :: #type proc(document: ^Document) -> cstring
		et_document_type_func_ptr_anon_58 :: #type proc(document: ^Document) -> cstring
		et_end_index_func_ptr_anon_103 :: #type proc(link_: ^Hyperlink) -> glib.int_
		et_extents_func_ptr_anon_44 :: #type proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coord_type: CoordType)
		et_hyperlink_func_ptr_anon_110 :: #type proc(impl: ^HyperlinkImpl) -> ^Hyperlink
		et_image_description_func_ptr_anon_116 :: #type proc(image: ^Image) -> cstring
		et_image_locale_func_ptr_anon_119 :: #type proc(image: ^Image) -> cstring
		et_image_position_func_ptr_anon_115 :: #type proc(image: ^Image, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType)
		et_image_size_func_ptr_anon_117 :: #type proc(image: ^Image, width: ^glib.int_, height: ^glib.int_)
		et_increment_func_ptr_anon_189 :: #type proc(obj: ^Value) -> glib.double
		et_index_at_func_ptr_anon_140 :: #type proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
		et_index_in_parent_func_ptr_anon_5 :: #type proc(accessible: ^Object) -> glib.int_
		et_keybinding_func_ptr_anon_31 :: #type proc(action: ^Action, i: glib.int_) -> cstring
		et_layer_func_ptr_anon_52 :: #type proc(component: ^Component) -> Layer
		et_layer_func_ptr_anon_8 :: #type proc(accessible: ^Object) -> Layer
		et_link_func_ptr_anon_111 :: #type proc(hypertext: ^Hypertext, link_index: glib.int_) -> ^Hyperlink
		et_link_index_func_ptr_anon_113 :: #type proc(hypertext: ^Hypertext, char_index: glib.int_) -> glib.int_
		et_localized_name_func_ptr_anon_33 :: #type proc(action: ^Action, i: glib.int_) -> cstring
		et_maximum_value_func_ptr_anon_183 :: #type proc(obj: ^Value, value: ^gobj.Value)
		et_mdi_zorder_func_ptr_anon_53 :: #type proc(component: ^Component) -> glib.int_
		et_mdi_zorder_func_ptr_anon_9 :: #type proc(accessible: ^Object) -> glib.int_
		et_mime_type_func_ptr_anon_136 :: #type proc(streamable: ^StreamableContent, i: glib.int_) -> cstring
		et_minimum_increment_func_ptr_anon_186 :: #type proc(obj: ^Value, value: ^gobj.Value)
		et_minimum_value_func_ptr_anon_184 :: #type proc(obj: ^Value, value: ^gobj.Value)
		et_n_actions_func_ptr_anon_28 :: #type proc(action: ^Action) -> glib.int_
		et_n_anchors_func_ptr_anon_106 :: #type proc(link_: ^Hyperlink) -> glib.int_
		et_n_children_func_ptr_anon_3 :: #type proc(accessible: ^Object) -> glib.int_
		et_n_columns_func_ptr_anon_143 :: #type proc(table: ^Table) -> glib.int_
		et_n_links_func_ptr_anon_112 :: #type proc(hypertext: ^Hypertext) -> glib.int_
		et_n_mime_types_func_ptr_anon_135 :: #type proc(streamable: ^StreamableContent) -> glib.int_
		et_n_rows_func_ptr_anon_144 :: #type proc(table: ^Table) -> glib.int_
		et_n_selections_func_ptr_anon_79 :: #type proc(text: ^Text) -> glib.int_
		et_name_func_ptr_anon_0 :: #type proc(accessible: ^Object) -> cstring
		et_name_func_ptr_anon_30 :: #type proc(action: ^Action, i: glib.int_) -> cstring
		et_object_func_ptr_anon_102 :: #type proc(link_: ^Hyperlink, i: glib.int_) -> ^Object
		et_object_id_func_ptr_anon_125 :: #type proc(obj: ^Plug) -> cstring
		et_object_locale_func_ptr_anon_25 :: #type proc(accessible: ^Object) -> cstring
		et_offset_at_point_func_ptr_anon_78 :: #type proc(text: ^Text, x: glib.int_, y: glib.int_, coords: CoordType) -> glib.int_
		et_page_count_func_ptr_anon_65 :: #type proc(document: ^Document) -> glib.int_
		et_parent_func_ptr_anon_2 :: #type proc(accessible: ^Object) -> ^Object
		et_position_func_ptr_anon_177 :: #type proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_) -> glib.boolean
		et_position_func_ptr_anon_45 :: #type proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType)
		et_range_extents_func_ptr_anon_89 :: #type proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coord_type: CoordType, rect: ^TextRectangle)
		et_range_func_ptr_anon_188 :: #type proc(obj: ^Value) -> ^Range
		et_role_func_ptr_anon_7 :: #type proc(accessible: ^Object) -> Role
		et_root_func_ptr_anon_38 :: #type proc() -> ^Object
		et_row_at_index_func_ptr_anon_142 :: #type proc(table: ^Table, index_: glib.int_) -> glib.int_
		et_row_column_span_func_ptr_anon_180 :: #type proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_, row_span: ^glib.int_, column_span: ^glib.int_) -> glib.boolean
		et_row_description_func_ptr_anon_150 :: #type proc(table: ^Table, row: glib.int_) -> cstring
		et_row_extent_at_func_ptr_anon_146 :: #type proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
		et_row_header_cells_func_ptr_anon_179 :: #type proc(cell: ^TableCell) -> ^glib.PtrArray
		et_row_header_func_ptr_anon_151 :: #type proc(table: ^Table, row: glib.int_) -> ^Object
		et_row_span_func_ptr_anon_178 :: #type proc(cell: ^TableCell) -> glib.int_
		et_run_attributes_func_ptr_anon_74 :: #type proc(text: ^Text, offset: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> ^AttributeSet
		et_selected_columns_func_ptr_anon_159 :: #type proc(table: ^Table, selected: ^^glib.int_) -> glib.int_
		et_selected_rows_func_ptr_anon_160 :: #type proc(table: ^Table, selected: ^^glib.int_) -> glib.int_
		et_selection_count_func_ptr_anon_129 :: #type proc(selection: ^Selection) -> glib.int_
		et_selection_func_ptr_anon_80 :: #type proc(text: ^Text, selection_num: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
		et_size_func_ptr_anon_46 :: #type proc(component: ^Component, width: ^glib.int_, height: ^glib.int_)
		et_start_index_func_ptr_anon_104 :: #type proc(link_: ^Hyperlink) -> glib.int_
		et_stream_func_ptr_anon_137 :: #type proc(streamable: ^StreamableContent, mime_type: cstring) -> ^glib.IOChannel
		et_string_at_offset_func_ptr_anon_91 :: #type proc(text: ^Text, offset: glib.int_, granularity: TextGranularity, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
		et_sub_ranges_func_ptr_anon_190 :: #type proc(obj: ^Value) -> ^glib.SList
		et_summary_func_ptr_anon_152 :: #type proc(table: ^Table) -> ^Object
		et_table_func_ptr_anon_181 :: #type proc(cell: ^TableCell) -> ^Object
		et_text_after_offset_func_ptr_anon_69 :: #type proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
		et_text_at_offset_func_ptr_anon_70 :: #type proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
		et_text_before_offset_func_ptr_anon_72 :: #type proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
		et_text_func_ptr_anon_68 :: #type proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> cstring
		et_text_selections_func_ptr_anon_66 :: #type proc(document: ^Document) -> ^glib.Array
		et_toolkit_name_func_ptr_anon_39 :: #type proc() -> cstring
		et_toolkit_version_func_ptr_anon_40 :: #type proc() -> cstring
		et_uri_func_ptr_anon_101 :: #type proc(link_: ^Hyperlink, i: glib.int_) -> cstring
		et_uri_func_ptr_anon_138 :: #type proc(streamable: ^StreamableContent, mime_type: cstring) -> cstring
		et_value_and_text_func_ptr_anon_187 :: #type proc(obj: ^Value, value: ^glib.double, text: ^cstring)
		focus_event_func_ptr_anon_19 :: #type proc(accessible: ^Object, focus_in: glib.boolean)
		initialize_func_ptr_anon_17 :: #type proc(accessible: ^Object, data: glib.pointer)
		insert_text_func_ptr_anon_96 :: #type proc(text: ^EditableText, string_p: cstring, length: glib.int_, position: ^glib.int_)
		invalidate_func_ptr_anon_123 :: #type proc(factory: ^ObjectFactory)
		is_child_selected_func_ptr_anon_130 :: #type proc(selection: ^Selection, i: glib.int_) -> glib.boolean
		is_column_selected_func_ptr_anon_161 :: #type proc(table: ^Table, column: glib.int_) -> glib.boolean
		is_row_selected_func_ptr_anon_162 :: #type proc(table: ^Table, row: glib.int_) -> glib.boolean
		is_selected_func_ptr_anon_163 :: #type proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.boolean
		is_selected_link_func_ptr_anon_108 :: #type proc(link_: ^Hyperlink) -> glib.boolean
		is_valid_func_ptr_anon_105 :: #type proc(link_: ^Hyperlink) -> glib.boolean
		link_activated_func_ptr_anon_109 :: #type proc(link_: ^Hyperlink)
		link_selected_func_ptr_anon_114 :: #type proc(hypertext: ^Hypertext, link_index: glib.int_)
		link_state_func_ptr_anon_107 :: #type proc(link_: ^Hyperlink) -> glib.uint_
		model_changed_func_ptr_anon_174 :: #type proc(table: ^Table)
		paste_text_func_ptr_anon_100 :: #type proc(text: ^EditableText, position: glib.int_)
		property_change_func_ptr_anon_20 :: #type proc(accessible: ^Object, values: [^]PropertyValues)
		rab_focus_func_ptr_anon_47 :: #type proc(component: ^Component) -> glib.boolean
		ref_accessible_at_point_func_ptr_anon_43 :: #type proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> ^Object
		ref_accessible_func_ptr_anon_26 :: #type proc(implementor: ^Implementor) -> ^Object
		ref_at_func_ptr_anon_139 :: #type proc(table: ^Table, row: glib.int_, column: glib.int_) -> ^Object
		ref_child_func_ptr_anon_4 :: #type proc(accessible: ^Object, i: glib.int_) -> ^Object
		ref_relation_set_func_ptr_anon_6 :: #type proc(accessible: ^Object) -> ^RelationSet
		ref_selection_func_ptr_anon_128 :: #type proc(selection: ^Selection, i: glib.int_) -> ^Object
		ref_state_set_func_ptr_anon_10 :: #type proc(accessible: ^Object) -> ^StateSet
		remove_column_selection_func_ptr_anon_167 :: #type proc(table: ^Table, column: glib.int_) -> glib.boolean
		remove_focus_handler_func_ptr_anon_48 :: #type proc(component: ^Component, handler_id: glib.uint_)
		remove_global_event_listener_func_ptr_anon_35 :: #type proc(listener_id: glib.uint_)
		remove_key_event_listener_func_ptr_anon_37 :: #type proc(listener_id: glib.uint_)
		remove_property_change_handler_func_ptr_anon_16 :: #type proc(accessible: ^Object, handler_id: glib.uint_)
		remove_row_selection_func_ptr_anon_165 :: #type proc(table: ^Table, row: glib.int_) -> glib.boolean
		remove_selection_func_ptr_anon_131 :: #type proc(selection: ^Selection, i: glib.int_) -> glib.boolean
		remove_selection_func_ptr_anon_82 :: #type proc(text: ^Text, selection_num: glib.int_) -> glib.boolean
		row_deleted_func_ptr_anon_170 :: #type proc(table: ^Table, row: glib.int_, num_deleted: glib.int_)
		row_inserted_func_ptr_anon_168 :: #type proc(table: ^Table, row: glib.int_, num_inserted: glib.int_)
		row_reordered_func_ptr_anon_172 :: #type proc(table: ^Table)
		scroll_substring_to_func_ptr_anon_92 :: #type proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, type: ScrollType) -> glib.boolean
		scroll_substring_to_point_func_ptr_anon_93 :: #type proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean
		scroll_to_func_ptr_anon_56 :: #type proc(component: ^Component, type: ScrollType) -> glib.boolean
		scroll_to_point_func_ptr_anon_57 :: #type proc(component: ^Component, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean
		select_all_selection_func_ptr_anon_132 :: #type proc(selection: ^Selection) -> glib.boolean
		selection_changed_func_ptr_anon_133 :: #type proc(selection: ^Selection)
		set_caption_func_ptr_anon_153 :: #type proc(table: ^Table, caption: ^Object)
		set_caret_offset_func_ptr_anon_84 :: #type proc(text: ^Text, offset: glib.int_) -> glib.boolean
		set_column_description_func_ptr_anon_154 :: #type proc(table: ^Table, column: glib.int_, description: cstring)
		set_column_header_func_ptr_anon_155 :: #type proc(table: ^Table, column: glib.int_, header: ^Object)
		set_current_value_func_ptr_anon_185 :: #type proc(obj: ^Value, value: ^gobj.Value) -> glib.boolean
		set_description_func_ptr_anon_12 :: #type proc(accessible: ^Object, description: cstring)
		set_description_func_ptr_anon_32 :: #type proc(action: ^Action, i: glib.int_, desc: cstring) -> glib.boolean
		set_document_attribute_func_ptr_anon_63 :: #type proc(document: ^Document, attribute_name: cstring, attribute_value: cstring) -> glib.boolean
		set_extents_func_ptr_anon_49 :: #type proc(component: ^Component, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, coord_type: CoordType) -> glib.boolean
		set_image_description_func_ptr_anon_118 :: #type proc(image: ^Image, description: cstring) -> glib.boolean
		set_name_func_ptr_anon_11 :: #type proc(accessible: ^Object, name: cstring)
		set_parent_func_ptr_anon_13 :: #type proc(accessible: ^Object, parent: ^Object)
		set_position_func_ptr_anon_50 :: #type proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean
		set_role_func_ptr_anon_14 :: #type proc(accessible: ^Object, role: Role)
		set_row_description_func_ptr_anon_156 :: #type proc(table: ^Table, row: glib.int_, description: cstring)
		set_row_header_func_ptr_anon_157 :: #type proc(table: ^Table, row: glib.int_, header: ^Object)
		set_run_attributes_func_ptr_anon_94 :: #type proc(text: ^EditableText, attrib_set: ^AttributeSet, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
		set_selection_func_ptr_anon_83 :: #type proc(text: ^Text, selection_num: glib.int_, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
		set_size_func_ptr_anon_51 :: #type proc(component: ^Component, width: glib.int_, height: glib.int_) -> glib.boolean
		set_summary_func_ptr_anon_158 :: #type proc(table: ^Table, accessible: ^Object)
		set_text_contents_func_ptr_anon_95 :: #type proc(text: ^EditableText, string_p: cstring)
		set_text_selections_func_ptr_anon_67 :: #type proc(document: ^Document, selections: [^]glib.Array) -> glib.boolean
		set_value_func_ptr_anon_191 :: #type proc(obj: ^Value, new_value: glib.double)
		state_change_func_ptr_anon_21 :: #type proc(accessible: ^Object, name: cstring, state_set: glib.boolean)
		text_attributes_changed_func_ptr_anon_88 :: #type proc(text: ^Text)
		text_caret_moved_func_ptr_anon_86 :: #type proc(text: ^Text, location: glib.int_)
		text_changed_func_ptr_anon_85 :: #type proc(text: ^Text, position: glib.int_, length: glib.int_)
		text_selection_changed_func_ptr_anon_87 :: #type proc(text: ^Text)
		threads_enter_func_ptr_anon_120 :: #type proc(misc: ^Misc)
		threads_leave_func_ptr_anon_121 :: #type proc(misc: ^Misc)
		visible_data_changed_func_ptr_anon_22 :: #type proc(accessible: ^Object)

	files:
		atk.odin
		patched.odin
```

## gtk3:gtk3

```text
package gtk3
	constants
		ACCEL_MASK :: transmute(AccelFlags)u32(7)
		BINARY_AGE :: 2441
		DEST_DEFAULT_ALL :: DestDefaults{.DEST_DEFAULT_MOTION, .DEST_DEFAULT_HIGHLIGHT, .DEST_DEFAULT_DROP}
		ENTRY_BUFFER_MAX_SIZE :: max(u16)
		EVENT_CONTROLLER_SCROLL_BOTH_AXES :: EventControllerScrollFlags{.EVENT_CONTROLLER_SCROLL_VERTICAL, .EVENT_CONTROLLER_SCROLL_HORIZONTAL}
		EVENT_CONTROLLER_SCROLL_NONE :: EventControllerScrollFlags{}
		FAMILY :: FontChooserLevel{}
		GDK_ALL_EVENTS_MASK :: GdkEventMask{.EXPOSURE_MASK, .POINTER_MOTION_MASK, .POINTER_MOTION_HINT_MASK, .BUTTON_MOTION_MASK, .BUTTON1_MOTION_MASK, .BUTTON2_MOTION_MASK, .BUTTON3_MOTION_MASK, .BUTTON_PRESS_MASK, .BUTTON_RELEASE_MASK, .KEY_PRESS_MASK, .KEY_RELEASE_MASK, .ENTER_NOTIFY_MASK, .LEAVE_NOTIFY_MASK, .FOCUS_CHANGE_MASK, .STRUCTURE_MASK, .PROPERTY_CHANGE_MASK, .VISIBILITY_NOTIFY_MASK, .PROXIMITY_IN_MASK, .PROXIMITY_OUT_MASK, .SUBSTRUCTURE_MASK, .SCROLL_MASK, .TOUCH_MASK, .SMOOTH_SCROLL_MASK, .TOUCHPAD_GESTURE_MASK, .TABLET_PAD_MASK}
		GDK_ANCHOR_FLIP :: GdkAnchorHints{.ANCHOR_FLIP_X, .ANCHOR_FLIP_Y}
		GDK_ANCHOR_RESIZE :: GdkAnchorHints{.ANCHOR_RESIZE_X, .ANCHOR_RESIZE_Y}
		GDK_ANCHOR_SLIDE :: GdkAnchorHints{.ANCHOR_SLIDE_X, .ANCHOR_SLIDE_Y}
		GDK_BUTTON_MIDDLE :: 2
		GDK_BUTTON_PRIMARY :: 1
		GDK_BUTTON_SECONDARY :: 3
		GDK_CURRENT_TIME :: 0
		GDK_EVENT_PROPAGATE :: 0
		GDK_EVENT_STOP :: 1
		GDK_FRAME_CLOCK_PHASE_NONE :: GdkFrameClockPhase{}
		GDK_KEY_0 :: 48
		GDK_KEY_1 :: 49
		GDK_KEY_2 :: 50
		GDK_KEY_3 :: 51
		GDK_KEY_3270_AltCursor :: 64784
		GDK_KEY_3270_Attn :: 64782
		GDK_KEY_3270_BackTab :: 64773
		GDK_KEY_3270_ChangeScreen :: 64793
		GDK_KEY_3270_Copy :: 64789
		GDK_KEY_3270_CursorBlink :: 64783
		GDK_KEY_3270_CursorSelect :: 64796
		GDK_KEY_3270_DeleteWord :: 64794
		GDK_KEY_3270_Duplicate :: 64769
		GDK_KEY_3270_Enter :: 64798
		GDK_KEY_3270_EraseEOF :: 64774
		GDK_KEY_3270_EraseInput :: 64775
		GDK_KEY_3270_ExSelect :: 64795
		GDK_KEY_3270_FieldMark :: 64770
		GDK_KEY_3270_Ident :: 64787
		GDK_KEY_3270_Jump :: 64786
		GDK_KEY_3270_KeyClick :: 64785
		GDK_KEY_3270_Left2 :: 64772
		GDK_KEY_3270_PA1 :: 64778
		GDK_KEY_3270_PA2 :: 64779
		GDK_KEY_3270_PA3 :: 64780
		GDK_KEY_3270_Play :: 64790
		GDK_KEY_3270_PrintScreen :: 64797
		GDK_KEY_3270_Quit :: 64777
		GDK_KEY_3270_Record :: 64792
		GDK_KEY_3270_Reset :: 64776
		GDK_KEY_3270_Right2 :: 64771
		GDK_KEY_3270_Rule :: 64788
		GDK_KEY_3270_Setup :: 64791
		GDK_KEY_3270_Test :: 64781
		GDK_KEY_4 :: 52
		GDK_KEY_5 :: 53
		GDK_KEY_6 :: 54
		GDK_KEY_7 :: 55
		GDK_KEY_8 :: 56
		GDK_KEY_9 :: 57
		GDK_KEY_A :: 65
		GDK_KEY_AE :: 198
		GDK_KEY_Aacute :: 193
		GDK_KEY_Abelowdot :: 16785056
		GDK_KEY_Abreve :: 451
		GDK_KEY_Abreveacute :: 16785070
		GDK_KEY_Abrevebelowdot :: 16785078
		GDK_KEY_Abrevegrave :: 16785072
		GDK_KEY_Abrevehook :: 16785074
		GDK_KEY_Abrevetilde :: 16785076
		GDK_KEY_AccessX_Enable :: 65136
		GDK_KEY_AccessX_Feedback_Enable :: 65137
		GDK_KEY_Acircumflex :: 194
		GDK_KEY_Acircumflexacute :: 16785060
		GDK_KEY_Acircumflexbelowdot :: 16785068
		GDK_KEY_Acircumflexgrave :: 16785062
		GDK_KEY_Acircumflexhook :: 16785064
		GDK_KEY_Acircumflextilde :: 16785066
		GDK_KEY_AddFavorite :: 269025081
		GDK_KEY_Adiaeresis :: 196
		GDK_KEY_Agrave :: 192
		GDK_KEY_Ahook :: 16785058
		GDK_KEY_Alt_L :: 65513
		GDK_KEY_Alt_R :: 65514
		GDK_KEY_Amacron :: 960
		GDK_KEY_Aogonek :: 417
		GDK_KEY_ApplicationLeft :: 269025104
		GDK_KEY_ApplicationRight :: 269025105
		GDK_KEY_Arabic_0 :: 16778848
		GDK_KEY_Arabic_1 :: 16778849
		GDK_KEY_Arabic_2 :: 16778850
		GDK_KEY_Arabic_3 :: 16778851
		GDK_KEY_Arabic_4 :: 16778852
		GDK_KEY_Arabic_5 :: 16778853
		GDK_KEY_Arabic_6 :: 16778854
		GDK_KEY_Arabic_7 :: 16778855
		GDK_KEY_Arabic_8 :: 16778856
		GDK_KEY_Arabic_9 :: 16778857
		GDK_KEY_Arabic_ain :: 1497
		GDK_KEY_Arabic_alef :: 1479
		GDK_KEY_Arabic_alefmaksura :: 1513
		GDK_KEY_Arabic_beh :: 1480
		GDK_KEY_Arabic_comma :: 1452
		GDK_KEY_Arabic_dad :: 1494
		GDK_KEY_Arabic_dal :: 1487
		GDK_KEY_Arabic_damma :: 1519
		GDK_KEY_Arabic_dammatan :: 1516
		GDK_KEY_Arabic_ddal :: 16778888
		GDK_KEY_Arabic_farsi_yeh :: 16778956
		GDK_KEY_Arabic_fatha :: 1518
		GDK_KEY_Arabic_fathatan :: 1515
		GDK_KEY_Arabic_feh :: 1505
		GDK_KEY_Arabic_fullstop :: 16778964
		GDK_KEY_Arabic_gaf :: 16778927
		GDK_KEY_Arabic_ghain :: 1498
		GDK_KEY_Arabic_ha :: 1511
		GDK_KEY_Arabic_hah :: 1485
		GDK_KEY_Arabic_hamza :: 1473
		GDK_KEY_Arabic_hamza_above :: 16778836
		GDK_KEY_Arabic_hamza_below :: 16778837
		GDK_KEY_Arabic_hamzaonalef :: 1475
		GDK_KEY_Arabic_hamzaonwaw :: 1476
		GDK_KEY_Arabic_hamzaonyeh :: 1478
		GDK_KEY_Arabic_hamzaunderalef :: 1477
		GDK_KEY_Arabic_heh :: 1511
		GDK_KEY_Arabic_heh_doachashmee :: 16778942
		GDK_KEY_Arabic_heh_goal :: 16778945
		GDK_KEY_Arabic_jeem :: 1484
		GDK_KEY_Arabic_jeh :: 16778904
		GDK_KEY_Arabic_kaf :: 1507
		GDK_KEY_Arabic_kasra :: 1520
		GDK_KEY_Arabic_kasratan :: 1517
		GDK_KEY_Arabic_keheh :: 16778921
		GDK_KEY_Arabic_khah :: 1486
		GDK_KEY_Arabic_lam :: 1508
		GDK_KEY_Arabic_madda_above :: 16778835
		GDK_KEY_Arabic_maddaonalef :: 1474
		GDK_KEY_Arabic_meem :: 1509
		GDK_KEY_Arabic_noon :: 1510
		GDK_KEY_Arabic_noon_ghunna :: 16778938
		GDK_KEY_Arabic_peh :: 16778878
		GDK_KEY_Arabic_percent :: 16778858
		GDK_KEY_Arabic_qaf :: 1506
		GDK_KEY_Arabic_question_mark :: 1471
		GDK_KEY_Arabic_ra :: 1489
		GDK_KEY_Arabic_rreh :: 16778897
		GDK_KEY_Arabic_sad :: 1493
		GDK_KEY_Arabic_seen :: 1491
		GDK_KEY_Arabic_semicolon :: 1467
		GDK_KEY_Arabic_shadda :: 1521
		GDK_KEY_Arabic_sheen :: 1492
		GDK_KEY_Arabic_sukun :: 1522
		GDK_KEY_Arabic_superscript_alef :: 16778864
		GDK_KEY_Arabic_switch :: 65406
		GDK_KEY_Arabic_tah :: 1495
		GDK_KEY_Arabic_tatweel :: 1504
		GDK_KEY_Arabic_tcheh :: 16778886
		GDK_KEY_Arabic_teh :: 1482
		GDK_KEY_Arabic_tehmarbuta :: 1481
		GDK_KEY_Arabic_thal :: 1488
		GDK_KEY_Arabic_theh :: 1483
		GDK_KEY_Arabic_tteh :: 16778873
		GDK_KEY_Arabic_veh :: 16778916
		GDK_KEY_Arabic_waw :: 1512
		GDK_KEY_Arabic_yeh :: 1514
		GDK_KEY_Arabic_yeh_baree :: 16778962
		GDK_KEY_Arabic_zah :: 1496
		GDK_KEY_Arabic_zain :: 1490
		GDK_KEY_Aring :: 197
		GDK_KEY_Armenian_AT :: 16778552
		GDK_KEY_Armenian_AYB :: 16778545
		GDK_KEY_Armenian_BEN :: 16778546
		GDK_KEY_Armenian_CHA :: 16778569
		GDK_KEY_Armenian_DA :: 16778548
		GDK_KEY_Armenian_DZA :: 16778561
		GDK_KEY_Armenian_E :: 16778551
		GDK_KEY_Armenian_FE :: 16778582
		GDK_KEY_Armenian_GHAT :: 16778562
		GDK_KEY_Armenian_GIM :: 16778547
		GDK_KEY_Armenian_HI :: 16778565
		GDK_KEY_Armenian_HO :: 16778560
		GDK_KEY_Armenian_INI :: 16778555
		GDK_KEY_Armenian_JE :: 16778571
		GDK_KEY_Armenian_KE :: 16778580
		GDK_KEY_Armenian_KEN :: 16778559
		GDK_KEY_Armenian_KHE :: 16778557
		GDK_KEY_Armenian_LYUN :: 16778556
		GDK_KEY_Armenian_MEN :: 16778564
		GDK_KEY_Armenian_NU :: 16778566
		GDK_KEY_Armenian_O :: 16778581
		GDK_KEY_Armenian_PE :: 16778570
		GDK_KEY_Armenian_PYUR :: 16778579
		GDK_KEY_Armenian_RA :: 16778572
		GDK_KEY_Armenian_RE :: 16778576
		GDK_KEY_Armenian_SE :: 16778573
		GDK_KEY_Armenian_SHA :: 16778567
		GDK_KEY_Armenian_TCHE :: 16778563
		GDK_KEY_Armenian_TO :: 16778553
		GDK_KEY_Armenian_TSA :: 16778558
		GDK_KEY_Armenian_TSO :: 16778577
		GDK_KEY_Armenian_TYUN :: 16778575
		GDK_KEY_Armenian_VEV :: 16778574
		GDK_KEY_Armenian_VO :: 16778568
		GDK_KEY_Armenian_VYUN :: 16778578
		GDK_KEY_Armenian_YECH :: 16778549
		GDK_KEY_Armenian_ZA :: 16778550
		GDK_KEY_Armenian_ZHE :: 16778554
		GDK_KEY_Armenian_accent :: 16778587
		GDK_KEY_Armenian_amanak :: 16778588
		GDK_KEY_Armenian_apostrophe :: 16778586
		GDK_KEY_Armenian_at :: 16778600
		GDK_KEY_Armenian_ayb :: 16778593
		GDK_KEY_Armenian_ben :: 16778594
		GDK_KEY_Armenian_but :: 16778589
		GDK_KEY_Armenian_cha :: 16778617
		GDK_KEY_Armenian_da :: 16778596
		GDK_KEY_Armenian_dza :: 16778609
		GDK_KEY_Armenian_e :: 16778599
		GDK_KEY_Armenian_exclam :: 16778588
		GDK_KEY_Armenian_fe :: 16778630
		GDK_KEY_Armenian_full_stop :: 16778633
		GDK_KEY_Armenian_ghat :: 16778610
		GDK_KEY_Armenian_gim :: 16778595
		GDK_KEY_Armenian_hi :: 16778613
		GDK_KEY_Armenian_ho :: 16778608
		GDK_KEY_Armenian_hyphen :: 16778634
		GDK_KEY_Armenian_ini :: 16778603
		GDK_KEY_Armenian_je :: 16778619
		GDK_KEY_Armenian_ke :: 16778628
		GDK_KEY_Armenian_ken :: 16778607
		GDK_KEY_Armenian_khe :: 16778605
		GDK_KEY_Armenian_ligature_ew :: 16778631
		GDK_KEY_Armenian_lyun :: 16778604
		GDK_KEY_Armenian_men :: 16778612
		GDK_KEY_Armenian_nu :: 16778614
		GDK_KEY_Armenian_o :: 16778629
		GDK_KEY_Armenian_paruyk :: 16778590
		GDK_KEY_Armenian_pe :: 16778618
		GDK_KEY_Armenian_pyur :: 16778627
		GDK_KEY_Armenian_question :: 16778590
		GDK_KEY_Armenian_ra :: 16778620
		GDK_KEY_Armenian_re :: 16778624
		GDK_KEY_Armenian_se :: 16778621
		GDK_KEY_Armenian_separation_mark :: 16778589
		GDK_KEY_Armenian_sha :: 16778615
		GDK_KEY_Armenian_shesht :: 16778587
		GDK_KEY_Armenian_tche :: 16778611
		GDK_KEY_Armenian_to :: 16778601
		GDK_KEY_Armenian_tsa :: 16778606
		GDK_KEY_Armenian_tso :: 16778625
		GDK_KEY_Armenian_tyun :: 16778623
		GDK_KEY_Armenian_verjaket :: 16778633
		GDK_KEY_Armenian_vev :: 16778622
		GDK_KEY_Armenian_vo :: 16778616
		GDK_KEY_Armenian_vyun :: 16778626
		GDK_KEY_Armenian_yech :: 16778597
		GDK_KEY_Armenian_yentamna :: 16778634
		GDK_KEY_Armenian_za :: 16778598
		GDK_KEY_Armenian_zhe :: 16778602
		GDK_KEY_Atilde :: 195
		GDK_KEY_AudibleBell_Enable :: 65146
		GDK_KEY_AudioCycleTrack :: 269025179
		GDK_KEY_AudioForward :: 269025175
		GDK_KEY_AudioLowerVolume :: 269025041
		GDK_KEY_AudioMedia :: 269025074
		GDK_KEY_AudioMicMute :: 269025202
		GDK_KEY_AudioMute :: 269025042
		GDK_KEY_AudioNext :: 269025047
		GDK_KEY_AudioPause :: 269025073
		GDK_KEY_AudioPlay :: 269025044
		GDK_KEY_AudioPreset :: 269025206
		GDK_KEY_AudioPrev :: 269025046
		GDK_KEY_AudioRaiseVolume :: 269025043
		GDK_KEY_AudioRandomPlay :: 269025177
		GDK_KEY_AudioRecord :: 269025052
		GDK_KEY_AudioRepeat :: 269025176
		GDK_KEY_AudioRewind :: 269025086
		GDK_KEY_AudioStop :: 269025045
		GDK_KEY_Away :: 269025165
		GDK_KEY_B :: 66
		GDK_KEY_Babovedot :: 16784898
		GDK_KEY_Back :: 269025062
		GDK_KEY_BackForward :: 269025087
		GDK_KEY_BackSpace :: 65288
		GDK_KEY_Battery :: 269025171
		GDK_KEY_Begin :: 65368
		GDK_KEY_Blue :: 269025190
		GDK_KEY_Bluetooth :: 269025172
		GDK_KEY_Book :: 269025106
		GDK_KEY_BounceKeys_Enable :: 65140
		GDK_KEY_Break :: 65387
		GDK_KEY_BrightnessAdjust :: 269025083
		GDK_KEY_Byelorussian_SHORTU :: 1726
		GDK_KEY_Byelorussian_shortu :: 1710
		GDK_KEY_C :: 67
		GDK_KEY_CD :: 269025107
		GDK_KEY_CH :: 65186
		GDK_KEY_C_H :: 65189
		GDK_KEY_C_h :: 65188
		GDK_KEY_Cabovedot :: 709
		GDK_KEY_Cacute :: 454
		GDK_KEY_Calculator :: 269025053
		GDK_KEY_Calendar :: 269025056
		GDK_KEY_Cancel :: 65385
		GDK_KEY_Caps_Lock :: 65509
		GDK_KEY_Ccaron :: 456
		GDK_KEY_Ccedilla :: 199
		GDK_KEY_Ccircumflex :: 710
		GDK_KEY_Ch :: 65185
		GDK_KEY_Clear :: 65291
		GDK_KEY_ClearGrab :: 269024801
		GDK_KEY_Close :: 269025110
		GDK_KEY_Codeinput :: 65335
		GDK_KEY_ColonSign :: 16785569
		GDK_KEY_Community :: 269025085
		GDK_KEY_ContrastAdjust :: 269025058
		GDK_KEY_Control_L :: 65507
		GDK_KEY_Control_R :: 65508
		GDK_KEY_Copy :: 269025111
		GDK_KEY_CruzeiroSign :: 16785570
		GDK_KEY_Cut :: 269025112
		GDK_KEY_CycleAngle :: 269025180
		GDK_KEY_Cyrillic_A :: 1761
		GDK_KEY_Cyrillic_BE :: 1762
		GDK_KEY_Cyrillic_CHE :: 1790
		GDK_KEY_Cyrillic_CHE_descender :: 16778422
		GDK_KEY_Cyrillic_CHE_vertstroke :: 16778424
		GDK_KEY_Cyrillic_DE :: 1764
		GDK_KEY_Cyrillic_DZHE :: 1727
		GDK_KEY_Cyrillic_E :: 1788
		GDK_KEY_Cyrillic_EF :: 1766
		GDK_KEY_Cyrillic_EL :: 1772
		GDK_KEY_Cyrillic_EM :: 1773
		GDK_KEY_Cyrillic_EN :: 1774
		GDK_KEY_Cyrillic_EN_descender :: 16778402
		GDK_KEY_Cyrillic_ER :: 1778
		GDK_KEY_Cyrillic_ES :: 1779
		GDK_KEY_Cyrillic_GHE :: 1767
		GDK_KEY_Cyrillic_GHE_bar :: 16778386
		GDK_KEY_Cyrillic_HA :: 1768
		GDK_KEY_Cyrillic_HARDSIGN :: 1791
		GDK_KEY_Cyrillic_HA_descender :: 16778418
		GDK_KEY_Cyrillic_I :: 1769
		GDK_KEY_Cyrillic_IE :: 1765
		GDK_KEY_Cyrillic_IO :: 1715
		GDK_KEY_Cyrillic_I_macron :: 16778466
		GDK_KEY_Cyrillic_JE :: 1720
		GDK_KEY_Cyrillic_KA :: 1771
		GDK_KEY_Cyrillic_KA_descender :: 16778394
		GDK_KEY_Cyrillic_KA_vertstroke :: 16778396
		GDK_KEY_Cyrillic_LJE :: 1721
		GDK_KEY_Cyrillic_NJE :: 1722
		GDK_KEY_Cyrillic_O :: 1775
		GDK_KEY_Cyrillic_O_bar :: 16778472
		GDK_KEY_Cyrillic_PE :: 1776
		GDK_KEY_Cyrillic_SCHWA :: 16778456
		GDK_KEY_Cyrillic_SHA :: 1787
		GDK_KEY_Cyrillic_SHCHA :: 1789
		GDK_KEY_Cyrillic_SHHA :: 16778426
		GDK_KEY_Cyrillic_SHORTI :: 1770
		GDK_KEY_Cyrillic_SOFTSIGN :: 1784
		GDK_KEY_Cyrillic_TE :: 1780
		GDK_KEY_Cyrillic_TSE :: 1763
		GDK_KEY_Cyrillic_U :: 1781
		GDK_KEY_Cyrillic_U_macron :: 16778478
		GDK_KEY_Cyrillic_U_straight :: 16778414
		GDK_KEY_Cyrillic_U_straight_bar :: 16778416
		GDK_KEY_Cyrillic_VE :: 1783
		GDK_KEY_Cyrillic_YA :: 1777
		GDK_KEY_Cyrillic_YERU :: 1785
		GDK_KEY_Cyrillic_YU :: 1760
		GDK_KEY_Cyrillic_ZE :: 1786
		GDK_KEY_Cyrillic_ZHE :: 1782
		GDK_KEY_Cyrillic_ZHE_descender :: 16778390
		GDK_KEY_Cyrillic_a :: 1729
		GDK_KEY_Cyrillic_be :: 1730
		GDK_KEY_Cyrillic_che :: 1758
		GDK_KEY_Cyrillic_che_descender :: 16778423
		GDK_KEY_Cyrillic_che_vertstroke :: 16778425
		GDK_KEY_Cyrillic_de :: 1732
		GDK_KEY_Cyrillic_dzhe :: 1711
		GDK_KEY_Cyrillic_e :: 1756
		GDK_KEY_Cyrillic_ef :: 1734
		GDK_KEY_Cyrillic_el :: 1740
		GDK_KEY_Cyrillic_em :: 1741
		GDK_KEY_Cyrillic_en :: 1742
		GDK_KEY_Cyrillic_en_descender :: 16778403
		GDK_KEY_Cyrillic_er :: 1746
		GDK_KEY_Cyrillic_es :: 1747
		GDK_KEY_Cyrillic_ghe :: 1735
		GDK_KEY_Cyrillic_ghe_bar :: 16778387
		GDK_KEY_Cyrillic_ha :: 1736
		GDK_KEY_Cyrillic_ha_descender :: 16778419
		GDK_KEY_Cyrillic_hardsign :: 1759
		GDK_KEY_Cyrillic_i :: 1737
		GDK_KEY_Cyrillic_i_macron :: 16778467
		GDK_KEY_Cyrillic_ie :: 1733
		GDK_KEY_Cyrillic_io :: 1699
		GDK_KEY_Cyrillic_je :: 1704
		GDK_KEY_Cyrillic_ka :: 1739
		GDK_KEY_Cyrillic_ka_descender :: 16778395
		GDK_KEY_Cyrillic_ka_vertstroke :: 16778397
		GDK_KEY_Cyrillic_lje :: 1705
		GDK_KEY_Cyrillic_nje :: 1706
		GDK_KEY_Cyrillic_o :: 1743
		GDK_KEY_Cyrillic_o_bar :: 16778473
		GDK_KEY_Cyrillic_pe :: 1744
		GDK_KEY_Cyrillic_schwa :: 16778457
		GDK_KEY_Cyrillic_sha :: 1755
		GDK_KEY_Cyrillic_shcha :: 1757
		GDK_KEY_Cyrillic_shha :: 16778427
		GDK_KEY_Cyrillic_shorti :: 1738
		GDK_KEY_Cyrillic_softsign :: 1752
		GDK_KEY_Cyrillic_te :: 1748
		GDK_KEY_Cyrillic_tse :: 1731
		GDK_KEY_Cyrillic_u :: 1749
		GDK_KEY_Cyrillic_u_macron :: 16778479
		GDK_KEY_Cyrillic_u_straight :: 16778415
		GDK_KEY_Cyrillic_u_straight_bar :: 16778417
		GDK_KEY_Cyrillic_ve :: 1751
		GDK_KEY_Cyrillic_ya :: 1745
		GDK_KEY_Cyrillic_yeru :: 1753
		GDK_KEY_Cyrillic_yu :: 1728
		GDK_KEY_Cyrillic_ze :: 1754
		GDK_KEY_Cyrillic_zhe :: 1750
		GDK_KEY_Cyrillic_zhe_descender :: 16778391
		GDK_KEY_D :: 68
		GDK_KEY_DOS :: 269025114
		GDK_KEY_Dabovedot :: 16784906
		GDK_KEY_Dcaron :: 463
		GDK_KEY_Delete :: 65535
		GDK_KEY_Display :: 269025113
		GDK_KEY_Documents :: 269025115
		GDK_KEY_DongSign :: 16785579
		GDK_KEY_Down :: 65364
		GDK_KEY_Dstroke :: 464
		GDK_KEY_E :: 69
		GDK_KEY_ENG :: 957
		GDK_KEY_ETH :: 208
		GDK_KEY_EZH :: 16777655
		GDK_KEY_Eabovedot :: 972
		GDK_KEY_Eacute :: 201
		GDK_KEY_Ebelowdot :: 16785080
		GDK_KEY_Ecaron :: 460
		GDK_KEY_Ecircumflex :: 202
		GDK_KEY_Ecircumflexacute :: 16785086
		GDK_KEY_Ecircumflexbelowdot :: 16785094
		GDK_KEY_Ecircumflexgrave :: 16785088
		GDK_KEY_Ecircumflexhook :: 16785090
		GDK_KEY_Ecircumflextilde :: 16785092
		GDK_KEY_EcuSign :: 16785568
		GDK_KEY_Ediaeresis :: 203
		GDK_KEY_Egrave :: 200
		GDK_KEY_Ehook :: 16785082
		GDK_KEY_Eisu_Shift :: 65327
		GDK_KEY_Eisu_toggle :: 65328
		GDK_KEY_Eject :: 269025068
		GDK_KEY_Emacron :: 938
		GDK_KEY_End :: 65367
		GDK_KEY_Eogonek :: 458
		GDK_KEY_Escape :: 65307
		GDK_KEY_Eth :: 208
		GDK_KEY_Etilde :: 16785084
		GDK_KEY_EuroSign :: 8364
		GDK_KEY_Excel :: 269025116
		GDK_KEY_Execute :: 65378
		GDK_KEY_Explorer :: 269025117
		GDK_KEY_F :: 70
		GDK_KEY_F1 :: 65470
		GDK_KEY_F10 :: 65479
		GDK_KEY_F11 :: 65480
		GDK_KEY_F12 :: 65481
		GDK_KEY_F13 :: 65482
		GDK_KEY_F14 :: 65483
		GDK_KEY_F15 :: 65484
		GDK_KEY_F16 :: 65485
		GDK_KEY_F17 :: 65486
		GDK_KEY_F18 :: 65487
		GDK_KEY_F19 :: 65488
		GDK_KEY_F2 :: 65471
		GDK_KEY_F20 :: 65489
		GDK_KEY_F21 :: 65490
		GDK_KEY_F22 :: 65491
		GDK_KEY_F23 :: 65492
		GDK_KEY_F24 :: 65493
		GDK_KEY_F25 :: 65494
		GDK_KEY_F26 :: 65495
		GDK_KEY_F27 :: 65496
		GDK_KEY_F28 :: 65497
		GDK_KEY_F29 :: 65498
		GDK_KEY_F3 :: 65472
		GDK_KEY_F30 :: 65499
		GDK_KEY_F31 :: 65500
		GDK_KEY_F32 :: 65501
		GDK_KEY_F33 :: 65502
		GDK_KEY_F34 :: 65503
		GDK_KEY_F35 :: 65504
		GDK_KEY_F4 :: 65473
		GDK_KEY_F5 :: 65474
		GDK_KEY_F6 :: 65475
		GDK_KEY_F7 :: 65476
		GDK_KEY_F8 :: 65477
		GDK_KEY_F9 :: 65478
		GDK_KEY_FFrancSign :: 16785571
		GDK_KEY_Fabovedot :: 16784926
		GDK_KEY_Farsi_0 :: 16778992
		GDK_KEY_Farsi_1 :: 16778993
		GDK_KEY_Farsi_2 :: 16778994
		GDK_KEY_Farsi_3 :: 16778995
		GDK_KEY_Farsi_4 :: 16778996
		GDK_KEY_Farsi_5 :: 16778997
		GDK_KEY_Farsi_6 :: 16778998
		GDK_KEY_Farsi_7 :: 16778999
		GDK_KEY_Farsi_8 :: 16779000
		GDK_KEY_Farsi_9 :: 16779001
		GDK_KEY_Farsi_yeh :: 16778956
		GDK_KEY_Favorites :: 269025072
		GDK_KEY_Finance :: 269025084
		GDK_KEY_Find :: 65384
		GDK_KEY_First_Virtual_Screen :: 65232
		GDK_KEY_Forward :: 269025063
		GDK_KEY_FrameBack :: 269025181
		GDK_KEY_FrameForward :: 269025182
		GDK_KEY_G :: 71
		GDK_KEY_Gabovedot :: 725
		GDK_KEY_Game :: 269025118
		GDK_KEY_Gbreve :: 683
		GDK_KEY_Gcaron :: 16777702
		GDK_KEY_Gcedilla :: 939
		GDK_KEY_Gcircumflex :: 728
		GDK_KEY_Georgian_an :: 16781520
		GDK_KEY_Georgian_ban :: 16781521
		GDK_KEY_Georgian_can :: 16781546
		GDK_KEY_Georgian_char :: 16781549
		GDK_KEY_Georgian_chin :: 16781545
		GDK_KEY_Georgian_cil :: 16781548
		GDK_KEY_Georgian_don :: 16781523
		GDK_KEY_Georgian_en :: 16781524
		GDK_KEY_Georgian_fi :: 16781558
		GDK_KEY_Georgian_gan :: 16781522
		GDK_KEY_Georgian_ghan :: 16781542
		GDK_KEY_Georgian_hae :: 16781552
		GDK_KEY_Georgian_har :: 16781556
		GDK_KEY_Georgian_he :: 16781553
		GDK_KEY_Georgian_hie :: 16781554
		GDK_KEY_Georgian_hoe :: 16781557
		GDK_KEY_Georgian_in :: 16781528
		GDK_KEY_Georgian_jhan :: 16781551
		GDK_KEY_Georgian_jil :: 16781547
		GDK_KEY_Georgian_kan :: 16781529
		GDK_KEY_Georgian_khar :: 16781541
		GDK_KEY_Georgian_las :: 16781530
		GDK_KEY_Georgian_man :: 16781531
		GDK_KEY_Georgian_nar :: 16781532
		GDK_KEY_Georgian_on :: 16781533
		GDK_KEY_Georgian_par :: 16781534
		GDK_KEY_Georgian_phar :: 16781540
		GDK_KEY_Georgian_qar :: 16781543
		GDK_KEY_Georgian_rae :: 16781536
		GDK_KEY_Georgian_san :: 16781537
		GDK_KEY_Georgian_shin :: 16781544
		GDK_KEY_Georgian_tan :: 16781527
		GDK_KEY_Georgian_tar :: 16781538
		GDK_KEY_Georgian_un :: 16781539
		GDK_KEY_Georgian_vin :: 16781525
		GDK_KEY_Georgian_we :: 16781555
		GDK_KEY_Georgian_xan :: 16781550
		GDK_KEY_Georgian_zen :: 16781526
		GDK_KEY_Georgian_zhar :: 16781535
		GDK_KEY_Go :: 269025119
		GDK_KEY_Greek_ALPHA :: 1985
		GDK_KEY_Greek_ALPHAaccent :: 1953
		GDK_KEY_Greek_BETA :: 1986
		GDK_KEY_Greek_CHI :: 2007
		GDK_KEY_Greek_DELTA :: 1988
		GDK_KEY_Greek_EPSILON :: 1989
		GDK_KEY_Greek_EPSILONaccent :: 1954
		GDK_KEY_Greek_ETA :: 1991
		GDK_KEY_Greek_ETAaccent :: 1955
		GDK_KEY_Greek_GAMMA :: 1987
		GDK_KEY_Greek_IOTA :: 1993
		GDK_KEY_Greek_IOTAaccent :: 1956
		GDK_KEY_Greek_IOTAdiaeresis :: 1957
		GDK_KEY_Greek_IOTAdieresis :: 1957
		GDK_KEY_Greek_KAPPA :: 1994
		GDK_KEY_Greek_LAMBDA :: 1995
		GDK_KEY_Greek_LAMDA :: 1995
		GDK_KEY_Greek_MU :: 1996
		GDK_KEY_Greek_NU :: 1997
		GDK_KEY_Greek_OMEGA :: 2009
		GDK_KEY_Greek_OMEGAaccent :: 1963
		GDK_KEY_Greek_OMICRON :: 1999
		GDK_KEY_Greek_OMICRONaccent :: 1959
		GDK_KEY_Greek_PHI :: 2006
		GDK_KEY_Greek_PI :: 2000
		GDK_KEY_Greek_PSI :: 2008
		GDK_KEY_Greek_RHO :: 2001
		GDK_KEY_Greek_SIGMA :: 2002
		GDK_KEY_Greek_TAU :: 2004
		GDK_KEY_Greek_THETA :: 1992
		GDK_KEY_Greek_UPSILON :: 2005
		GDK_KEY_Greek_UPSILONaccent :: 1960
		GDK_KEY_Greek_UPSILONdieresis :: 1961
		GDK_KEY_Greek_XI :: 1998
		GDK_KEY_Greek_ZETA :: 1990
		GDK_KEY_Greek_accentdieresis :: 1966
		GDK_KEY_Greek_alpha :: 2017
		GDK_KEY_Greek_alphaaccent :: 1969
		GDK_KEY_Greek_beta :: 2018
		GDK_KEY_Greek_chi :: 2039
		GDK_KEY_Greek_delta :: 2020
		GDK_KEY_Greek_epsilon :: 2021
		GDK_KEY_Greek_epsilonaccent :: 1970
		GDK_KEY_Greek_eta :: 2023
		GDK_KEY_Greek_etaaccent :: 1971
		GDK_KEY_Greek_finalsmallsigma :: 2035
		GDK_KEY_Greek_gamma :: 2019
		GDK_KEY_Greek_horizbar :: 1967
		GDK_KEY_Greek_iota :: 2025
		GDK_KEY_Greek_iotaaccent :: 1972
		GDK_KEY_Greek_iotaaccentdieresis :: 1974
		GDK_KEY_Greek_iotadieresis :: 1973
		GDK_KEY_Greek_kappa :: 2026
		GDK_KEY_Greek_lambda :: 2027
		GDK_KEY_Greek_lamda :: 2027
		GDK_KEY_Greek_mu :: 2028
		GDK_KEY_Greek_nu :: 2029
		GDK_KEY_Greek_omega :: 2041
		GDK_KEY_Greek_omegaaccent :: 1979
		GDK_KEY_Greek_omicron :: 2031
		GDK_KEY_Greek_omicronaccent :: 1975
		GDK_KEY_Greek_phi :: 2038
		GDK_KEY_Greek_pi :: 2032
		GDK_KEY_Greek_psi :: 2040
		GDK_KEY_Greek_rho :: 2033
		GDK_KEY_Greek_sigma :: 2034
		GDK_KEY_Greek_switch :: 65406
		GDK_KEY_Greek_tau :: 2036
		GDK_KEY_Greek_theta :: 2024
		GDK_KEY_Greek_upsilon :: 2037
		GDK_KEY_Greek_upsilonaccent :: 1976
		GDK_KEY_Greek_upsilonaccentdieresis :: 1978
		GDK_KEY_Greek_upsilondieresis :: 1977
		GDK_KEY_Greek_xi :: 2030
		GDK_KEY_Greek_zeta :: 2022
		GDK_KEY_Green :: 269025188
		GDK_KEY_H :: 72
		GDK_KEY_Hangul :: 65329
		GDK_KEY_Hangul_A :: 3775
		GDK_KEY_Hangul_AE :: 3776
		GDK_KEY_Hangul_AraeA :: 3830
		GDK_KEY_Hangul_AraeAE :: 3831
		GDK_KEY_Hangul_Banja :: 65337
		GDK_KEY_Hangul_Cieuc :: 3770
		GDK_KEY_Hangul_Codeinput :: 65335
		GDK_KEY_Hangul_Dikeud :: 3751
		GDK_KEY_Hangul_E :: 3780
		GDK_KEY_Hangul_EO :: 3779
		GDK_KEY_Hangul_EU :: 3793
		GDK_KEY_Hangul_End :: 65331
		GDK_KEY_Hangul_Hanja :: 65332
		GDK_KEY_Hangul_Hieuh :: 3774
		GDK_KEY_Hangul_I :: 3795
		GDK_KEY_Hangul_Ieung :: 3767
		GDK_KEY_Hangul_J_Cieuc :: 3818
		GDK_KEY_Hangul_J_Dikeud :: 3802
		GDK_KEY_Hangul_J_Hieuh :: 3822
		GDK_KEY_Hangul_J_Ieung :: 3816
		GDK_KEY_Hangul_J_Jieuj :: 3817
		GDK_KEY_Hangul_J_Khieuq :: 3819
		GDK_KEY_Hangul_J_Kiyeog :: 3796
		GDK_KEY_Hangul_J_KiyeogSios :: 3798
		GDK_KEY_Hangul_J_KkogjiDalrinIeung :: 3833
		GDK_KEY_Hangul_J_Mieum :: 3811
		GDK_KEY_Hangul_J_Nieun :: 3799
		GDK_KEY_Hangul_J_NieunHieuh :: 3801
		GDK_KEY_Hangul_J_NieunJieuj :: 3800
		GDK_KEY_Hangul_J_PanSios :: 3832
		GDK_KEY_Hangul_J_Phieuf :: 3821
		GDK_KEY_Hangul_J_Pieub :: 3812
		GDK_KEY_Hangul_J_PieubSios :: 3813
		GDK_KEY_Hangul_J_Rieul :: 3803
		GDK_KEY_Hangul_J_RieulHieuh :: 3810
		GDK_KEY_Hangul_J_RieulKiyeog :: 3804
		GDK_KEY_Hangul_J_RieulMieum :: 3805
		GDK_KEY_Hangul_J_RieulPhieuf :: 3809
		GDK_KEY_Hangul_J_RieulPieub :: 3806
		GDK_KEY_Hangul_J_RieulSios :: 3807
		GDK_KEY_Hangul_J_RieulTieut :: 3808
		GDK_KEY_Hangul_J_Sios :: 3814
		GDK_KEY_Hangul_J_SsangKiyeog :: 3797
		GDK_KEY_Hangul_J_SsangSios :: 3815
		GDK_KEY_Hangul_J_Tieut :: 3820
		GDK_KEY_Hangul_J_YeorinHieuh :: 3834
		GDK_KEY_Hangul_Jamo :: 65333
		GDK_KEY_Hangul_Jeonja :: 65336
		GDK_KEY_Hangul_Jieuj :: 3768
		GDK_KEY_Hangul_Khieuq :: 3771
		GDK_KEY_Hangul_Kiyeog :: 3745
		GDK_KEY_Hangul_KiyeogSios :: 3747
		GDK_KEY_Hangul_KkogjiDalrinIeung :: 3827
		GDK_KEY_Hangul_Mieum :: 3761
		GDK_KEY_Hangul_MultipleCandidate :: 65341
		GDK_KEY_Hangul_Nieun :: 3748
		GDK_KEY_Hangul_NieunHieuh :: 3750
		GDK_KEY_Hangul_NieunJieuj :: 3749
		GDK_KEY_Hangul_O :: 3783
		GDK_KEY_Hangul_OE :: 3786
		GDK_KEY_Hangul_PanSios :: 3826
		GDK_KEY_Hangul_Phieuf :: 3773
		GDK_KEY_Hangul_Pieub :: 3762
		GDK_KEY_Hangul_PieubSios :: 3764
		GDK_KEY_Hangul_PostHanja :: 65339
		GDK_KEY_Hangul_PreHanja :: 65338
		GDK_KEY_Hangul_PreviousCandidate :: 65342
		GDK_KEY_Hangul_Rieul :: 3753
		GDK_KEY_Hangul_RieulHieuh :: 3760
		GDK_KEY_Hangul_RieulKiyeog :: 3754
		GDK_KEY_Hangul_RieulMieum :: 3755
		GDK_KEY_Hangul_RieulPhieuf :: 3759
		GDK_KEY_Hangul_RieulPieub :: 3756
		GDK_KEY_Hangul_RieulSios :: 3757
		GDK_KEY_Hangul_RieulTieut :: 3758
		GDK_KEY_Hangul_RieulYeorinHieuh :: 3823
		GDK_KEY_Hangul_Romaja :: 65334
		GDK_KEY_Hangul_SingleCandidate :: 65340
		GDK_KEY_Hangul_Sios :: 3765
		GDK_KEY_Hangul_Special :: 65343
		GDK_KEY_Hangul_SsangDikeud :: 3752
		GDK_KEY_Hangul_SsangJieuj :: 3769
		GDK_KEY_Hangul_SsangKiyeog :: 3746
		GDK_KEY_Hangul_SsangPieub :: 3763
		GDK_KEY_Hangul_SsangSios :: 3766
		GDK_KEY_Hangul_Start :: 65330
		GDK_KEY_Hangul_SunkyeongeumMieum :: 3824
		GDK_KEY_Hangul_SunkyeongeumPhieuf :: 3828
		GDK_KEY_Hangul_SunkyeongeumPieub :: 3825
		GDK_KEY_Hangul_Tieut :: 3772
		GDK_KEY_Hangul_U :: 3788
		GDK_KEY_Hangul_WA :: 3784
		GDK_KEY_Hangul_WAE :: 3785
		GDK_KEY_Hangul_WE :: 3790
		GDK_KEY_Hangul_WEO :: 3789
		GDK_KEY_Hangul_WI :: 3791
		GDK_KEY_Hangul_YA :: 3777
		GDK_KEY_Hangul_YAE :: 3778
		GDK_KEY_Hangul_YE :: 3782
		GDK_KEY_Hangul_YEO :: 3781
		GDK_KEY_Hangul_YI :: 3794
		GDK_KEY_Hangul_YO :: 3787
		GDK_KEY_Hangul_YU :: 3792
		GDK_KEY_Hangul_YeorinHieuh :: 3829
		GDK_KEY_Hangul_switch :: 65406
		GDK_KEY_Hankaku :: 65321
		GDK_KEY_Hcircumflex :: 678
		GDK_KEY_Hebrew_switch :: 65406
		GDK_KEY_Help :: 65386
		GDK_KEY_Henkan :: 65315
		GDK_KEY_Henkan_Mode :: 65315
		GDK_KEY_Hibernate :: 269025192
		GDK_KEY_Hiragana :: 65317
		GDK_KEY_Hiragana_Katakana :: 65319
		GDK_KEY_History :: 269025079
		GDK_KEY_Home :: 65360
		GDK_KEY_HomePage :: 269025048
		GDK_KEY_HotLinks :: 269025082
		GDK_KEY_Hstroke :: 673
		GDK_KEY_Hyper_L :: 65517
		GDK_KEY_Hyper_R :: 65518
		GDK_KEY_I :: 73
		GDK_KEY_ISO_Center_Object :: 65075
		GDK_KEY_ISO_Continuous_Underline :: 65072
		GDK_KEY_ISO_Discontinuous_Underline :: 65073
		GDK_KEY_ISO_Emphasize :: 65074
		GDK_KEY_ISO_Enter :: 65076
		GDK_KEY_ISO_Fast_Cursor_Down :: 65071
		GDK_KEY_ISO_Fast_Cursor_Left :: 65068
		GDK_KEY_ISO_Fast_Cursor_Right :: 65069
		GDK_KEY_ISO_Fast_Cursor_Up :: 65070
		GDK_KEY_ISO_First_Group :: 65036
		GDK_KEY_ISO_First_Group_Lock :: 65037
		GDK_KEY_ISO_Group_Latch :: 65030
		GDK_KEY_ISO_Group_Lock :: 65031
		GDK_KEY_ISO_Group_Shift :: 65406
		GDK_KEY_ISO_Last_Group :: 65038
		GDK_KEY_ISO_Last_Group_Lock :: 65039
		GDK_KEY_ISO_Left_Tab :: 65056
		GDK_KEY_ISO_Level2_Latch :: 65026
		GDK_KEY_ISO_Level3_Latch :: 65028
		GDK_KEY_ISO_Level3_Lock :: 65029
		GDK_KEY_ISO_Level3_Shift :: 65027
		GDK_KEY_ISO_Level5_Latch :: 65042
		GDK_KEY_ISO_Level5_Lock :: 65043
		GDK_KEY_ISO_Level5_Shift :: 65041
		GDK_KEY_ISO_Lock :: 65025
		GDK_KEY_ISO_Move_Line_Down :: 65058
		GDK_KEY_ISO_Move_Line_Up :: 65057
		GDK_KEY_ISO_Next_Group :: 65032
		GDK_KEY_ISO_Next_Group_Lock :: 65033
		GDK_KEY_ISO_Partial_Line_Down :: 65060
		GDK_KEY_ISO_Partial_Line_Up :: 65059
		GDK_KEY_ISO_Partial_Space_Left :: 65061
		GDK_KEY_ISO_Partial_Space_Right :: 65062
		GDK_KEY_ISO_Prev_Group :: 65034
		GDK_KEY_ISO_Prev_Group_Lock :: 65035
		GDK_KEY_ISO_Release_Both_Margins :: 65067
		GDK_KEY_ISO_Release_Margin_Left :: 65065
		GDK_KEY_ISO_Release_Margin_Right :: 65066
		GDK_KEY_ISO_Set_Margin_Left :: 65063
		GDK_KEY_ISO_Set_Margin_Right :: 65064
		GDK_KEY_Iabovedot :: 681
		GDK_KEY_Iacute :: 205
		GDK_KEY_Ibelowdot :: 16785098
		GDK_KEY_Ibreve :: 16777516
		GDK_KEY_Icircumflex :: 206
		GDK_KEY_Idiaeresis :: 207
		GDK_KEY_Igrave :: 204
		GDK_KEY_Ihook :: 16785096
		GDK_KEY_Imacron :: 975
		GDK_KEY_Insert :: 65379
		GDK_KEY_Iogonek :: 967
		GDK_KEY_Itilde :: 933
		GDK_KEY_J :: 74
		GDK_KEY_Jcircumflex :: 684
		GDK_KEY_K :: 75
		GDK_KEY_KP_0 :: 65456
		GDK_KEY_KP_1 :: 65457
		GDK_KEY_KP_2 :: 65458
		GDK_KEY_KP_3 :: 65459
		GDK_KEY_KP_4 :: 65460
		GDK_KEY_KP_5 :: 65461
		GDK_KEY_KP_6 :: 65462
		GDK_KEY_KP_7 :: 65463
		GDK_KEY_KP_8 :: 65464
		GDK_KEY_KP_9 :: 65465
		GDK_KEY_KP_Add :: 65451
		GDK_KEY_KP_Begin :: 65437
		GDK_KEY_KP_Decimal :: 65454
		GDK_KEY_KP_Delete :: 65439
		GDK_KEY_KP_Divide :: 65455
		GDK_KEY_KP_Down :: 65433
		GDK_KEY_KP_End :: 65436
		GDK_KEY_KP_Enter :: 65421
		GDK_KEY_KP_Equal :: 65469
		GDK_KEY_KP_F1 :: 65425
		GDK_KEY_KP_F2 :: 65426
		GDK_KEY_KP_F3 :: 65427
		GDK_KEY_KP_F4 :: 65428
		GDK_KEY_KP_Home :: 65429
		GDK_KEY_KP_Insert :: 65438
		GDK_KEY_KP_Left :: 65430
		GDK_KEY_KP_Multiply :: 65450
		GDK_KEY_KP_Next :: 65435
		GDK_KEY_KP_Page_Down :: 65435
		GDK_KEY_KP_Page_Up :: 65434
		GDK_KEY_KP_Prior :: 65434
		GDK_KEY_KP_Right :: 65432
		GDK_KEY_KP_Separator :: 65452
		GDK_KEY_KP_Space :: 65408
		GDK_KEY_KP_Subtract :: 65453
		GDK_KEY_KP_Tab :: 65417
		GDK_KEY_KP_Up :: 65431
		GDK_KEY_Kana_Lock :: 65325
		GDK_KEY_Kana_Shift :: 65326
		GDK_KEY_Kanji :: 65313
		GDK_KEY_Kanji_Bangou :: 65335
		GDK_KEY_Katakana :: 65318
		GDK_KEY_KbdBrightnessDown :: 269025030
		GDK_KEY_KbdBrightnessUp :: 269025029
		GDK_KEY_KbdLightOnOff :: 269025028
		GDK_KEY_Kcedilla :: 979
		GDK_KEY_Keyboard :: 269025203
		GDK_KEY_Korean_Won :: 3839
		GDK_KEY_L :: 76
		GDK_KEY_L1 :: 65480
		GDK_KEY_L10 :: 65489
		GDK_KEY_L2 :: 65481
		GDK_KEY_L3 :: 65482
		GDK_KEY_L4 :: 65483
		GDK_KEY_L5 :: 65484
		GDK_KEY_L6 :: 65485
		GDK_KEY_L7 :: 65486
		GDK_KEY_L8 :: 65487
		GDK_KEY_L9 :: 65488
		GDK_KEY_Lacute :: 453
		GDK_KEY_Last_Virtual_Screen :: 65236
		GDK_KEY_Launch0 :: 269025088
		GDK_KEY_Launch1 :: 269025089
		GDK_KEY_Launch2 :: 269025090
		GDK_KEY_Launch3 :: 269025091
		GDK_KEY_Launch4 :: 269025092
		GDK_KEY_Launch5 :: 269025093
		GDK_KEY_Launch6 :: 269025094
		GDK_KEY_Launch7 :: 269025095
		GDK_KEY_Launch8 :: 269025096
		GDK_KEY_Launch9 :: 269025097
		GDK_KEY_LaunchA :: 269025098
		GDK_KEY_LaunchB :: 269025099
		GDK_KEY_LaunchC :: 269025100
		GDK_KEY_LaunchD :: 269025101
		GDK_KEY_LaunchE :: 269025102
		GDK_KEY_LaunchF :: 269025103
		GDK_KEY_Lbelowdot :: 16784950
		GDK_KEY_Lcaron :: 421
		GDK_KEY_Lcedilla :: 934
		GDK_KEY_Left :: 65361
		GDK_KEY_LightBulb :: 269025077
		GDK_KEY_Linefeed :: 65290
		GDK_KEY_LiraSign :: 16785572
		GDK_KEY_LogGrabInfo :: 269024805
		GDK_KEY_LogOff :: 269025121
		GDK_KEY_LogWindowTree :: 269024804
		GDK_KEY_Lstroke :: 419
		GDK_KEY_M :: 77
		GDK_KEY_Mabovedot :: 16784960
		GDK_KEY_Macedonia_DSE :: 1717
		GDK_KEY_Macedonia_GJE :: 1714
		GDK_KEY_Macedonia_KJE :: 1724
		GDK_KEY_Macedonia_dse :: 1701
		GDK_KEY_Macedonia_gje :: 1698
		GDK_KEY_Macedonia_kje :: 1708
		GDK_KEY_Mae_Koho :: 65342
		GDK_KEY_Mail :: 269025049
		GDK_KEY_MailForward :: 269025168
		GDK_KEY_Market :: 269025122
		GDK_KEY_Massyo :: 65324
		GDK_KEY_Meeting :: 269025123
		GDK_KEY_Memo :: 269025054
		GDK_KEY_Menu :: 65383
		GDK_KEY_MenuKB :: 269025125
		GDK_KEY_MenuPB :: 269025126
		GDK_KEY_Messenger :: 269025166
		GDK_KEY_Meta_L :: 65511
		GDK_KEY_Meta_R :: 65512
		GDK_KEY_MillSign :: 16785573
		GDK_KEY_ModeLock :: 269025025
		GDK_KEY_Mode_switch :: 65406
		GDK_KEY_MonBrightnessDown :: 269025027
		GDK_KEY_MonBrightnessUp :: 269025026
		GDK_KEY_MouseKeys_Accel_Enable :: 65143
		GDK_KEY_MouseKeys_Enable :: 65142
		GDK_KEY_Muhenkan :: 65314
		GDK_KEY_Multi_key :: 65312
		GDK_KEY_MultipleCandidate :: 65341
		GDK_KEY_Music :: 269025170
		GDK_KEY_MyComputer :: 269025075
		GDK_KEY_MySites :: 269025127
		GDK_KEY_N :: 78
		GDK_KEY_Nacute :: 465
		GDK_KEY_NairaSign :: 16785574
		GDK_KEY_Ncaron :: 466
		GDK_KEY_Ncedilla :: 977
		GDK_KEY_New :: 269025128
		GDK_KEY_NewSheqelSign :: 16785578
		GDK_KEY_News :: 269025129
		GDK_KEY_Next :: 65366
		GDK_KEY_Next_VMode :: 269024802
		GDK_KEY_Next_Virtual_Screen :: 65234
		GDK_KEY_Ntilde :: 209
		GDK_KEY_Num_Lock :: 65407
		GDK_KEY_O :: 79
		GDK_KEY_OE :: 5052
		GDK_KEY_Oacute :: 211
		GDK_KEY_Obarred :: 16777631
		GDK_KEY_Obelowdot :: 16785100
		GDK_KEY_Ocaron :: 16777681
		GDK_KEY_Ocircumflex :: 212
		GDK_KEY_Ocircumflexacute :: 16785104
		GDK_KEY_Ocircumflexbelowdot :: 16785112
		GDK_KEY_Ocircumflexgrave :: 16785106
		GDK_KEY_Ocircumflexhook :: 16785108
		GDK_KEY_Ocircumflextilde :: 16785110
		GDK_KEY_Odiaeresis :: 214
		GDK_KEY_Odoubleacute :: 469
		GDK_KEY_OfficeHome :: 269025130
		GDK_KEY_Ograve :: 210
		GDK_KEY_Ohook :: 16785102
		GDK_KEY_Ohorn :: 16777632
		GDK_KEY_Ohornacute :: 16785114
		GDK_KEY_Ohornbelowdot :: 16785122
		GDK_KEY_Ohorngrave :: 16785116
		GDK_KEY_Ohornhook :: 16785118
		GDK_KEY_Ohorntilde :: 16785120
		GDK_KEY_Omacron :: 978
		GDK_KEY_Ooblique :: 216
		GDK_KEY_Open :: 269025131
		GDK_KEY_OpenURL :: 269025080
		GDK_KEY_Option :: 269025132
		GDK_KEY_Oslash :: 216
		GDK_KEY_Otilde :: 213
		GDK_KEY_Overlay1_Enable :: 65144
		GDK_KEY_Overlay2_Enable :: 65145
		GDK_KEY_P :: 80
		GDK_KEY_Pabovedot :: 16784982
		GDK_KEY_Page_Down :: 65366
		GDK_KEY_Page_Up :: 65365
		GDK_KEY_Paste :: 269025133
		GDK_KEY_Pause :: 65299
		GDK_KEY_PesetaSign :: 16785575
		GDK_KEY_Phone :: 269025134
		GDK_KEY_Pictures :: 269025169
		GDK_KEY_Pointer_Accelerate :: 65274
		GDK_KEY_Pointer_Button1 :: 65257
		GDK_KEY_Pointer_Button2 :: 65258
		GDK_KEY_Pointer_Button3 :: 65259
		GDK_KEY_Pointer_Button4 :: 65260
		GDK_KEY_Pointer_Button5 :: 65261
		GDK_KEY_Pointer_Button_Dflt :: 65256
		GDK_KEY_Pointer_DblClick1 :: 65263
		GDK_KEY_Pointer_DblClick2 :: 65264
		GDK_KEY_Pointer_DblClick3 :: 65265
		GDK_KEY_Pointer_DblClick4 :: 65266
		GDK_KEY_Pointer_DblClick5 :: 65267
		GDK_KEY_Pointer_DblClick_Dflt :: 65262
		GDK_KEY_Pointer_DfltBtnNext :: 65275
		GDK_KEY_Pointer_DfltBtnPrev :: 65276
		GDK_KEY_Pointer_Down :: 65251
		GDK_KEY_Pointer_DownLeft :: 65254
		GDK_KEY_Pointer_DownRight :: 65255
		GDK_KEY_Pointer_Drag1 :: 65269
		GDK_KEY_Pointer_Drag2 :: 65270
		GDK_KEY_Pointer_Drag3 :: 65271
		GDK_KEY_Pointer_Drag4 :: 65272
		GDK_KEY_Pointer_Drag5 :: 65277
		GDK_KEY_Pointer_Drag_Dflt :: 65268
		GDK_KEY_Pointer_EnableKeys :: 65273
		GDK_KEY_Pointer_Left :: 65248
		GDK_KEY_Pointer_Right :: 65249
		GDK_KEY_Pointer_Up :: 65250
		GDK_KEY_Pointer_UpLeft :: 65252
		GDK_KEY_Pointer_UpRight :: 65253
		GDK_KEY_PowerDown :: 269025057
		GDK_KEY_PowerOff :: 269025066
		GDK_KEY_Prev_VMode :: 269024803
		GDK_KEY_Prev_Virtual_Screen :: 65233
		GDK_KEY_PreviousCandidate :: 65342
		GDK_KEY_Print :: 65377
		GDK_KEY_Prior :: 65365
		GDK_KEY_Q :: 81
		GDK_KEY_R :: 82
		GDK_KEY_R1 :: 65490
		GDK_KEY_R10 :: 65499
		GDK_KEY_R11 :: 65500
		GDK_KEY_R12 :: 65501
		GDK_KEY_R13 :: 65502
		GDK_KEY_R14 :: 65503
		GDK_KEY_R15 :: 65504
		GDK_KEY_R2 :: 65491
		GDK_KEY_R3 :: 65492
		GDK_KEY_R4 :: 65493
		GDK_KEY_R5 :: 65494
		GDK_KEY_R6 :: 65495
		GDK_KEY_R7 :: 65496
		GDK_KEY_R8 :: 65497
		GDK_KEY_R9 :: 65498
		GDK_KEY_RFKill :: 269025205
		GDK_KEY_Racute :: 448
		GDK_KEY_Rcaron :: 472
		GDK_KEY_Rcedilla :: 931
		GDK_KEY_Red :: 269025187
		GDK_KEY_Redo :: 65382
		GDK_KEY_Refresh :: 269025065
		GDK_KEY_Reload :: 269025139
		GDK_KEY_RepeatKeys_Enable :: 65138
		GDK_KEY_Reply :: 269025138
		GDK_KEY_Return :: 65293
		GDK_KEY_Right :: 65363
		GDK_KEY_RockerDown :: 269025060
		GDK_KEY_RockerEnter :: 269025061
		GDK_KEY_RockerUp :: 269025059
		GDK_KEY_Romaji :: 65316
		GDK_KEY_RotateWindows :: 269025140
		GDK_KEY_RotationKB :: 269025142
		GDK_KEY_RotationPB :: 269025141
		GDK_KEY_RupeeSign :: 16785576
		GDK_KEY_S :: 83
		GDK_KEY_SCHWA :: 16777615
		GDK_KEY_Sabovedot :: 16784992
		GDK_KEY_Sacute :: 422
		GDK_KEY_Save :: 269025143
		GDK_KEY_Scaron :: 425
		GDK_KEY_Scedilla :: 426
		GDK_KEY_Scircumflex :: 734
		GDK_KEY_ScreenSaver :: 269025069
		GDK_KEY_ScrollClick :: 269025146
		GDK_KEY_ScrollDown :: 269025145
		GDK_KEY_ScrollUp :: 269025144
		GDK_KEY_Scroll_Lock :: 65300
		GDK_KEY_Search :: 269025051
		GDK_KEY_Select :: 65376
		GDK_KEY_SelectButton :: 269025184
		GDK_KEY_Send :: 269025147
		GDK_KEY_Serbian_DJE :: 1713
		GDK_KEY_Serbian_DZE :: 1727
		GDK_KEY_Serbian_JE :: 1720
		GDK_KEY_Serbian_LJE :: 1721
		GDK_KEY_Serbian_NJE :: 1722
		GDK_KEY_Serbian_TSHE :: 1723
		GDK_KEY_Serbian_dje :: 1697
		GDK_KEY_Serbian_dze :: 1711
		GDK_KEY_Serbian_je :: 1704
		GDK_KEY_Serbian_lje :: 1705
		GDK_KEY_Serbian_nje :: 1706
		GDK_KEY_Serbian_tshe :: 1707
		GDK_KEY_Shift_L :: 65505
		GDK_KEY_Shift_Lock :: 65510
		GDK_KEY_Shift_R :: 65506
		GDK_KEY_Shop :: 269025078
		GDK_KEY_SingleCandidate :: 65340
		GDK_KEY_Sinh_a :: 16780677
		GDK_KEY_Sinh_aa :: 16780678
		GDK_KEY_Sinh_aa2 :: 16780751
		GDK_KEY_Sinh_ae :: 16780679
		GDK_KEY_Sinh_ae2 :: 16780752
		GDK_KEY_Sinh_aee :: 16780680
		GDK_KEY_Sinh_aee2 :: 16780753
		GDK_KEY_Sinh_ai :: 16780691
		GDK_KEY_Sinh_ai2 :: 16780763
		GDK_KEY_Sinh_al :: 16780746
		GDK_KEY_Sinh_au :: 16780694
		GDK_KEY_Sinh_au2 :: 16780766
		GDK_KEY_Sinh_ba :: 16780726
		GDK_KEY_Sinh_bha :: 16780727
		GDK_KEY_Sinh_ca :: 16780704
		GDK_KEY_Sinh_cha :: 16780705
		GDK_KEY_Sinh_dda :: 16780713
		GDK_KEY_Sinh_ddha :: 16780714
		GDK_KEY_Sinh_dha :: 16780719
		GDK_KEY_Sinh_dhha :: 16780720
		GDK_KEY_Sinh_e :: 16780689
		GDK_KEY_Sinh_e2 :: 16780761
		GDK_KEY_Sinh_ee :: 16780690
		GDK_KEY_Sinh_ee2 :: 16780762
		GDK_KEY_Sinh_fa :: 16780742
		GDK_KEY_Sinh_ga :: 16780700
		GDK_KEY_Sinh_gha :: 16780701
		GDK_KEY_Sinh_h2 :: 16780675
		GDK_KEY_Sinh_ha :: 16780740
		GDK_KEY_Sinh_i :: 16780681
		GDK_KEY_Sinh_i2 :: 16780754
		GDK_KEY_Sinh_ii :: 16780682
		GDK_KEY_Sinh_ii2 :: 16780755
		GDK_KEY_Sinh_ja :: 16780706
		GDK_KEY_Sinh_jha :: 16780707
		GDK_KEY_Sinh_jnya :: 16780709
		GDK_KEY_Sinh_ka :: 16780698
		GDK_KEY_Sinh_kha :: 16780699
		GDK_KEY_Sinh_kunddaliya :: 16780788
		GDK_KEY_Sinh_la :: 16780733
		GDK_KEY_Sinh_lla :: 16780741
		GDK_KEY_Sinh_lu :: 16780687
		GDK_KEY_Sinh_lu2 :: 16780767
		GDK_KEY_Sinh_luu :: 16780688
		GDK_KEY_Sinh_luu2 :: 16780787
		GDK_KEY_Sinh_ma :: 16780728
		GDK_KEY_Sinh_mba :: 16780729
		GDK_KEY_Sinh_na :: 16780721
		GDK_KEY_Sinh_ndda :: 16780716
		GDK_KEY_Sinh_ndha :: 16780723
		GDK_KEY_Sinh_ng :: 16780674
		GDK_KEY_Sinh_ng2 :: 16780702
		GDK_KEY_Sinh_nga :: 16780703
		GDK_KEY_Sinh_nja :: 16780710
		GDK_KEY_Sinh_nna :: 16780715
		GDK_KEY_Sinh_nya :: 16780708
		GDK_KEY_Sinh_o :: 16780692
		GDK_KEY_Sinh_o2 :: 16780764
		GDK_KEY_Sinh_oo :: 16780693
		GDK_KEY_Sinh_oo2 :: 16780765
		GDK_KEY_Sinh_pa :: 16780724
		GDK_KEY_Sinh_pha :: 16780725
		GDK_KEY_Sinh_ra :: 16780731
		GDK_KEY_Sinh_ri :: 16780685
		GDK_KEY_Sinh_rii :: 16780686
		GDK_KEY_Sinh_ru2 :: 16780760
		GDK_KEY_Sinh_ruu2 :: 16780786
		GDK_KEY_Sinh_sa :: 16780739
		GDK_KEY_Sinh_sha :: 16780737
		GDK_KEY_Sinh_ssha :: 16780738
		GDK_KEY_Sinh_tha :: 16780717
		GDK_KEY_Sinh_thha :: 16780718
		GDK_KEY_Sinh_tta :: 16780711
		GDK_KEY_Sinh_ttha :: 16780712
		GDK_KEY_Sinh_u :: 16780683
		GDK_KEY_Sinh_u2 :: 16780756
		GDK_KEY_Sinh_uu :: 16780684
		GDK_KEY_Sinh_uu2 :: 16780758
		GDK_KEY_Sinh_va :: 16780736
		GDK_KEY_Sinh_ya :: 16780730
		GDK_KEY_Sleep :: 269025071
		GDK_KEY_SlowKeys_Enable :: 65139
		GDK_KEY_Spell :: 269025148
		GDK_KEY_SplitScreen :: 269025149
		GDK_KEY_Standby :: 269025040
		GDK_KEY_Start :: 269025050
		GDK_KEY_StickyKeys_Enable :: 65141
		GDK_KEY_Stop :: 269025064
		GDK_KEY_Subtitle :: 269025178
		GDK_KEY_Super_L :: 65515
		GDK_KEY_Super_R :: 65516
		GDK_KEY_Support :: 269025150
		GDK_KEY_Suspend :: 269025191
		GDK_KEY_Switch_VT_1 :: 269024769
		GDK_KEY_Switch_VT_10 :: 269024778
		GDK_KEY_Switch_VT_11 :: 269024779
		GDK_KEY_Switch_VT_12 :: 269024780
		GDK_KEY_Switch_VT_2 :: 269024770
		GDK_KEY_Switch_VT_3 :: 269024771
		GDK_KEY_Switch_VT_4 :: 269024772
		GDK_KEY_Switch_VT_5 :: 269024773
		GDK_KEY_Switch_VT_6 :: 269024774
		GDK_KEY_Switch_VT_7 :: 269024775
		GDK_KEY_Switch_VT_8 :: 269024776
		GDK_KEY_Switch_VT_9 :: 269024777
		GDK_KEY_Sys_Req :: 65301
		GDK_KEY_T :: 84
		GDK_KEY_THORN :: 222
		GDK_KEY_Tab :: 65289
		GDK_KEY_Tabovedot :: 16785002
		GDK_KEY_TaskPane :: 269025151
		GDK_KEY_Tcaron :: 427
		GDK_KEY_Tcedilla :: 478
		GDK_KEY_Terminal :: 269025152
		GDK_KEY_Terminate_Server :: 65237
		GDK_KEY_Thai_baht :: 3551
		GDK_KEY_Thai_bobaimai :: 3514
		GDK_KEY_Thai_chochan :: 3496
		GDK_KEY_Thai_chochang :: 3498
		GDK_KEY_Thai_choching :: 3497
		GDK_KEY_Thai_chochoe :: 3500
		GDK_KEY_Thai_dochada :: 3502
		GDK_KEY_Thai_dodek :: 3508
		GDK_KEY_Thai_fofa :: 3517
		GDK_KEY_Thai_fofan :: 3519
		GDK_KEY_Thai_hohip :: 3531
		GDK_KEY_Thai_honokhuk :: 3534
		GDK_KEY_Thai_khokhai :: 3490
		GDK_KEY_Thai_khokhon :: 3493
		GDK_KEY_Thai_khokhuat :: 3491
		GDK_KEY_Thai_khokhwai :: 3492
		GDK_KEY_Thai_khorakhang :: 3494
		GDK_KEY_Thai_kokai :: 3489
		GDK_KEY_Thai_lakkhangyao :: 3557
		GDK_KEY_Thai_lekchet :: 3575
		GDK_KEY_Thai_lekha :: 3573
		GDK_KEY_Thai_lekhok :: 3574
		GDK_KEY_Thai_lekkao :: 3577
		GDK_KEY_Thai_leknung :: 3569
		GDK_KEY_Thai_lekpaet :: 3576
		GDK_KEY_Thai_leksam :: 3571
		GDK_KEY_Thai_leksi :: 3572
		GDK_KEY_Thai_leksong :: 3570
		GDK_KEY_Thai_leksun :: 3568
		GDK_KEY_Thai_lochula :: 3532
		GDK_KEY_Thai_loling :: 3525
		GDK_KEY_Thai_lu :: 3526
		GDK_KEY_Thai_maichattawa :: 3563
		GDK_KEY_Thai_maiek :: 3560
		GDK_KEY_Thai_maihanakat :: 3537
		GDK_KEY_Thai_maihanakat_maitho :: 3550
		GDK_KEY_Thai_maitaikhu :: 3559
		GDK_KEY_Thai_maitho :: 3561
		GDK_KEY_Thai_maitri :: 3562
		GDK_KEY_Thai_maiyamok :: 3558
		GDK_KEY_Thai_moma :: 3521
		GDK_KEY_Thai_ngongu :: 3495
		GDK_KEY_Thai_nikhahit :: 3565
		GDK_KEY_Thai_nonen :: 3507
		GDK_KEY_Thai_nonu :: 3513
		GDK_KEY_Thai_oang :: 3533
		GDK_KEY_Thai_paiyannoi :: 3535
		GDK_KEY_Thai_phinthu :: 3546
		GDK_KEY_Thai_phophan :: 3518
		GDK_KEY_Thai_phophung :: 3516
		GDK_KEY_Thai_phosamphao :: 3520
		GDK_KEY_Thai_popla :: 3515
		GDK_KEY_Thai_rorua :: 3523
		GDK_KEY_Thai_ru :: 3524
		GDK_KEY_Thai_saraa :: 3536
		GDK_KEY_Thai_saraaa :: 3538
		GDK_KEY_Thai_saraae :: 3553
		GDK_KEY_Thai_saraaimaimalai :: 3556
		GDK_KEY_Thai_saraaimaimuan :: 3555
		GDK_KEY_Thai_saraam :: 3539
		GDK_KEY_Thai_sarae :: 3552
		GDK_KEY_Thai_sarai :: 3540
		GDK_KEY_Thai_saraii :: 3541
		GDK_KEY_Thai_sarao :: 3554
		GDK_KEY_Thai_sarau :: 3544
		GDK_KEY_Thai_saraue :: 3542
		GDK_KEY_Thai_sarauee :: 3543
		GDK_KEY_Thai_sarauu :: 3545
		GDK_KEY_Thai_sorusi :: 3529
		GDK_KEY_Thai_sosala :: 3528
		GDK_KEY_Thai_soso :: 3499
		GDK_KEY_Thai_sosua :: 3530
		GDK_KEY_Thai_thanthakhat :: 3564
		GDK_KEY_Thai_thonangmontho :: 3505
		GDK_KEY_Thai_thophuthao :: 3506
		GDK_KEY_Thai_thothahan :: 3511
		GDK_KEY_Thai_thothan :: 3504
		GDK_KEY_Thai_thothong :: 3512
		GDK_KEY_Thai_thothung :: 3510
		GDK_KEY_Thai_topatak :: 3503
		GDK_KEY_Thai_totao :: 3509
		GDK_KEY_Thai_wowaen :: 3527
		GDK_KEY_Thai_yoyak :: 3522
		GDK_KEY_Thai_yoying :: 3501
		GDK_KEY_Thorn :: 222
		GDK_KEY_Time :: 269025183
		GDK_KEY_ToDoList :: 269025055
		GDK_KEY_Tools :: 269025153
		GDK_KEY_TopMenu :: 269025186
		GDK_KEY_TouchpadOff :: 269025201
		GDK_KEY_TouchpadOn :: 269025200
		GDK_KEY_TouchpadToggle :: 269025193
		GDK_KEY_Touroku :: 65323
		GDK_KEY_Travel :: 269025154
		GDK_KEY_Tslash :: 940
		GDK_KEY_U :: 85
		GDK_KEY_UWB :: 269025174
		GDK_KEY_Uacute :: 218
		GDK_KEY_Ubelowdot :: 16785124
		GDK_KEY_Ubreve :: 733
		GDK_KEY_Ucircumflex :: 219
		GDK_KEY_Udiaeresis :: 220
		GDK_KEY_Udoubleacute :: 475
		GDK_KEY_Ugrave :: 217
		GDK_KEY_Uhook :: 16785126
		GDK_KEY_Uhorn :: 16777647
		GDK_KEY_Uhornacute :: 16785128
		GDK_KEY_Uhornbelowdot :: 16785136
		GDK_KEY_Uhorngrave :: 16785130
		GDK_KEY_Uhornhook :: 16785132
		GDK_KEY_Uhorntilde :: 16785134
		GDK_KEY_Ukrainian_GHE_WITH_UPTURN :: 1725
		GDK_KEY_Ukrainian_I :: 1718
		GDK_KEY_Ukrainian_IE :: 1716
		GDK_KEY_Ukrainian_YI :: 1719
		GDK_KEY_Ukrainian_ghe_with_upturn :: 1709
		GDK_KEY_Ukrainian_i :: 1702
		GDK_KEY_Ukrainian_ie :: 1700
		GDK_KEY_Ukrainian_yi :: 1703
		GDK_KEY_Ukranian_I :: 1718
		GDK_KEY_Ukranian_JE :: 1716
		GDK_KEY_Ukranian_YI :: 1719
		GDK_KEY_Ukranian_i :: 1702
		GDK_KEY_Ukranian_je :: 1700
		GDK_KEY_Ukranian_yi :: 1703
		GDK_KEY_Umacron :: 990
		GDK_KEY_Undo :: 65381
		GDK_KEY_Ungrab :: 269024800
		GDK_KEY_Uogonek :: 985
		GDK_KEY_Up :: 65362
		GDK_KEY_Uring :: 473
		GDK_KEY_User1KB :: 269025157
		GDK_KEY_User2KB :: 269025158
		GDK_KEY_UserPB :: 269025156
		GDK_KEY_Utilde :: 989
		GDK_KEY_V :: 86
		GDK_KEY_VendorHome :: 269025076
		GDK_KEY_Video :: 269025159
		GDK_KEY_View :: 269025185
		GDK_KEY_VoidSymbol :: 16777215
		GDK_KEY_W :: 87
		GDK_KEY_WLAN :: 269025173
		GDK_KEY_WWAN :: 269025204
		GDK_KEY_WWW :: 269025070
		GDK_KEY_Wacute :: 16785026
		GDK_KEY_WakeUp :: 269025067
		GDK_KEY_Wcircumflex :: 16777588
		GDK_KEY_Wdiaeresis :: 16785028
		GDK_KEY_WebCam :: 269025167
		GDK_KEY_Wgrave :: 16785024
		GDK_KEY_WheelButton :: 269025160
		GDK_KEY_WindowClear :: 269025109
		GDK_KEY_WonSign :: 16785577
		GDK_KEY_Word :: 269025161
		GDK_KEY_X :: 88
		GDK_KEY_Xabovedot :: 16785034
		GDK_KEY_Xfer :: 269025162
		GDK_KEY_Y :: 89
		GDK_KEY_Yacute :: 221
		GDK_KEY_Ybelowdot :: 16785140
		GDK_KEY_Ycircumflex :: 16777590
		GDK_KEY_Ydiaeresis :: 5054
		GDK_KEY_Yellow :: 269025189
		GDK_KEY_Ygrave :: 16785138
		GDK_KEY_Yhook :: 16785142
		GDK_KEY_Ytilde :: 16785144
		GDK_KEY_Z :: 90
		GDK_KEY_Zabovedot :: 431
		GDK_KEY_Zacute :: 428
		GDK_KEY_Zcaron :: 430
		GDK_KEY_Zen_Koho :: 65341
		GDK_KEY_Zenkaku :: 65320
		GDK_KEY_Zenkaku_Hankaku :: 65322
		GDK_KEY_ZoomIn :: 269025163
		GDK_KEY_ZoomOut :: 269025164
		GDK_KEY_Zstroke :: 16777653
		GDK_KEY_a :: 97
		GDK_KEY_aacute :: 225
		GDK_KEY_abelowdot :: 16785057
		GDK_KEY_abovedot :: 511
		GDK_KEY_abreve :: 483
		GDK_KEY_abreveacute :: 16785071
		GDK_KEY_abrevebelowdot :: 16785079
		GDK_KEY_abrevegrave :: 16785073
		GDK_KEY_abrevehook :: 16785075
		GDK_KEY_abrevetilde :: 16785077
		GDK_KEY_acircumflex :: 226
		GDK_KEY_acircumflexacute :: 16785061
		GDK_KEY_acircumflexbelowdot :: 16785069
		GDK_KEY_acircumflexgrave :: 16785063
		GDK_KEY_acircumflexhook :: 16785065
		GDK_KEY_acircumflextilde :: 16785067
		GDK_KEY_acute :: 180
		GDK_KEY_adiaeresis :: 228
		GDK_KEY_ae :: 230
		GDK_KEY_agrave :: 224
		GDK_KEY_ahook :: 16785059
		GDK_KEY_amacron :: 992
		GDK_KEY_ampersand :: 38
		GDK_KEY_aogonek :: 433
		GDK_KEY_apostrophe :: 39
		GDK_KEY_approxeq :: 16785992
		GDK_KEY_approximate :: 2248
		GDK_KEY_aring :: 229
		GDK_KEY_asciicircum :: 94
		GDK_KEY_asciitilde :: 126
		GDK_KEY_asterisk :: 42
		GDK_KEY_at :: 64
		GDK_KEY_atilde :: 227
		GDK_KEY_b :: 98
		GDK_KEY_babovedot :: 16784899
		GDK_KEY_backslash :: 92
		GDK_KEY_ballotcross :: 2804
		GDK_KEY_bar :: 124
		GDK_KEY_because :: 16785973
		GDK_KEY_blank :: 2527
		GDK_KEY_botintegral :: 2213
		GDK_KEY_botleftparens :: 2220
		GDK_KEY_botleftsqbracket :: 2216
		GDK_KEY_botleftsummation :: 2226
		GDK_KEY_botrightparens :: 2222
		GDK_KEY_botrightsqbracket :: 2218
		GDK_KEY_botrightsummation :: 2230
		GDK_KEY_bott :: 2550
		GDK_KEY_botvertsummationconnector :: 2228
		GDK_KEY_braceleft :: 123
		GDK_KEY_braceright :: 125
		GDK_KEY_bracketleft :: 91
		GDK_KEY_bracketright :: 93
		GDK_KEY_braille_blank :: 16787456
		GDK_KEY_braille_dot_1 :: 65521
		GDK_KEY_braille_dot_10 :: 65530
		GDK_KEY_braille_dot_2 :: 65522
		GDK_KEY_braille_dot_3 :: 65523
		GDK_KEY_braille_dot_4 :: 65524
		GDK_KEY_braille_dot_5 :: 65525
		GDK_KEY_braille_dot_6 :: 65526
		GDK_KEY_braille_dot_7 :: 65527
		GDK_KEY_braille_dot_8 :: 65528
		GDK_KEY_braille_dot_9 :: 65529
		GDK_KEY_braille_dots_1 :: 16787457
		GDK_KEY_braille_dots_12 :: 16787459
		GDK_KEY_braille_dots_123 :: 16787463
		GDK_KEY_braille_dots_1234 :: 16787471
		GDK_KEY_braille_dots_12345 :: 16787487
		GDK_KEY_braille_dots_123456 :: 16787519
		GDK_KEY_braille_dots_1234567 :: 16787583
		GDK_KEY_braille_dots_12345678 :: 16787711
		GDK_KEY_braille_dots_1234568 :: 16787647
		GDK_KEY_braille_dots_123457 :: 16787551
		GDK_KEY_braille_dots_1234578 :: 16787679
		GDK_KEY_braille_dots_123458 :: 16787615
		GDK_KEY_braille_dots_12346 :: 16787503
		GDK_KEY_braille_dots_123467 :: 16787567
		GDK_KEY_braille_dots_1234678 :: 16787695
		GDK_KEY_braille_dots_123468 :: 16787631
		GDK_KEY_braille_dots_12347 :: 16787535
		GDK_KEY_braille_dots_123478 :: 16787663
		GDK_KEY_braille_dots_12348 :: 16787599
		GDK_KEY_braille_dots_1235 :: 16787479
		GDK_KEY_braille_dots_12356 :: 16787511
		GDK_KEY_braille_dots_123567 :: 16787575
		GDK_KEY_braille_dots_1235678 :: 16787703
		GDK_KEY_braille_dots_123568 :: 16787639
		GDK_KEY_braille_dots_12357 :: 16787543
		GDK_KEY_braille_dots_123578 :: 16787671
		GDK_KEY_braille_dots_12358 :: 16787607
		GDK_KEY_braille_dots_1236 :: 16787495
		GDK_KEY_braille_dots_12367 :: 16787559
		GDK_KEY_braille_dots_123678 :: 16787687
		GDK_KEY_braille_dots_12368 :: 16787623
		GDK_KEY_braille_dots_1237 :: 16787527
		GDK_KEY_braille_dots_12378 :: 16787655
		GDK_KEY_braille_dots_1238 :: 16787591
		GDK_KEY_braille_dots_124 :: 16787467
		GDK_KEY_braille_dots_1245 :: 16787483
		GDK_KEY_braille_dots_12456 :: 16787515
		GDK_KEY_braille_dots_124567 :: 16787579
		GDK_KEY_braille_dots_1245678 :: 16787707
		GDK_KEY_braille_dots_124568 :: 16787643
		GDK_KEY_braille_dots_12457 :: 16787547
		GDK_KEY_braille_dots_124578 :: 16787675
		GDK_KEY_braille_dots_12458 :: 16787611
		GDK_KEY_braille_dots_1246 :: 16787499
		GDK_KEY_braille_dots_12467 :: 16787563
		GDK_KEY_braille_dots_124678 :: 16787691
		GDK_KEY_braille_dots_12468 :: 16787627
		GDK_KEY_braille_dots_1247 :: 16787531
		GDK_KEY_braille_dots_12478 :: 16787659
		GDK_KEY_braille_dots_1248 :: 16787595
		GDK_KEY_braille_dots_125 :: 16787475
		GDK_KEY_braille_dots_1256 :: 16787507
		GDK_KEY_braille_dots_12567 :: 16787571
		GDK_KEY_braille_dots_125678 :: 16787699
		GDK_KEY_braille_dots_12568 :: 16787635
		GDK_KEY_braille_dots_1257 :: 16787539
		GDK_KEY_braille_dots_12578 :: 16787667
		GDK_KEY_braille_dots_1258 :: 16787603
		GDK_KEY_braille_dots_126 :: 16787491
		GDK_KEY_braille_dots_1267 :: 16787555
		GDK_KEY_braille_dots_12678 :: 16787683
		GDK_KEY_braille_dots_1268 :: 16787619
		GDK_KEY_braille_dots_127 :: 16787523
		GDK_KEY_braille_dots_1278 :: 16787651
		GDK_KEY_braille_dots_128 :: 16787587
		GDK_KEY_braille_dots_13 :: 16787461
		GDK_KEY_braille_dots_134 :: 16787469
		GDK_KEY_braille_dots_1345 :: 16787485
		GDK_KEY_braille_dots_13456 :: 16787517
		GDK_KEY_braille_dots_134567 :: 16787581
		GDK_KEY_braille_dots_1345678 :: 16787709
		GDK_KEY_braille_dots_134568 :: 16787645
		GDK_KEY_braille_dots_13457 :: 16787549
		GDK_KEY_braille_dots_134578 :: 16787677
		GDK_KEY_braille_dots_13458 :: 16787613
		GDK_KEY_braille_dots_1346 :: 16787501
		GDK_KEY_braille_dots_13467 :: 16787565
		GDK_KEY_braille_dots_134678 :: 16787693
		GDK_KEY_braille_dots_13468 :: 16787629
		GDK_KEY_braille_dots_1347 :: 16787533
		GDK_KEY_braille_dots_13478 :: 16787661
		GDK_KEY_braille_dots_1348 :: 16787597
		GDK_KEY_braille_dots_135 :: 16787477
		GDK_KEY_braille_dots_1356 :: 16787509
		GDK_KEY_braille_dots_13567 :: 16787573
		GDK_KEY_braille_dots_135678 :: 16787701
		GDK_KEY_braille_dots_13568 :: 16787637
		GDK_KEY_braille_dots_1357 :: 16787541
		GDK_KEY_braille_dots_13578 :: 16787669
		GDK_KEY_braille_dots_1358 :: 16787605
		GDK_KEY_braille_dots_136 :: 16787493
		GDK_KEY_braille_dots_1367 :: 16787557
		GDK_KEY_braille_dots_13678 :: 16787685
		GDK_KEY_braille_dots_1368 :: 16787621
		GDK_KEY_braille_dots_137 :: 16787525
		GDK_KEY_braille_dots_1378 :: 16787653
		GDK_KEY_braille_dots_138 :: 16787589
		GDK_KEY_braille_dots_14 :: 16787465
		GDK_KEY_braille_dots_145 :: 16787481
		GDK_KEY_braille_dots_1456 :: 16787513
		GDK_KEY_braille_dots_14567 :: 16787577
		GDK_KEY_braille_dots_145678 :: 16787705
		GDK_KEY_braille_dots_14568 :: 16787641
		GDK_KEY_braille_dots_1457 :: 16787545
		GDK_KEY_braille_dots_14578 :: 16787673
		GDK_KEY_braille_dots_1458 :: 16787609
		GDK_KEY_braille_dots_146 :: 16787497
		GDK_KEY_braille_dots_1467 :: 16787561
		GDK_KEY_braille_dots_14678 :: 16787689
		GDK_KEY_braille_dots_1468 :: 16787625
		GDK_KEY_braille_dots_147 :: 16787529
		GDK_KEY_braille_dots_1478 :: 16787657
		GDK_KEY_braille_dots_148 :: 16787593
		GDK_KEY_braille_dots_15 :: 16787473
		GDK_KEY_braille_dots_156 :: 16787505
		GDK_KEY_braille_dots_1567 :: 16787569
		GDK_KEY_braille_dots_15678 :: 16787697
		GDK_KEY_braille_dots_1568 :: 16787633
		GDK_KEY_braille_dots_157 :: 16787537
		GDK_KEY_braille_dots_1578 :: 16787665
		GDK_KEY_braille_dots_158 :: 16787601
		GDK_KEY_braille_dots_16 :: 16787489
		GDK_KEY_braille_dots_167 :: 16787553
		GDK_KEY_braille_dots_1678 :: 16787681
		GDK_KEY_braille_dots_168 :: 16787617
		GDK_KEY_braille_dots_17 :: 16787521
		GDK_KEY_braille_dots_178 :: 16787649
		GDK_KEY_braille_dots_18 :: 16787585
		GDK_KEY_braille_dots_2 :: 16787458
		GDK_KEY_braille_dots_23 :: 16787462
		GDK_KEY_braille_dots_234 :: 16787470
		GDK_KEY_braille_dots_2345 :: 16787486
		GDK_KEY_braille_dots_23456 :: 16787518
		GDK_KEY_braille_dots_234567 :: 16787582
		GDK_KEY_braille_dots_2345678 :: 16787710
		GDK_KEY_braille_dots_234568 :: 16787646
		GDK_KEY_braille_dots_23457 :: 16787550
		GDK_KEY_braille_dots_234578 :: 16787678
		GDK_KEY_braille_dots_23458 :: 16787614
		GDK_KEY_braille_dots_2346 :: 16787502
		GDK_KEY_braille_dots_23467 :: 16787566
		GDK_KEY_braille_dots_234678 :: 16787694
		GDK_KEY_braille_dots_23468 :: 16787630
		GDK_KEY_braille_dots_2347 :: 16787534
		GDK_KEY_braille_dots_23478 :: 16787662
		GDK_KEY_braille_dots_2348 :: 16787598
		GDK_KEY_braille_dots_235 :: 16787478
		GDK_KEY_braille_dots_2356 :: 16787510
		GDK_KEY_braille_dots_23567 :: 16787574
		GDK_KEY_braille_dots_235678 :: 16787702
		GDK_KEY_braille_dots_23568 :: 16787638
		GDK_KEY_braille_dots_2357 :: 16787542
		GDK_KEY_braille_dots_23578 :: 16787670
		GDK_KEY_braille_dots_2358 :: 16787606
		GDK_KEY_braille_dots_236 :: 16787494
		GDK_KEY_braille_dots_2367 :: 16787558
		GDK_KEY_braille_dots_23678 :: 16787686
		GDK_KEY_braille_dots_2368 :: 16787622
		GDK_KEY_braille_dots_237 :: 16787526
		GDK_KEY_braille_dots_2378 :: 16787654
		GDK_KEY_braille_dots_238 :: 16787590
		GDK_KEY_braille_dots_24 :: 16787466
		GDK_KEY_braille_dots_245 :: 16787482
		GDK_KEY_braille_dots_2456 :: 16787514
		GDK_KEY_braille_dots_24567 :: 16787578
		GDK_KEY_braille_dots_245678 :: 16787706
		GDK_KEY_braille_dots_24568 :: 16787642
		GDK_KEY_braille_dots_2457 :: 16787546
		GDK_KEY_braille_dots_24578 :: 16787674
		GDK_KEY_braille_dots_2458 :: 16787610
		GDK_KEY_braille_dots_246 :: 16787498
		GDK_KEY_braille_dots_2467 :: 16787562
		GDK_KEY_braille_dots_24678 :: 16787690
		GDK_KEY_braille_dots_2468 :: 16787626
		GDK_KEY_braille_dots_247 :: 16787530
		GDK_KEY_braille_dots_2478 :: 16787658
		GDK_KEY_braille_dots_248 :: 16787594
		GDK_KEY_braille_dots_25 :: 16787474
		GDK_KEY_braille_dots_256 :: 16787506
		GDK_KEY_braille_dots_2567 :: 16787570
		GDK_KEY_braille_dots_25678 :: 16787698
		GDK_KEY_braille_dots_2568 :: 16787634
		GDK_KEY_braille_dots_257 :: 16787538
		GDK_KEY_braille_dots_2578 :: 16787666
		GDK_KEY_braille_dots_258 :: 16787602
		GDK_KEY_braille_dots_26 :: 16787490
		GDK_KEY_braille_dots_267 :: 16787554
		GDK_KEY_braille_dots_2678 :: 16787682
		GDK_KEY_braille_dots_268 :: 16787618
		GDK_KEY_braille_dots_27 :: 16787522
		GDK_KEY_braille_dots_278 :: 16787650
		GDK_KEY_braille_dots_28 :: 16787586
		GDK_KEY_braille_dots_3 :: 16787460
		GDK_KEY_braille_dots_34 :: 16787468
		GDK_KEY_braille_dots_345 :: 16787484
		GDK_KEY_braille_dots_3456 :: 16787516
		GDK_KEY_braille_dots_34567 :: 16787580
		GDK_KEY_braille_dots_345678 :: 16787708
		GDK_KEY_braille_dots_34568 :: 16787644
		GDK_KEY_braille_dots_3457 :: 16787548
		GDK_KEY_braille_dots_34578 :: 16787676
		GDK_KEY_braille_dots_3458 :: 16787612
		GDK_KEY_braille_dots_346 :: 16787500
		GDK_KEY_braille_dots_3467 :: 16787564
		GDK_KEY_braille_dots_34678 :: 16787692
		GDK_KEY_braille_dots_3468 :: 16787628
		GDK_KEY_braille_dots_347 :: 16787532
		GDK_KEY_braille_dots_3478 :: 16787660
		GDK_KEY_braille_dots_348 :: 16787596
		GDK_KEY_braille_dots_35 :: 16787476
		GDK_KEY_braille_dots_356 :: 16787508
		GDK_KEY_braille_dots_3567 :: 16787572
		GDK_KEY_braille_dots_35678 :: 16787700
		GDK_KEY_braille_dots_3568 :: 16787636
		GDK_KEY_braille_dots_357 :: 16787540
		GDK_KEY_braille_dots_3578 :: 16787668
		GDK_KEY_braille_dots_358 :: 16787604
		GDK_KEY_braille_dots_36 :: 16787492
		GDK_KEY_braille_dots_367 :: 16787556
		GDK_KEY_braille_dots_3678 :: 16787684
		GDK_KEY_braille_dots_368 :: 16787620
		GDK_KEY_braille_dots_37 :: 16787524
		GDK_KEY_braille_dots_378 :: 16787652
		GDK_KEY_braille_dots_38 :: 16787588
		GDK_KEY_braille_dots_4 :: 16787464
		GDK_KEY_braille_dots_45 :: 16787480
		GDK_KEY_braille_dots_456 :: 16787512
		GDK_KEY_braille_dots_4567 :: 16787576
		GDK_KEY_braille_dots_45678 :: 16787704
		GDK_KEY_braille_dots_4568 :: 16787640
		GDK_KEY_braille_dots_457 :: 16787544
		GDK_KEY_braille_dots_4578 :: 16787672
		GDK_KEY_braille_dots_458 :: 16787608
		GDK_KEY_braille_dots_46 :: 16787496
		GDK_KEY_braille_dots_467 :: 16787560
		GDK_KEY_braille_dots_4678 :: 16787688
		GDK_KEY_braille_dots_468 :: 16787624
		GDK_KEY_braille_dots_47 :: 16787528
		GDK_KEY_braille_dots_478 :: 16787656
		GDK_KEY_braille_dots_48 :: 16787592
		GDK_KEY_braille_dots_5 :: 16787472
		GDK_KEY_braille_dots_56 :: 16787504
		GDK_KEY_braille_dots_567 :: 16787568
		GDK_KEY_braille_dots_5678 :: 16787696
		GDK_KEY_braille_dots_568 :: 16787632
		GDK_KEY_braille_dots_57 :: 16787536
		GDK_KEY_braille_dots_578 :: 16787664
		GDK_KEY_braille_dots_58 :: 16787600
		GDK_KEY_braille_dots_6 :: 16787488
		GDK_KEY_braille_dots_67 :: 16787552
		GDK_KEY_braille_dots_678 :: 16787680
		GDK_KEY_braille_dots_68 :: 16787616
		GDK_KEY_braille_dots_7 :: 16787520
		GDK_KEY_braille_dots_78 :: 16787648
		GDK_KEY_braille_dots_8 :: 16787584
		GDK_KEY_breve :: 418
		GDK_KEY_brokenbar :: 166
		GDK_KEY_c :: 99
		GDK_KEY_c_h :: 65187
		GDK_KEY_cabovedot :: 741
		GDK_KEY_cacute :: 486
		GDK_KEY_careof :: 2744
		GDK_KEY_caret :: 2812
		GDK_KEY_caron :: 439
		GDK_KEY_ccaron :: 488
		GDK_KEY_ccedilla :: 231
		GDK_KEY_ccircumflex :: 742
		GDK_KEY_cedilla :: 184
		GDK_KEY_cent :: 162
		GDK_KEY_ch :: 65184
		GDK_KEY_checkerboard :: 2529
		GDK_KEY_checkmark :: 2803
		GDK_KEY_circle :: 3023
		GDK_KEY_club :: 2796
		GDK_KEY_colon :: 58
		GDK_KEY_comma :: 44
		GDK_KEY_containsas :: 16785931
		GDK_KEY_copyright :: 169
		GDK_KEY_cr :: 2532
		GDK_KEY_crossinglines :: 2542
		GDK_KEY_cuberoot :: 16785947
		GDK_KEY_currency :: 164
		GDK_KEY_cursor :: 2815
		GDK_KEY_d :: 100
		GDK_KEY_dabovedot :: 16784907
		GDK_KEY_dagger :: 2801
		GDK_KEY_dcaron :: 495
		GDK_KEY_dead_A :: 65153
		GDK_KEY_dead_E :: 65155
		GDK_KEY_dead_I :: 65157
		GDK_KEY_dead_O :: 65159
		GDK_KEY_dead_U :: 65161
		GDK_KEY_dead_a :: 65152
		GDK_KEY_dead_abovecomma :: 65124
		GDK_KEY_dead_abovedot :: 65110
		GDK_KEY_dead_abovereversedcomma :: 65125
		GDK_KEY_dead_abovering :: 65112
		GDK_KEY_dead_aboveverticalline :: 65169
		GDK_KEY_dead_acute :: 65105
		GDK_KEY_dead_belowbreve :: 65131
		GDK_KEY_dead_belowcircumflex :: 65129
		GDK_KEY_dead_belowcomma :: 65134
		GDK_KEY_dead_belowdiaeresis :: 65132
		GDK_KEY_dead_belowdot :: 65120
		GDK_KEY_dead_belowmacron :: 65128
		GDK_KEY_dead_belowring :: 65127
		GDK_KEY_dead_belowtilde :: 65130
		GDK_KEY_dead_belowverticalline :: 65170
		GDK_KEY_dead_breve :: 65109
		GDK_KEY_dead_capital_schwa :: 65163
		GDK_KEY_dead_caron :: 65114
		GDK_KEY_dead_cedilla :: 65115
		GDK_KEY_dead_circumflex :: 65106
		GDK_KEY_dead_currency :: 65135
		GDK_KEY_dead_dasia :: 65125
		GDK_KEY_dead_diaeresis :: 65111
		GDK_KEY_dead_doubleacute :: 65113
		GDK_KEY_dead_doublegrave :: 65126
		GDK_KEY_dead_e :: 65154
		GDK_KEY_dead_grave :: 65104
		GDK_KEY_dead_greek :: 65164
		GDK_KEY_dead_hook :: 65121
		GDK_KEY_dead_horn :: 65122
		GDK_KEY_dead_i :: 65156
		GDK_KEY_dead_invertedbreve :: 65133
		GDK_KEY_dead_iota :: 65117
		GDK_KEY_dead_longsolidusoverlay :: 65171
		GDK_KEY_dead_lowline :: 65168
		GDK_KEY_dead_macron :: 65108
		GDK_KEY_dead_o :: 65158
		GDK_KEY_dead_ogonek :: 65116
		GDK_KEY_dead_perispomeni :: 65107
		GDK_KEY_dead_psili :: 65124
		GDK_KEY_dead_semivoiced_sound :: 65119
		GDK_KEY_dead_small_schwa :: 65162
		GDK_KEY_dead_stroke :: 65123
		GDK_KEY_dead_tilde :: 65107
		GDK_KEY_dead_u :: 65160
		GDK_KEY_dead_voiced_sound :: 65118
		GDK_KEY_decimalpoint :: 2749
		GDK_KEY_degree :: 176
		GDK_KEY_diaeresis :: 168
		GDK_KEY_diamond :: 2797
		GDK_KEY_digitspace :: 2725
		GDK_KEY_dintegral :: 16785964
		GDK_KEY_division :: 247
		GDK_KEY_dollar :: 36
		GDK_KEY_doubbaselinedot :: 2735
		GDK_KEY_doubleacute :: 445
		GDK_KEY_doubledagger :: 2802
		GDK_KEY_doublelowquotemark :: 2814
		GDK_KEY_downarrow :: 2302
		GDK_KEY_downcaret :: 2984
		GDK_KEY_downshoe :: 3030
		GDK_KEY_downstile :: 3012
		GDK_KEY_downtack :: 3010
		GDK_KEY_dstroke :: 496
		GDK_KEY_e :: 101
		GDK_KEY_eabovedot :: 1004
		GDK_KEY_eacute :: 233
		GDK_KEY_ebelowdot :: 16785081
		GDK_KEY_ecaron :: 492
		GDK_KEY_ecircumflex :: 234
		GDK_KEY_ecircumflexacute :: 16785087
		GDK_KEY_ecircumflexbelowdot :: 16785095
		GDK_KEY_ecircumflexgrave :: 16785089
		GDK_KEY_ecircumflexhook :: 16785091
		GDK_KEY_ecircumflextilde :: 16785093
		GDK_KEY_ediaeresis :: 235
		GDK_KEY_egrave :: 232
		GDK_KEY_ehook :: 16785083
		GDK_KEY_eightsubscript :: 16785544
		GDK_KEY_eightsuperior :: 16785528
		GDK_KEY_elementof :: 16785928
		GDK_KEY_ellipsis :: 2734
		GDK_KEY_em3space :: 2723
		GDK_KEY_em4space :: 2724
		GDK_KEY_emacron :: 954
		GDK_KEY_emdash :: 2729
		GDK_KEY_emfilledcircle :: 2782
		GDK_KEY_emfilledrect :: 2783
		GDK_KEY_emopencircle :: 2766
		GDK_KEY_emopenrectangle :: 2767
		GDK_KEY_emptyset :: 16785925
		GDK_KEY_emspace :: 2721
		GDK_KEY_endash :: 2730
		GDK_KEY_enfilledcircbullet :: 2790
		GDK_KEY_enfilledsqbullet :: 2791
		GDK_KEY_eng :: 959
		GDK_KEY_enopencircbullet :: 2784
		GDK_KEY_enopensquarebullet :: 2785
		GDK_KEY_enspace :: 2722
		GDK_KEY_eogonek :: 490
		GDK_KEY_equal :: 61
		GDK_KEY_eth :: 240
		GDK_KEY_etilde :: 16785085
		GDK_KEY_exclam :: 33
		GDK_KEY_exclamdown :: 161
		GDK_KEY_ezh :: 16777874
		GDK_KEY_f :: 102
		GDK_KEY_fabovedot :: 16784927
		GDK_KEY_femalesymbol :: 2808
		GDK_KEY_ff :: 2531
		GDK_KEY_figdash :: 2747
		GDK_KEY_filledlefttribullet :: 2780
		GDK_KEY_filledrectbullet :: 2779
		GDK_KEY_filledrighttribullet :: 2781
		GDK_KEY_filledtribulletdown :: 2793
		GDK_KEY_filledtribulletup :: 2792
		GDK_KEY_fiveeighths :: 2757
		GDK_KEY_fivesixths :: 2743
		GDK_KEY_fivesubscript :: 16785541
		GDK_KEY_fivesuperior :: 16785525
		GDK_KEY_fourfifths :: 2741
		GDK_KEY_foursubscript :: 16785540
		GDK_KEY_foursuperior :: 16785524
		GDK_KEY_fourthroot :: 16785948
		GDK_KEY_function :: 2294
		GDK_KEY_g :: 103
		GDK_KEY_gabovedot :: 757
		GDK_KEY_gbreve :: 699
		GDK_KEY_gcaron :: 16777703
		GDK_KEY_gcedilla :: 955
		GDK_KEY_gcircumflex :: 760
		GDK_KEY_grave :: 96
		GDK_KEY_greater :: 62
		GDK_KEY_greaterthanequal :: 2238
		GDK_KEY_guillemotleft :: 171
		GDK_KEY_guillemotright :: 187
		GDK_KEY_h :: 104
		GDK_KEY_hairspace :: 2728
		GDK_KEY_hcircumflex :: 694
		GDK_KEY_heart :: 2798
		GDK_KEY_hebrew_aleph :: 3296
		GDK_KEY_hebrew_ayin :: 3314
		GDK_KEY_hebrew_bet :: 3297
		GDK_KEY_hebrew_beth :: 3297
		GDK_KEY_hebrew_chet :: 3303
		GDK_KEY_hebrew_dalet :: 3299
		GDK_KEY_hebrew_daleth :: 3299
		GDK_KEY_hebrew_doublelowline :: 3295
		GDK_KEY_hebrew_finalkaph :: 3306
		GDK_KEY_hebrew_finalmem :: 3309
		GDK_KEY_hebrew_finalnun :: 3311
		GDK_KEY_hebrew_finalpe :: 3315
		GDK_KEY_hebrew_finalzade :: 3317
		GDK_KEY_hebrew_finalzadi :: 3317
		GDK_KEY_hebrew_gimel :: 3298
		GDK_KEY_hebrew_gimmel :: 3298
		GDK_KEY_hebrew_he :: 3300
		GDK_KEY_hebrew_het :: 3303
		GDK_KEY_hebrew_kaph :: 3307
		GDK_KEY_hebrew_kuf :: 3319
		GDK_KEY_hebrew_lamed :: 3308
		GDK_KEY_hebrew_mem :: 3310
		GDK_KEY_hebrew_nun :: 3312
		GDK_KEY_hebrew_pe :: 3316
		GDK_KEY_hebrew_qoph :: 3319
		GDK_KEY_hebrew_resh :: 3320
		GDK_KEY_hebrew_samech :: 3313
		GDK_KEY_hebrew_samekh :: 3313
		GDK_KEY_hebrew_shin :: 3321
		GDK_KEY_hebrew_taf :: 3322
		GDK_KEY_hebrew_taw :: 3322
		GDK_KEY_hebrew_tet :: 3304
		GDK_KEY_hebrew_teth :: 3304
		GDK_KEY_hebrew_waw :: 3301
		GDK_KEY_hebrew_yod :: 3305
		GDK_KEY_hebrew_zade :: 3318
		GDK_KEY_hebrew_zadi :: 3318
		GDK_KEY_hebrew_zain :: 3302
		GDK_KEY_hebrew_zayin :: 3302
		GDK_KEY_hexagram :: 2778
		GDK_KEY_horizconnector :: 2211
		GDK_KEY_horizlinescan1 :: 2543
		GDK_KEY_horizlinescan3 :: 2544
		GDK_KEY_horizlinescan5 :: 2545
		GDK_KEY_horizlinescan7 :: 2546
		GDK_KEY_horizlinescan9 :: 2547
		GDK_KEY_hstroke :: 689
		GDK_KEY_ht :: 2530
		GDK_KEY_hyphen :: 173
		GDK_KEY_i :: 105
		GDK_KEY_iTouch :: 269025120
		GDK_KEY_iacute :: 237
		GDK_KEY_ibelowdot :: 16785099
		GDK_KEY_ibreve :: 16777517
		GDK_KEY_icircumflex :: 238
		GDK_KEY_identical :: 2255
		GDK_KEY_idiaeresis :: 239
		GDK_KEY_idotless :: 697
		GDK_KEY_ifonlyif :: 2253
		GDK_KEY_igrave :: 236
		GDK_KEY_ihook :: 16785097
		GDK_KEY_imacron :: 1007
		GDK_KEY_implies :: 2254
		GDK_KEY_includedin :: 2266
		GDK_KEY_includes :: 2267
		GDK_KEY_infinity :: 2242
		GDK_KEY_integral :: 2239
		GDK_KEY_intersection :: 2268
		GDK_KEY_iogonek :: 999
		GDK_KEY_itilde :: 949
		GDK_KEY_j :: 106
		GDK_KEY_jcircumflex :: 700
		GDK_KEY_jot :: 3018
		GDK_KEY_k :: 107
		GDK_KEY_kana_A :: 1201
		GDK_KEY_kana_CHI :: 1217
		GDK_KEY_kana_E :: 1204
		GDK_KEY_kana_FU :: 1228
		GDK_KEY_kana_HA :: 1226
		GDK_KEY_kana_HE :: 1229
		GDK_KEY_kana_HI :: 1227
		GDK_KEY_kana_HO :: 1230
		GDK_KEY_kana_HU :: 1228
		GDK_KEY_kana_I :: 1202
		GDK_KEY_kana_KA :: 1206
		GDK_KEY_kana_KE :: 1209
		GDK_KEY_kana_KI :: 1207
		GDK_KEY_kana_KO :: 1210
		GDK_KEY_kana_KU :: 1208
		GDK_KEY_kana_MA :: 1231
		GDK_KEY_kana_ME :: 1234
		GDK_KEY_kana_MI :: 1232
		GDK_KEY_kana_MO :: 1235
		GDK_KEY_kana_MU :: 1233
		GDK_KEY_kana_N :: 1245
		GDK_KEY_kana_NA :: 1221
		GDK_KEY_kana_NE :: 1224
		GDK_KEY_kana_NI :: 1222
		GDK_KEY_kana_NO :: 1225
		GDK_KEY_kana_NU :: 1223
		GDK_KEY_kana_O :: 1205
		GDK_KEY_kana_RA :: 1239
		GDK_KEY_kana_RE :: 1242
		GDK_KEY_kana_RI :: 1240
		GDK_KEY_kana_RO :: 1243
		GDK_KEY_kana_RU :: 1241
		GDK_KEY_kana_SA :: 1211
		GDK_KEY_kana_SE :: 1214
		GDK_KEY_kana_SHI :: 1212
		GDK_KEY_kana_SO :: 1215
		GDK_KEY_kana_SU :: 1213
		GDK_KEY_kana_TA :: 1216
		GDK_KEY_kana_TE :: 1219
		GDK_KEY_kana_TI :: 1217
		GDK_KEY_kana_TO :: 1220
		GDK_KEY_kana_TSU :: 1218
		GDK_KEY_kana_TU :: 1218
		GDK_KEY_kana_U :: 1203
		GDK_KEY_kana_WA :: 1244
		GDK_KEY_kana_WO :: 1190
		GDK_KEY_kana_YA :: 1236
		GDK_KEY_kana_YO :: 1238
		GDK_KEY_kana_YU :: 1237
		GDK_KEY_kana_a :: 1191
		GDK_KEY_kana_closingbracket :: 1187
		GDK_KEY_kana_comma :: 1188
		GDK_KEY_kana_conjunctive :: 1189
		GDK_KEY_kana_e :: 1194
		GDK_KEY_kana_fullstop :: 1185
		GDK_KEY_kana_i :: 1192
		GDK_KEY_kana_middledot :: 1189
		GDK_KEY_kana_o :: 1195
		GDK_KEY_kana_openingbracket :: 1186
		GDK_KEY_kana_switch :: 65406
		GDK_KEY_kana_tsu :: 1199
		GDK_KEY_kana_tu :: 1199
		GDK_KEY_kana_u :: 1193
		GDK_KEY_kana_ya :: 1196
		GDK_KEY_kana_yo :: 1198
		GDK_KEY_kana_yu :: 1197
		GDK_KEY_kappa :: 930
		GDK_KEY_kcedilla :: 1011
		GDK_KEY_kra :: 930
		GDK_KEY_l :: 108
		GDK_KEY_lacute :: 485
		GDK_KEY_latincross :: 2777
		GDK_KEY_lbelowdot :: 16784951
		GDK_KEY_lcaron :: 437
		GDK_KEY_lcedilla :: 950
		GDK_KEY_leftanglebracket :: 2748
		GDK_KEY_leftarrow :: 2299
		GDK_KEY_leftcaret :: 2979
		GDK_KEY_leftdoublequotemark :: 2770
		GDK_KEY_leftmiddlecurlybrace :: 2223
		GDK_KEY_leftopentriangle :: 2764
		GDK_KEY_leftpointer :: 2794
		GDK_KEY_leftradical :: 2209
		GDK_KEY_leftshoe :: 3034
		GDK_KEY_leftsinglequotemark :: 2768
		GDK_KEY_leftt :: 2548
		GDK_KEY_lefttack :: 3036
		GDK_KEY_less :: 60
		GDK_KEY_lessthanequal :: 2236
		GDK_KEY_lf :: 2533
		GDK_KEY_logicaland :: 2270
		GDK_KEY_logicalor :: 2271
		GDK_KEY_lowleftcorner :: 2541
		GDK_KEY_lowrightcorner :: 2538
		GDK_KEY_lstroke :: 435
		GDK_KEY_m :: 109
		GDK_KEY_mabovedot :: 16784961
		GDK_KEY_macron :: 175
		GDK_KEY_malesymbol :: 2807
		GDK_KEY_maltesecross :: 2800
		GDK_KEY_marker :: 2751
		GDK_KEY_masculine :: 186
		GDK_KEY_minus :: 45
		GDK_KEY_minutes :: 2774
		GDK_KEY_mu :: 181
		GDK_KEY_multiply :: 215
		GDK_KEY_musicalflat :: 2806
		GDK_KEY_musicalsharp :: 2805
		GDK_KEY_n :: 110
		GDK_KEY_nabla :: 2245
		GDK_KEY_nacute :: 497
		GDK_KEY_ncaron :: 498
		GDK_KEY_ncedilla :: 1009
		GDK_KEY_ninesubscript :: 16785545
		GDK_KEY_ninesuperior :: 16785529
		GDK_KEY_nl :: 2536
		GDK_KEY_nobreakspace :: 160
		GDK_KEY_notapproxeq :: 16785991
		GDK_KEY_notelementof :: 16785929
		GDK_KEY_notequal :: 2237
		GDK_KEY_notidentical :: 16786018
		GDK_KEY_notsign :: 172
		GDK_KEY_ntilde :: 241
		GDK_KEY_numbersign :: 35
		GDK_KEY_numerosign :: 1712
		GDK_KEY_o :: 111
		GDK_KEY_oacute :: 243
		GDK_KEY_obarred :: 16777845
		GDK_KEY_obelowdot :: 16785101
		GDK_KEY_ocaron :: 16777682
		GDK_KEY_ocircumflex :: 244
		GDK_KEY_ocircumflexacute :: 16785105
		GDK_KEY_ocircumflexbelowdot :: 16785113
		GDK_KEY_ocircumflexgrave :: 16785107
		GDK_KEY_ocircumflexhook :: 16785109
		GDK_KEY_ocircumflextilde :: 16785111
		GDK_KEY_odiaeresis :: 246
		GDK_KEY_odoubleacute :: 501
		GDK_KEY_oe :: 5053
		GDK_KEY_ogonek :: 434
		GDK_KEY_ograve :: 242
		GDK_KEY_ohook :: 16785103
		GDK_KEY_ohorn :: 16777633
		GDK_KEY_ohornacute :: 16785115
		GDK_KEY_ohornbelowdot :: 16785123
		GDK_KEY_ohorngrave :: 16785117
		GDK_KEY_ohornhook :: 16785119
		GDK_KEY_ohorntilde :: 16785121
		GDK_KEY_omacron :: 1010
		GDK_KEY_oneeighth :: 2755
		GDK_KEY_onefifth :: 2738
		GDK_KEY_onehalf :: 189
		GDK_KEY_onequarter :: 188
		GDK_KEY_onesixth :: 2742
		GDK_KEY_onesubscript :: 16785537
		GDK_KEY_onesuperior :: 185
		GDK_KEY_onethird :: 2736
		GDK_KEY_ooblique :: 248
		GDK_KEY_openrectbullet :: 2786
		GDK_KEY_openstar :: 2789
		GDK_KEY_opentribulletdown :: 2788
		GDK_KEY_opentribulletup :: 2787
		GDK_KEY_ordfeminine :: 170
		GDK_KEY_oslash :: 248
		GDK_KEY_otilde :: 245
		GDK_KEY_overbar :: 3008
		GDK_KEY_overline :: 1150
		GDK_KEY_p :: 112
		GDK_KEY_pabovedot :: 16784983
		GDK_KEY_paragraph :: 182
		GDK_KEY_parenleft :: 40
		GDK_KEY_parenright :: 41
		GDK_KEY_partdifferential :: 16785922
		GDK_KEY_partialderivative :: 2287
		GDK_KEY_percent :: 37
		GDK_KEY_period :: 46
		GDK_KEY_periodcentered :: 183
		GDK_KEY_permille :: 2773
		GDK_KEY_phonographcopyright :: 2811
		GDK_KEY_plus :: 43
		GDK_KEY_plusminus :: 177
		GDK_KEY_prescription :: 2772
		GDK_KEY_prolongedsound :: 1200
		GDK_KEY_punctspace :: 2726
		GDK_KEY_q :: 113
		GDK_KEY_quad :: 3020
		GDK_KEY_question :: 63
		GDK_KEY_questiondown :: 191
		GDK_KEY_quotedbl :: 34
		GDK_KEY_quoteleft :: 96
		GDK_KEY_quoteright :: 39
		GDK_KEY_r :: 114
		GDK_KEY_racute :: 480
		GDK_KEY_radical :: 2262
		GDK_KEY_rcaron :: 504
		GDK_KEY_rcedilla :: 947
		GDK_KEY_registered :: 174
		GDK_KEY_rightanglebracket :: 2750
		GDK_KEY_rightarrow :: 2301
		GDK_KEY_rightcaret :: 2982
		GDK_KEY_rightdoublequotemark :: 2771
		GDK_KEY_rightmiddlecurlybrace :: 2224
		GDK_KEY_rightmiddlesummation :: 2231
		GDK_KEY_rightopentriangle :: 2765
		GDK_KEY_rightpointer :: 2795
		GDK_KEY_rightshoe :: 3032
		GDK_KEY_rightsinglequotemark :: 2769
		GDK_KEY_rightt :: 2549
		GDK_KEY_righttack :: 3068
		GDK_KEY_s :: 115
		GDK_KEY_sabovedot :: 16784993
		GDK_KEY_sacute :: 438
		GDK_KEY_scaron :: 441
		GDK_KEY_scedilla :: 442
		GDK_KEY_schwa :: 16777817
		GDK_KEY_scircumflex :: 766
		GDK_KEY_script_switch :: 65406
		GDK_KEY_seconds :: 2775
		GDK_KEY_section :: 167
		GDK_KEY_semicolon :: 59
		GDK_KEY_semivoicedsound :: 1247
		GDK_KEY_seveneighths :: 2758
		GDK_KEY_sevensubscript :: 16785543
		GDK_KEY_sevensuperior :: 16785527
		GDK_KEY_signaturemark :: 2762
		GDK_KEY_signifblank :: 2732
		GDK_KEY_similarequal :: 2249
		GDK_KEY_singlelowquotemark :: 2813
		GDK_KEY_sixsubscript :: 16785542
		GDK_KEY_sixsuperior :: 16785526
		GDK_KEY_slash :: 47
		GDK_KEY_soliddiamond :: 2528
		GDK_KEY_space :: 32
		GDK_KEY_squareroot :: 16785946
		GDK_KEY_ssharp :: 223
		GDK_KEY_sterling :: 163
		GDK_KEY_stricteq :: 16786019
		GDK_KEY_t :: 116
		GDK_KEY_tabovedot :: 16785003
		GDK_KEY_tcaron :: 443
		GDK_KEY_tcedilla :: 510
		GDK_KEY_telephone :: 2809
		GDK_KEY_telephonerecorder :: 2810
		GDK_KEY_therefore :: 2240
		GDK_KEY_thinspace :: 2727
		GDK_KEY_thorn :: 254
		GDK_KEY_threeeighths :: 2756
		GDK_KEY_threefifths :: 2740
		GDK_KEY_threequarters :: 190
		GDK_KEY_threesubscript :: 16785539
		GDK_KEY_threesuperior :: 179
		GDK_KEY_tintegral :: 16785965
		GDK_KEY_topintegral :: 2212
		GDK_KEY_topleftparens :: 2219
		GDK_KEY_topleftradical :: 2210
		GDK_KEY_topleftsqbracket :: 2215
		GDK_KEY_topleftsummation :: 2225
		GDK_KEY_toprightparens :: 2221
		GDK_KEY_toprightsqbracket :: 2217
		GDK_KEY_toprightsummation :: 2229
		GDK_KEY_topt :: 2551
		GDK_KEY_topvertsummationconnector :: 2227
		GDK_KEY_trademark :: 2761
		GDK_KEY_trademarkincircle :: 2763
		GDK_KEY_tslash :: 956
		GDK_KEY_twofifths :: 2739
		GDK_KEY_twosubscript :: 16785538
		GDK_KEY_twosuperior :: 178
		GDK_KEY_twothirds :: 2737
		GDK_KEY_u :: 117
		GDK_KEY_uacute :: 250
		GDK_KEY_ubelowdot :: 16785125
		GDK_KEY_ubreve :: 765
		GDK_KEY_ucircumflex :: 251
		GDK_KEY_udiaeresis :: 252
		GDK_KEY_udoubleacute :: 507
		GDK_KEY_ugrave :: 249
		GDK_KEY_uhook :: 16785127
		GDK_KEY_uhorn :: 16777648
		GDK_KEY_uhornacute :: 16785129
		GDK_KEY_uhornbelowdot :: 16785137
		GDK_KEY_uhorngrave :: 16785131
		GDK_KEY_uhornhook :: 16785133
		GDK_KEY_uhorntilde :: 16785135
		GDK_KEY_umacron :: 1022
		GDK_KEY_underbar :: 3014
		GDK_KEY_underscore :: 95
		GDK_KEY_union :: 2269
		GDK_KEY_uogonek :: 1017
		GDK_KEY_uparrow :: 2300
		GDK_KEY_upcaret :: 2985
		GDK_KEY_upleftcorner :: 2540
		GDK_KEY_uprightcorner :: 2539
		GDK_KEY_upshoe :: 3011
		GDK_KEY_upstile :: 3027
		GDK_KEY_uptack :: 3022
		GDK_KEY_uring :: 505
		GDK_KEY_utilde :: 1021
		GDK_KEY_v :: 118
		GDK_KEY_variation :: 2241
		GDK_KEY_vertbar :: 2552
		GDK_KEY_vertconnector :: 2214
		GDK_KEY_voicedsound :: 1246
		GDK_KEY_vt :: 2537
		GDK_KEY_w :: 119
		GDK_KEY_wacute :: 16785027
		GDK_KEY_wcircumflex :: 16777589
		GDK_KEY_wdiaeresis :: 16785029
		GDK_KEY_wgrave :: 16785025
		GDK_KEY_x :: 120
		GDK_KEY_xabovedot :: 16785035
		GDK_KEY_y :: 121
		GDK_KEY_yacute :: 253
		GDK_KEY_ybelowdot :: 16785141
		GDK_KEY_ycircumflex :: 16777591
		GDK_KEY_ydiaeresis :: 255
		GDK_KEY_yen :: 165
		GDK_KEY_ygrave :: 16785139
		GDK_KEY_yhook :: 16785143
		GDK_KEY_ytilde :: 16785145
		GDK_KEY_z :: 122
		GDK_KEY_zabovedot :: 447
		GDK_KEY_zacute :: 444
		GDK_KEY_zcaron :: 446
		GDK_KEY_zerosubscript :: 16785536
		GDK_KEY_zerosuperior :: 16785520
		GDK_KEY_zstroke :: 16777654
		GDK_MAX_TIMECOORD_AXES :: 128
		GDK_MODIFIER_MASK :: GdkModifierType{.SHIFT_MASK, .LOCK_MASK, .CONTROL_MASK, .MOD1_MASK, .MOD2_MASK, .MOD3_MASK, .MOD4_MASK, .MOD5_MASK, .BUTTON1_MASK, .BUTTON2_MASK, .BUTTON3_MASK, .BUTTON4_MASK, .BUTTON5_MASK, .SUPER_MASK, .HYPER_MASK, .META_MASK, .RELEASE_MASK}
		GDK_PARENT_RELATIVE :: 1
		GDK_PRIORITY_EVENTS :: 0
		GDK_PRIORITY_REDRAW :: 100 + 20
		GDK_SEAT_CAPABILITY_ALL :: GdkSeatCapabilities{.SEAT_CAPABILITY_POINTER, .SEAT_CAPABILITY_TOUCH, .SEAT_CAPABILITY_TABLET_STYLUS, .SEAT_CAPABILITY_KEYBOARD}
		GDK_SEAT_CAPABILITY_ALL_POINTING :: GdkSeatCapabilities{.SEAT_CAPABILITY_POINTER, .SEAT_CAPABILITY_TOUCH, .SEAT_CAPABILITY_TABLET_STYLUS}
		GDK_SEAT_CAPABILITY_NONE :: GdkSeatCapabilities{}
		INPUT_ERROR :: -1
		INPUT_HINT_NONE :: InputHints{}
		INTERFACE_AGE :: 32
		JUNCTION_BOTTOM :: JunctionSides{.JUNCTION_CORNER_BOTTOMLEFT, .JUNCTION_CORNER_BOTTOMRIGHT}
		JUNCTION_LEFT :: JunctionSides{.JUNCTION_CORNER_TOPLEFT, .JUNCTION_CORNER_BOTTOMLEFT}
		JUNCTION_NONE :: JunctionSides{}
		JUNCTION_RIGHT :: JunctionSides{.JUNCTION_CORNER_TOPRIGHT, .JUNCTION_CORNER_BOTTOMRIGHT}
		JUNCTION_TOP :: JunctionSides{.JUNCTION_CORNER_TOPLEFT, .JUNCTION_CORNER_TOPRIGHT}
		LEVEL_BAR_OFFSET_FULL :: "full"
		LEVEL_BAR_OFFSET_HIGH :: "high"
		LEVEL_BAR_OFFSET_LOW :: "low"
		MAJOR_VERSION :: 3
		MAX_COMPOSE_LEN :: 7
		MICRO_VERSION :: 41
		MINOR_VERSION :: 24
		PAPER_NAME_A3 :: "iso_a3"
		PAPER_NAME_A4 :: "iso_a4"
		PAPER_NAME_A5 :: "iso_a5"
		PAPER_NAME_B5 :: "iso_b5"
		PAPER_NAME_EXECUTIVE :: "na_executive"
		PAPER_NAME_LEGAL :: "na_legal"
		PAPER_NAME_LETTER :: "na_letter"
		PATH_PRIO_MASK :: 15
		PRINT_SETTINGS_COLLATE :: "collate"
		PRINT_SETTINGS_DEFAULT_SOURCE :: "default-source"
		PRINT_SETTINGS_DITHER :: "dither"
		PRINT_SETTINGS_DUPLEX :: "duplex"
		PRINT_SETTINGS_FINISHINGS :: "finishings"
		PRINT_SETTINGS_MEDIA_TYPE :: "media-type"
		PRINT_SETTINGS_NUMBER_UP :: "number-up"
		PRINT_SETTINGS_NUMBER_UP_LAYOUT :: "number-up-layout"
		PRINT_SETTINGS_N_COPIES :: "n-copies"
		PRINT_SETTINGS_ORIENTATION :: "orientation"
		PRINT_SETTINGS_OUTPUT_BASENAME :: "output-basename"
		PRINT_SETTINGS_OUTPUT_BIN :: "output-bin"
		PRINT_SETTINGS_OUTPUT_DIR :: "output-dir"
		PRINT_SETTINGS_OUTPUT_FILE_FORMAT :: "output-file-format"
		PRINT_SETTINGS_OUTPUT_URI :: "output-uri"
		PRINT_SETTINGS_PAGE_RANGES :: "page-ranges"
		PRINT_SETTINGS_PAGE_SET :: "page-set"
		PRINT_SETTINGS_PAPER_FORMAT :: "paper-format"
		PRINT_SETTINGS_PAPER_HEIGHT :: "paper-height"
		PRINT_SETTINGS_PAPER_WIDTH :: "paper-width"
		PRINT_SETTINGS_PRINTER :: "printer"
		PRINT_SETTINGS_PRINTER_LPI :: "printer-lpi"
		PRINT_SETTINGS_PRINT_PAGES :: "print-pages"
		PRINT_SETTINGS_QUALITY :: "quality"
		PRINT_SETTINGS_RESOLUTION :: "resolution"
		PRINT_SETTINGS_RESOLUTION_X :: "resolution-x"
		PRINT_SETTINGS_RESOLUTION_Y :: "resolution-y"
		PRINT_SETTINGS_REVERSE :: "reverse"
		PRINT_SETTINGS_SCALE :: "scale"
		PRINT_SETTINGS_USE_COLOR :: "use-color"
		PRINT_SETTINGS_WIN32_DRIVER_EXTRA :: "win32-driver-extra"
		PRINT_SETTINGS_WIN32_DRIVER_VERSION :: "win32-driver-version"
		PRIORITY_RESIZE :: 100 + 10
		STATE_FLAG_NORMAL :: StateFlags{}
		STOCK_ABOUT :: "gtk-about"
		STOCK_ADD :: "gtk-add"
		STOCK_APPLY :: "gtk-apply"
		STOCK_BOLD :: "gtk-bold"
		STOCK_CANCEL :: "gtk-cancel"
		STOCK_CAPS_LOCK_WARNING :: "gtk-caps-lock-warning"
		STOCK_CDROM :: "gtk-cdrom"
		STOCK_CLEAR :: "gtk-clear"
		STOCK_CLOSE :: "gtk-close"
		STOCK_COLOR_PICKER :: "gtk-color-picker"
		STOCK_CONNECT :: "gtk-connect"
		STOCK_CONVERT :: "gtk-convert"
		STOCK_COPY :: "gtk-copy"
		STOCK_CUT :: "gtk-cut"
		STOCK_DELETE :: "gtk-delete"
		STOCK_DIALOG_AUTHENTICATION :: "gtk-dialog-authentication"
		STOCK_DIALOG_ERROR :: "gtk-dialog-error"
		STOCK_DIALOG_INFO :: "gtk-dialog-info"
		STOCK_DIALOG_QUESTION :: "gtk-dialog-question"
		STOCK_DIALOG_WARNING :: "gtk-dialog-warning"
		STOCK_DIRECTORY :: "gtk-directory"
		STOCK_DISCARD :: "gtk-discard"
		STOCK_DISCONNECT :: "gtk-disconnect"
		STOCK_DND :: "gtk-dnd"
		STOCK_DND_MULTIPLE :: "gtk-dnd-multiple"
		STOCK_EDIT :: "gtk-edit"
		STOCK_EXECUTE :: "gtk-execute"
		STOCK_FILE :: "gtk-file"
		STOCK_FIND :: "gtk-find"
		STOCK_FIND_AND_REPLACE :: "gtk-find-and-replace"
		STOCK_FLOPPY :: "gtk-floppy"
		STOCK_FULLSCREEN :: "gtk-fullscreen"
		STOCK_GOTO_BOTTOM :: "gtk-goto-bottom"
		STOCK_GOTO_FIRST :: "gtk-goto-first"
		STOCK_GOTO_LAST :: "gtk-goto-last"
		STOCK_GOTO_TOP :: "gtk-goto-top"
		STOCK_GO_BACK :: "gtk-go-back"
		STOCK_GO_DOWN :: "gtk-go-down"
		STOCK_GO_FORWARD :: "gtk-go-forward"
		STOCK_GO_UP :: "gtk-go-up"
		STOCK_HARDDISK :: "gtk-harddisk"
		STOCK_HELP :: "gtk-help"
		STOCK_HOME :: "gtk-home"
		STOCK_INDENT :: "gtk-indent"
		STOCK_INDEX :: "gtk-index"
		STOCK_INFO :: "gtk-info"
		STOCK_ITALIC :: "gtk-italic"
		STOCK_JUMP_TO :: "gtk-jump-to"
		STOCK_JUSTIFY_CENTER :: "gtk-justify-center"
		STOCK_JUSTIFY_FILL :: "gtk-justify-fill"
		STOCK_JUSTIFY_LEFT :: "gtk-justify-left"
		STOCK_JUSTIFY_RIGHT :: "gtk-justify-right"
		STOCK_LEAVE_FULLSCREEN :: "gtk-leave-fullscreen"
		STOCK_MEDIA_FORWARD :: "gtk-media-forward"
		STOCK_MEDIA_NEXT :: "gtk-media-next"
		STOCK_MEDIA_PAUSE :: "gtk-media-pause"
		STOCK_MEDIA_PLAY :: "gtk-media-play"
		STOCK_MEDIA_PREVIOUS :: "gtk-media-previous"
		STOCK_MEDIA_RECORD :: "gtk-media-record"
		STOCK_MEDIA_REWIND :: "gtk-media-rewind"
		STOCK_MEDIA_STOP :: "gtk-media-stop"
		STOCK_MISSING_IMAGE :: "gtk-missing-image"
		STOCK_NETWORK :: "gtk-network"
		STOCK_NEW :: "gtk-new"
		STOCK_NO :: "gtk-no"
		STOCK_OK :: "gtk-ok"
		STOCK_OPEN :: "gtk-open"
		STOCK_ORIENTATION_LANDSCAPE :: "gtk-orientation-landscape"
		STOCK_ORIENTATION_PORTRAIT :: "gtk-orientation-portrait"
		STOCK_ORIENTATION_REVERSE_LANDSCAPE :: "gtk-orientation-reverse-landscape"
		STOCK_ORIENTATION_REVERSE_PORTRAIT :: "gtk-orientation-reverse-portrait"
		STOCK_PAGE_SETUP :: "gtk-page-setup"
		STOCK_PASTE :: "gtk-paste"
		STOCK_PREFERENCES :: "gtk-preferences"
		STOCK_PRINT :: "gtk-print"
		STOCK_PRINT_ERROR :: "gtk-print-error"
		STOCK_PRINT_PAUSED :: "gtk-print-paused"
		STOCK_PRINT_PREVIEW :: "gtk-print-preview"
		STOCK_PRINT_REPORT :: "gtk-print-report"
		STOCK_PRINT_WARNING :: "gtk-print-warning"
		STOCK_PROPERTIES :: "gtk-properties"
		STOCK_QUIT :: "gtk-quit"
		STOCK_REDO :: "gtk-redo"
		STOCK_REFRESH :: "gtk-refresh"
		STOCK_REMOVE :: "gtk-remove"
		STOCK_REVERT_TO_SAVED :: "gtk-revert-to-saved"
		STOCK_SAVE :: "gtk-save"
		STOCK_SAVE_AS :: "gtk-save-as"
		STOCK_SELECT_ALL :: "gtk-select-all"
		STOCK_SELECT_COLOR :: "gtk-select-color"
		STOCK_SELECT_FONT :: "gtk-select-font"
		STOCK_SORT_ASCENDING :: "gtk-sort-ascending"
		STOCK_SORT_DESCENDING :: "gtk-sort-descending"
		STOCK_SPELL_CHECK :: "gtk-spell-check"
		STOCK_STOP :: "gtk-stop"
		STOCK_STRIKETHROUGH :: "gtk-strikethrough"
		STOCK_UNDELETE :: "gtk-undelete"
		STOCK_UNDERLINE :: "gtk-underline"
		STOCK_UNDO :: "gtk-undo"
		STOCK_UNINDENT :: "gtk-unindent"
		STOCK_YES :: "gtk-yes"
		STOCK_ZOOM_100 :: "gtk-zoom-100"
		STOCK_ZOOM_FIT :: "gtk-zoom-fit"
		STOCK_ZOOM_IN :: "gtk-zoom-in"
		STOCK_ZOOM_OUT :: "gtk-zoom-out"
		STYLE_CLASS_ACCELERATOR :: "accelerator"
		STYLE_CLASS_ARROW :: "arrow"
		STYLE_CLASS_BACKGROUND :: "background"
		STYLE_CLASS_BOTTOM :: "bottom"
		STYLE_CLASS_BUTTON :: "button"
		STYLE_CLASS_CALENDAR :: "calendar"
		STYLE_CLASS_CELL :: "cell"
		STYLE_CLASS_CHECK :: "check"
		STYLE_CLASS_COMBOBOX_ENTRY :: "combobox-entry"
		STYLE_CLASS_CONTEXT_MENU :: "context-menu"
		STYLE_CLASS_CSD :: "csd"
		STYLE_CLASS_CURSOR_HANDLE :: "cursor-handle"
		STYLE_CLASS_DEFAULT :: "default"
		STYLE_CLASS_DESTRUCTIVE_ACTION :: "destructive-action"
		STYLE_CLASS_DIM_LABEL :: "dim-label"
		STYLE_CLASS_DND :: "dnd"
		STYLE_CLASS_DOCK :: "dock"
		STYLE_CLASS_ENTRY :: "entry"
		STYLE_CLASS_ERROR :: "error"
		STYLE_CLASS_EXPANDER :: "expander"
		STYLE_CLASS_FLAT :: "flat"
		STYLE_CLASS_FRAME :: "frame"
		STYLE_CLASS_GRIP :: "grip"
		STYLE_CLASS_HEADER :: "header"
		STYLE_CLASS_HIGHLIGHT :: "highlight"
		STYLE_CLASS_HORIZONTAL :: "horizontal"
		STYLE_CLASS_IMAGE :: "image"
		STYLE_CLASS_INFO :: "info"
		STYLE_CLASS_INLINE_TOOLBAR :: "inline-toolbar"
		STYLE_CLASS_INSERTION_CURSOR :: "insertion-cursor"
		STYLE_CLASS_LABEL :: "label"
		STYLE_CLASS_LEFT :: "left"
		STYLE_CLASS_LEVEL_BAR :: "level-bar"
		STYLE_CLASS_LINKED :: "linked"
		STYLE_CLASS_LIST :: "list"
		STYLE_CLASS_LIST_ROW :: "list-row"
		STYLE_CLASS_MARK :: "mark"
		STYLE_CLASS_MENU :: "menu"
		STYLE_CLASS_MENUBAR :: "menubar"
		STYLE_CLASS_MENUITEM :: "menuitem"
		STYLE_CLASS_MESSAGE_DIALOG :: "message-dialog"
		STYLE_CLASS_MONOSPACE :: "monospace"
		STYLE_CLASS_NEEDS_ATTENTION :: "needs-attention"
		STYLE_CLASS_NOTEBOOK :: "notebook"
		STYLE_CLASS_OSD :: "osd"
		STYLE_CLASS_OVERSHOOT :: "overshoot"
		STYLE_CLASS_PANE_SEPARATOR :: "pane-separator"
		STYLE_CLASS_PAPER :: "paper"
		STYLE_CLASS_POPOVER :: "popover"
		STYLE_CLASS_POPUP :: "popup"
		STYLE_CLASS_PRIMARY_TOOLBAR :: "primary-toolbar"
		STYLE_CLASS_PROGRESSBAR :: "progressbar"
		STYLE_CLASS_PULSE :: "pulse"
		STYLE_CLASS_QUESTION :: "question"
		STYLE_CLASS_RADIO :: "radio"
		STYLE_CLASS_RAISED :: "raised"
		STYLE_CLASS_READ_ONLY :: "read-only"
		STYLE_CLASS_RIGHT :: "right"
		STYLE_CLASS_RUBBERBAND :: "rubberband"
		STYLE_CLASS_SCALE :: "scale"
		STYLE_CLASS_SCALE_HAS_MARKS_ABOVE :: "scale-has-marks-above"
		STYLE_CLASS_SCALE_HAS_MARKS_BELOW :: "scale-has-marks-below"
		STYLE_CLASS_SCROLLBAR :: "scrollbar"
		STYLE_CLASS_SCROLLBARS_JUNCTION :: "scrollbars-junction"
		STYLE_CLASS_SEPARATOR :: "separator"
		STYLE_CLASS_SIDEBAR :: "sidebar"
		STYLE_CLASS_SLIDER :: "slider"
		STYLE_CLASS_SPINBUTTON :: "spinbutton"
		STYLE_CLASS_SPINNER :: "spinner"
		STYLE_CLASS_STATUSBAR :: "statusbar"
		STYLE_CLASS_SUBTITLE :: "subtitle"
		STYLE_CLASS_SUGGESTED_ACTION :: "suggested-action"
		STYLE_CLASS_TITLE :: "title"
		STYLE_CLASS_TITLEBAR :: "titlebar"
		STYLE_CLASS_TOOLBAR :: "toolbar"
		STYLE_CLASS_TOOLTIP :: "tooltip"
		STYLE_CLASS_TOP :: "top"
		STYLE_CLASS_TOUCH_SELECTION :: "touch-selection"
		STYLE_CLASS_TROUGH :: "trough"
		STYLE_CLASS_UNDERSHOOT :: "undershoot"
		STYLE_CLASS_VERTICAL :: "vertical"
		STYLE_CLASS_VIEW :: "view"
		STYLE_CLASS_WARNING :: "warning"
		STYLE_CLASS_WIDE :: "wide"
		STYLE_CONTEXT_PRINT_NONE :: StyleContextPrintFlags{}
		STYLE_PROPERTY_BACKGROUND_COLOR :: "background-color"
		STYLE_PROPERTY_BACKGROUND_IMAGE :: "background-image"
		STYLE_PROPERTY_BORDER_COLOR :: "border-color"
		STYLE_PROPERTY_BORDER_RADIUS :: "border-radius"
		STYLE_PROPERTY_BORDER_STYLE :: "border-style"
		STYLE_PROPERTY_BORDER_WIDTH :: "border-width"
		STYLE_PROPERTY_COLOR :: "color"
		STYLE_PROPERTY_FONT :: "font"
		STYLE_PROPERTY_MARGIN :: "margin"
		STYLE_PROPERTY_PADDING :: "padding"
		STYLE_PROVIDER_PRIORITY_APPLICATION :: 600
		STYLE_PROVIDER_PRIORITY_FALLBACK :: 1
		STYLE_PROVIDER_PRIORITY_SETTINGS :: 400
		STYLE_PROVIDER_PRIORITY_THEME :: 200
		STYLE_PROVIDER_PRIORITY_USER :: 800
		STYLE_REGION_COLUMN :: "column"
		STYLE_REGION_COLUMN_HEADER :: "column-header"
		STYLE_REGION_ROW :: "row"
		STYLE_REGION_TAB :: "tab"
		TEXT_VIEW_PRIORITY_VALIDATE :: (100 + 20) + 5
		TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID :: -1
		TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID :: -2
		UI_MANAGER_AUTO :: UIManagerItemType{}
		UNIT_PIXEL :: Unit.NONE

	variables
		GDK_NONE := GdkAtom(uintptr(0))
		GDK_SELECTION_CLIPBOARD := GdkAtom(uintptr(69))
		GDK_SELECTION_PRIMARY := GdkAtom(uintptr(1))
		GDK_SELECTION_SECONDARY := GdkAtom(uintptr(2))
		GDK_SELECTION_TYPE_ATOM := GdkAtom(uintptr(4))
		GDK_SELECTION_TYPE_BITMAP := GdkAtom(uintptr(5))
		GDK_SELECTION_TYPE_COLORMAP := GdkAtom(uintptr(7))
		GDK_SELECTION_TYPE_DRAWABLE := GdkAtom(uintptr(17))
		GDK_SELECTION_TYPE_INTEGER := GdkAtom(uintptr(19))
		GDK_SELECTION_TYPE_PIXMAP := GdkAtom(uintptr(20))
		GDK_SELECTION_TYPE_STRING := GdkAtom(uintptr(31))
		GDK_SELECTION_TYPE_WINDOW := GdkAtom(uintptr(33))
		GDK_TARGET_BITMAP := GdkAtom(uintptr(5))
		GDK_TARGET_COLORMAP := GdkAtom(uintptr(7))
		GDK_TARGET_DRAWABLE := GdkAtom(uintptr(17))
		GDK_TARGET_PIXMAP := GdkAtom(uintptr(20))
		GDK_TARGET_STRING := GdkAtom(uintptr(31))
		patched_container_class: [122]u64 = ContainerClass{}
		patched_false: proc() -> glib.boolean = gtk_false
		patched_main: proc() = gtk_main
			gtk_main, gtk_true and gtk_false keep their C names, because trimmed they would be Odin's
			`main`, `true` and `false`.

		patched_menu_item_class: [139]u64 = MenuItemClass{}
		patched_menu_shell_class: [136]u64 = MenuShellClass{}
		patched_rc_style: [48]u64 = RcStyle{}
			runic cannot lay out bit-field structs; rune.yml overwrites these with arrays of the
			x86_64 size and alignment. test_opaque_patched_sizes_match_c checks the sizes against the
			C structs.

		patched_table_child: [3]u64 = TableChild{}
		patched_table_row_col: [2]u32 = TableRowCol{}
		patched_true: proc() -> glib.boolean = gtk_true

	procedures
		_gtk_accel_group_attach :: proc(accel_group: ^AccelGroup, object: ^gobj.Object) ---
		_gtk_accel_group_detach :: proc(accel_group: ^AccelGroup, object: ^gobj.Object) ---
		_gtk_accel_label_class_get_accelerator_label :: proc(klass: ^AccelLabelClass, accelerator_key: glib.uint_, accelerator_mods: GdkModifierType) -> cstring ---
		_gtk_accel_label_set_accel_text :: proc(accel_label: ^AccelLabel, accel_text: cstring) ---
		_gtk_action_add_to_proxy_list :: proc(action: ^Action, proxy: ^Widget) ---
		_gtk_action_emit_activate :: proc(action: ^Action) ---
		_gtk_action_group_emit_connect_proxy :: proc(action_group: ^ActionGroup, action: ^Action, proxy: ^Widget) ---
		_gtk_action_group_emit_disconnect_proxy :: proc(action_group: ^ActionGroup, action: ^Action, proxy: ^Widget) ---
		_gtk_action_group_emit_post_activate :: proc(action_group: ^ActionGroup, action: ^Action) ---
		_gtk_action_group_emit_pre_activate :: proc(action_group: ^ActionGroup, action: ^Action) ---
		_gtk_action_remove_from_proxy_list :: proc(action: ^Action, proxy: ^Widget) ---
		_gtk_action_sync_menu_visible :: proc(action: ^Action, proxy: ^Widget, empty: glib.boolean) ---
		_gtk_bin_set_child :: proc(bin: ^Bin, widget: ^Widget) ---
		_gtk_cell_area_box_group_visible :: proc(box: ^CellAreaBox, group_idx: glib.int_) -> glib.boolean ---
		_gtk_cell_area_set_cell_data_func_with_proxy :: proc(area: ^CellArea, cell: ^CellRenderer, func: glib.Func, func_data: glib.pointer, destroy: glib.DestroyNotify, proxy: glib.pointer) ---
		_gtk_cell_layout_buildable_add_child :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, type: cstring) ---
		_gtk_cell_layout_buildable_custom_tag_end :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: ^glib.pointer) -> glib.boolean ---
		_gtk_cell_layout_buildable_custom_tag_start :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, parser: ^glib.MarkupParser, data: ^glib.pointer) -> glib.boolean ---
		_gtk_cell_renderer_calc_offset :: proc(cell: ^CellRenderer, cell_area: ^GdkRectangle, direction: TextDirection, width: glib.int_, height: glib.int_, x_offset: ^glib.int_, y_offset: ^glib.int_) ---
		_gtk_cell_renderer_get_accessible_type :: proc(renderer: ^CellRenderer) -> gobj.Type ---
		_gtk_check_button_get_props :: proc(check_button: ^CheckButton, indicator_size: ^glib.int_, indicator_spacing: ^glib.int_) ---
		_gtk_menu_bar_cycle_focus :: proc(menubar: ^MenuBar, dir: DirectionType) ---
		_gtk_menu_bar_get_viewable_menu_bars :: proc(window: ^Window) -> ^glib.List ---
		_gtk_misc_get_padding_and_border :: proc(misc: ^Misc, border: ^Border) ---
		_gtk_rc_free_widget_class_path :: proc(list: ^glib.SList) ---
		_gtk_rc_match_widget_class :: proc(list: ^glib.SList, length: glib.int_, path: cstring, path_reversed: cstring) -> glib.boolean ---
		_gtk_rc_parse_widget_class_path :: proc(pattern: cstring) -> ^glib.SList ---
		_gtk_recent_manager_sync :: proc() ---
		_gtk_spin_button_get_panels :: proc(spin_button: ^SpinButton, down_panel: ^^GdkWindow, up_panel: ^^GdkWindow) ---
		_gtk_style_new_for_path :: proc(screen: ^GdkScreen, path: ^WidgetPath) -> ^Style ---
		_gtk_style_shade :: proc(a: ^GdkColor, b: ^GdkColor, k: glib.double) ---
		_gtk_toggle_action_set_active :: proc(toggle_action: ^ToggleAction, is_active: glib.boolean) ---
		_gtk_tool_button_get_button :: proc(button: ^ToolButton) -> ^Widget ---
		_gtk_tool_item_create_menu_proxy :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		about_dialog_add_credit_section :: proc(about: ^AboutDialog, section_name: cstring, people: ^cstring) ---
		about_dialog_get_artists :: proc(about: ^AboutDialog) -> ^cstring ---
		about_dialog_get_authors :: proc(about: ^AboutDialog) -> ^cstring ---
		about_dialog_get_comments :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_copyright :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_documenters :: proc(about: ^AboutDialog) -> ^cstring ---
		about_dialog_get_license :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_license_type :: proc(about: ^AboutDialog) -> License ---
		about_dialog_get_logo :: proc(about: ^AboutDialog) -> ^pixbuf.Pixbuf ---
		about_dialog_get_logo_icon_name :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_program_name :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_translator_credits :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_type :: proc() -> gobj.Type ---
		about_dialog_get_version :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_website :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_website_label :: proc(about: ^AboutDialog) -> cstring ---
		about_dialog_get_wrap_license :: proc(about: ^AboutDialog) -> glib.boolean ---
		about_dialog_new :: proc() -> ^Widget ---
		about_dialog_set_artists :: proc(about: ^AboutDialog, artists: [^]cstring) ---
		about_dialog_set_authors :: proc(about: ^AboutDialog, authors: [^]cstring) ---
		about_dialog_set_comments :: proc(about: ^AboutDialog, comments: cstring) ---
		about_dialog_set_copyright :: proc(about: ^AboutDialog, copyright: cstring) ---
		about_dialog_set_documenters :: proc(about: ^AboutDialog, documenters: [^]cstring) ---
		about_dialog_set_license :: proc(about: ^AboutDialog, license: cstring) ---
		about_dialog_set_license_type :: proc(about: ^AboutDialog, license_type: License) ---
		about_dialog_set_logo :: proc(about: ^AboutDialog, logo: ^pixbuf.Pixbuf) ---
		about_dialog_set_logo_icon_name :: proc(about: ^AboutDialog, icon_name: cstring) ---
		about_dialog_set_program_name :: proc(about: ^AboutDialog, name: cstring) ---
		about_dialog_set_translator_credits :: proc(about: ^AboutDialog, translator_credits: cstring) ---
		about_dialog_set_version :: proc(about: ^AboutDialog, version: cstring) ---
		about_dialog_set_website :: proc(about: ^AboutDialog, website: cstring) ---
		about_dialog_set_website_label :: proc(about: ^AboutDialog, website_label: cstring) ---
		about_dialog_set_wrap_license :: proc(about: ^AboutDialog, wrap_license: glib.boolean) ---
		accel_flags_get_type :: proc() -> gobj.Type ---
		accel_group_activate :: proc(accel_group: ^AccelGroup, accel_quark: glib.Quark, acceleratable: ^gobj.Object, accel_key: glib.uint_, accel_mods: GdkModifierType) -> glib.boolean ---
		accel_group_connect :: proc(accel_group: ^AccelGroup, accel_key: glib.uint_, accel_mods: GdkModifierType, accel_flags: AccelFlags, closure: ^gobj.Closure) ---
		accel_group_connect_by_path :: proc(accel_group: ^AccelGroup, accel_path: cstring, closure: ^gobj.Closure) ---
		accel_group_disconnect :: proc(accel_group: ^AccelGroup, closure: ^gobj.Closure) -> glib.boolean ---
		accel_group_disconnect_key :: proc(accel_group: ^AccelGroup, accel_key: glib.uint_, accel_mods: GdkModifierType) -> glib.boolean ---
		accel_group_find :: proc(accel_group: ^AccelGroup, find_func: AccelGroupFindFunc, data: glib.pointer) -> ^AccelKey ---
		accel_group_from_accel_closure :: proc(closure: ^gobj.Closure) -> ^AccelGroup ---
		accel_group_get_is_locked :: proc(accel_group: ^AccelGroup) -> glib.boolean ---
		accel_group_get_modifier_mask :: proc(accel_group: ^AccelGroup) -> GdkModifierType ---
		accel_group_get_type :: proc() -> gobj.Type ---
		accel_group_lock :: proc(accel_group: ^AccelGroup) ---
		accel_group_new :: proc() -> ^AccelGroup ---
		accel_group_query :: proc(accel_group: ^AccelGroup, accel_key: glib.uint_, accel_mods: GdkModifierType, n_entries: ^glib.uint_) -> ^AccelGroupEntry ---
		accel_group_unlock :: proc(accel_group: ^AccelGroup) ---
		accel_groups_activate :: proc(object: ^gobj.Object, accel_key: glib.uint_, accel_mods: GdkModifierType) -> glib.boolean ---
		accel_groups_from_object :: proc(object: ^gobj.Object) -> ^glib.SList ---
		accel_label_get_accel :: proc(accel_label: ^AccelLabel, accelerator_key: ^glib.uint_, accelerator_mods: ^GdkModifierType) ---
		accel_label_get_accel_widget :: proc(accel_label: ^AccelLabel) -> ^Widget ---
		accel_label_get_accel_width :: proc(accel_label: ^AccelLabel) -> glib.uint_ ---
		accel_label_get_type :: proc() -> gobj.Type ---
		accel_label_new :: proc(string_p: cstring) -> ^Widget ---
		accel_label_refetch :: proc(accel_label: ^AccelLabel) -> glib.boolean ---
		accel_label_set_accel :: proc(accel_label: ^AccelLabel, accelerator_key: glib.uint_, accelerator_mods: GdkModifierType) ---
		accel_label_set_accel_closure :: proc(accel_label: ^AccelLabel, accel_closure: ^gobj.Closure) ---
		accel_label_set_accel_widget :: proc(accel_label: ^AccelLabel, accel_widget: ^Widget) ---
		accel_map_add_entry :: proc(accel_path: cstring, accel_key: glib.uint_, accel_mods: GdkModifierType) ---
		accel_map_add_filter :: proc(filter_pattern: cstring) ---
		accel_map_change_entry :: proc(accel_path: cstring, accel_key: glib.uint_, accel_mods: GdkModifierType, replace: glib.boolean) -> glib.boolean ---
		accel_map_foreach :: proc(data: glib.pointer, foreach_func: AccelMapForeach) ---
		accel_map_foreach_unfiltered :: proc(data: glib.pointer, foreach_func: AccelMapForeach) ---
		accel_map_get :: proc() -> ^AccelMap ---
		accel_map_get_type :: proc() -> gobj.Type ---
		accel_map_load :: proc(file_name: cstring) ---
		accel_map_load_fd :: proc(fd: glib.int_) ---
		accel_map_load_scanner :: proc(scanner: ^glib.Scanner) ---
		accel_map_lock_path :: proc(accel_path: cstring) ---
		accel_map_lookup_entry :: proc(accel_path: cstring, key: ^AccelKey) -> glib.boolean ---
		accel_map_save :: proc(file_name: cstring) ---
		accel_map_save_fd :: proc(fd: glib.int_) ---
		accel_map_unlock_path :: proc(accel_path: cstring) ---
		accelerator_get_default_mod_mask :: proc() -> GdkModifierType ---
		accelerator_get_label :: proc(accelerator_key: glib.uint_, accelerator_mods: GdkModifierType) -> cstring ---
		accelerator_get_label_with_keycode :: proc(display: ^GdkDisplay, accelerator_key: glib.uint_, keycode: glib.uint_, accelerator_mods: GdkModifierType) -> cstring ---
		accelerator_name :: proc(accelerator_key: glib.uint_, accelerator_mods: GdkModifierType) -> cstring ---
		accelerator_name_with_keycode :: proc(display: ^GdkDisplay, accelerator_key: glib.uint_, keycode: glib.uint_, accelerator_mods: GdkModifierType) -> cstring ---
		accelerator_parse :: proc(accelerator: cstring, accelerator_key: ^glib.uint_, accelerator_mods: ^GdkModifierType) ---
		accelerator_parse_with_keycode :: proc(accelerator: cstring, accelerator_key: ^glib.uint_, accelerator_codes: [^]^glib.uint_, accelerator_mods: ^GdkModifierType) ---
		accelerator_set_default_mod_mask :: proc(default_mod_mask: GdkModifierType) ---
		accelerator_valid :: proc(keyval: glib.uint_, modifiers: GdkModifierType) -> glib.boolean ---
		accessible_connect_widget_destroyed :: proc(accessible: ^Accessible) ---
		accessible_get_type :: proc() -> gobj.Type ---
		accessible_get_widget :: proc(accessible: ^Accessible) -> ^Widget ---
		accessible_set_widget :: proc(accessible: ^Accessible, widget: ^Widget) ---
		action_activate :: proc(action: ^Action) ---
		action_bar_get_center_widget :: proc(action_bar: ^ActionBar) -> ^Widget ---
		action_bar_get_type :: proc() -> gobj.Type ---
		action_bar_new :: proc() -> ^Widget ---
		action_bar_pack_end :: proc(action_bar: ^ActionBar, child: ^Widget) ---
		action_bar_pack_start :: proc(action_bar: ^ActionBar, child: ^Widget) ---
		action_bar_set_center_widget :: proc(action_bar: ^ActionBar, center_widget: ^Widget) ---
		action_block_activate :: proc(action: ^Action) ---
		action_connect_accelerator :: proc(action: ^Action) ---
		action_create_icon :: proc(action: ^Action, icon_size: IconSize) -> ^Widget ---
		action_create_menu :: proc(action: ^Action) -> ^Widget ---
		action_create_menu_item :: proc(action: ^Action) -> ^Widget ---
		action_create_tool_item :: proc(action: ^Action) -> ^Widget ---
		action_disconnect_accelerator :: proc(action: ^Action) ---
		action_get_accel_closure :: proc(action: ^Action) -> ^gobj.Closure ---
		action_get_accel_path :: proc(action: ^Action) -> cstring ---
		action_get_always_show_image :: proc(action: ^Action) -> glib.boolean ---
		action_get_gicon :: proc(action: ^Action) -> ^gio.Icon ---
		action_get_icon_name :: proc(action: ^Action) -> cstring ---
		action_get_is_important :: proc(action: ^Action) -> glib.boolean ---
		action_get_label :: proc(action: ^Action) -> cstring ---
		action_get_name :: proc(action: ^Action) -> cstring ---
		action_get_proxies :: proc(action: ^Action) -> ^glib.SList ---
		action_get_sensitive :: proc(action: ^Action) -> glib.boolean ---
		action_get_short_label :: proc(action: ^Action) -> cstring ---
		action_get_stock_id :: proc(action: ^Action) -> cstring ---
		action_get_tooltip :: proc(action: ^Action) -> cstring ---
		action_get_type :: proc() -> gobj.Type ---
		action_get_visible :: proc(action: ^Action) -> glib.boolean ---
		action_get_visible_horizontal :: proc(action: ^Action) -> glib.boolean ---
		action_get_visible_vertical :: proc(action: ^Action) -> glib.boolean ---
		action_group_add_action :: proc(action_group: ^ActionGroup, action: ^Action) ---
		action_group_add_action_with_accel :: proc(action_group: ^ActionGroup, action: ^Action, accelerator: cstring) ---
		action_group_add_actions :: proc(action_group: ^ActionGroup, entries: [^]ActionEntry, n_entries: glib.uint_, user_data: glib.pointer) ---
		action_group_add_actions_full :: proc(action_group: ^ActionGroup, entries: [^]ActionEntry, n_entries: glib.uint_, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		action_group_add_radio_actions :: proc(action_group: ^ActionGroup, entries: [^]RadioActionEntry, n_entries: glib.uint_, value: glib.int_, on_change: gobj.Callback, user_data: glib.pointer) ---
		action_group_add_radio_actions_full :: proc(action_group: ^ActionGroup, entries: [^]RadioActionEntry, n_entries: glib.uint_, value: glib.int_, on_change: gobj.Callback, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		action_group_add_toggle_actions :: proc(action_group: ^ActionGroup, entries: [^]ToggleActionEntry, n_entries: glib.uint_, user_data: glib.pointer) ---
		action_group_add_toggle_actions_full :: proc(action_group: ^ActionGroup, entries: [^]ToggleActionEntry, n_entries: glib.uint_, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		action_group_get_accel_group :: proc(action_group: ^ActionGroup) -> ^AccelGroup ---
		action_group_get_action :: proc(action_group: ^ActionGroup, action_name: cstring) -> ^Action ---
		action_group_get_name :: proc(action_group: ^ActionGroup) -> cstring ---
		action_group_get_sensitive :: proc(action_group: ^ActionGroup) -> glib.boolean ---
		action_group_get_type :: proc() -> gobj.Type ---
		action_group_get_visible :: proc(action_group: ^ActionGroup) -> glib.boolean ---
		action_group_list_actions :: proc(action_group: ^ActionGroup) -> ^glib.List ---
		action_group_new :: proc(name: cstring) -> ^ActionGroup ---
		action_group_remove_action :: proc(action_group: ^ActionGroup, action: ^Action) ---
		action_group_set_accel_group :: proc(action_group: ^ActionGroup, accel_group: ^AccelGroup) ---
		action_group_set_sensitive :: proc(action_group: ^ActionGroup, sensitive: glib.boolean) ---
		action_group_set_translate_func :: proc(action_group: ^ActionGroup, func: TranslateFunc, data: glib.pointer, notify: glib.DestroyNotify) ---
		action_group_set_translation_domain :: proc(action_group: ^ActionGroup, domain: cstring) ---
		action_group_set_visible :: proc(action_group: ^ActionGroup, visible: glib.boolean) ---
		action_group_translate_string :: proc(action_group: ^ActionGroup, string_p: cstring) -> cstring ---
		action_is_sensitive :: proc(action: ^Action) -> glib.boolean ---
		action_is_visible :: proc(action: ^Action) -> glib.boolean ---
		action_new :: proc(name: cstring, label: cstring, tooltip: cstring, stock_id: cstring) -> ^Action ---
		action_set_accel_group :: proc(action: ^Action, accel_group: ^AccelGroup) ---
		action_set_accel_path :: proc(action: ^Action, accel_path: cstring) ---
		action_set_always_show_image :: proc(action: ^Action, always_show: glib.boolean) ---
		action_set_gicon :: proc(action: ^Action, icon: ^gio.Icon) ---
		action_set_icon_name :: proc(action: ^Action, icon_name: cstring) ---
		action_set_is_important :: proc(action: ^Action, is_important: glib.boolean) ---
		action_set_label :: proc(action: ^Action, label: cstring) ---
		action_set_sensitive :: proc(action: ^Action, sensitive: glib.boolean) ---
		action_set_short_label :: proc(action: ^Action, short_label: cstring) ---
		action_set_stock_id :: proc(action: ^Action, stock_id: cstring) ---
		action_set_tooltip :: proc(action: ^Action, tooltip: cstring) ---
		action_set_visible :: proc(action: ^Action, visible: glib.boolean) ---
		action_set_visible_horizontal :: proc(action: ^Action, visible_horizontal: glib.boolean) ---
		action_set_visible_vertical :: proc(action: ^Action, visible_vertical: glib.boolean) ---
		action_unblock_activate :: proc(action: ^Action) ---
		actionable_get_action_name :: proc(actionable: ^Actionable) -> cstring ---
		actionable_get_action_target_value :: proc(actionable: ^Actionable) -> ^glib.Variant ---
		actionable_get_type :: proc() -> gobj.Type ---
		actionable_set_action_name :: proc(actionable: ^Actionable, action_name: cstring) ---
		actionable_set_action_target :: proc(actionable: ^Actionable, format_string: cstring, #c_vararg var_args: ..any) ---
		actionable_set_action_target_value :: proc(actionable: ^Actionable, target_value: ^glib.Variant) ---
		actionable_set_detailed_action_name :: proc(actionable: ^Actionable, detailed_action_name: cstring) ---
		activatable_do_set_related_action :: proc(activatable: ^Activatable, action: ^Action) ---
		activatable_get_related_action :: proc(activatable: ^Activatable) -> ^Action ---
		activatable_get_type :: proc() -> gobj.Type ---
		activatable_get_use_action_appearance :: proc(activatable: ^Activatable) -> glib.boolean ---
		activatable_set_related_action :: proc(activatable: ^Activatable, action: ^Action) ---
		activatable_set_use_action_appearance :: proc(activatable: ^Activatable, use_appearance: glib.boolean) ---
		activatable_sync_action_properties :: proc(activatable: ^Activatable, action: ^Action) ---
		adjustment_changed :: proc(adjustment: ^Adjustment) ---
		adjustment_clamp_page :: proc(adjustment: ^Adjustment, lower: glib.double, upper: glib.double) ---
		adjustment_configure :: proc(adjustment: ^Adjustment, value: glib.double, lower: glib.double, upper: glib.double, step_increment: glib.double, page_increment: glib.double, page_size: glib.double) ---
		adjustment_get_lower :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_minimum_increment :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_page_increment :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_page_size :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_step_increment :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_type :: proc() -> gobj.Type ---
		adjustment_get_upper :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_get_value :: proc(adjustment: ^Adjustment) -> glib.double ---
		adjustment_new :: proc(value: glib.double, lower: glib.double, upper: glib.double, step_increment: glib.double, page_increment: glib.double, page_size: glib.double) -> ^Adjustment ---
		adjustment_set_lower :: proc(adjustment: ^Adjustment, lower: glib.double) ---
		adjustment_set_page_increment :: proc(adjustment: ^Adjustment, page_increment: glib.double) ---
		adjustment_set_page_size :: proc(adjustment: ^Adjustment, page_size: glib.double) ---
		adjustment_set_step_increment :: proc(adjustment: ^Adjustment, step_increment: glib.double) ---
		adjustment_set_upper :: proc(adjustment: ^Adjustment, upper: glib.double) ---
		adjustment_set_value :: proc(adjustment: ^Adjustment, value: glib.double) ---
		adjustment_value_changed :: proc(adjustment: ^Adjustment) ---
		align_get_type :: proc() -> gobj.Type ---
		alignment_get_padding :: proc(alignment: ^Alignment, padding_top: ^glib.uint_, padding_bottom: ^glib.uint_, padding_left: ^glib.uint_, padding_right: ^glib.uint_) ---
		alignment_get_type :: proc() -> gobj.Type ---
		alignment_new :: proc(xalign: glib.float, yalign: glib.float, xscale: glib.float, yscale: glib.float) -> ^Widget ---
		alignment_set :: proc(alignment: ^Alignment, xalign: glib.float, yalign: glib.float, xscale: glib.float, yscale: glib.float) ---
		alignment_set_padding :: proc(alignment: ^Alignment, padding_top: glib.uint_, padding_bottom: glib.uint_, padding_left: glib.uint_, padding_right: glib.uint_) ---
		alternative_dialog_button_order :: proc(screen: ^GdkScreen) -> glib.boolean ---
		app_chooser_button_append_custom_item :: proc(self: ^AppChooserButton, name: cstring, label: cstring, icon: ^gio.Icon) ---
		app_chooser_button_append_separator :: proc(self: ^AppChooserButton) ---
		app_chooser_button_get_heading :: proc(self: ^AppChooserButton) -> cstring ---
		app_chooser_button_get_show_default_item :: proc(self: ^AppChooserButton) -> glib.boolean ---
		app_chooser_button_get_show_dialog_item :: proc(self: ^AppChooserButton) -> glib.boolean ---
		app_chooser_button_get_type :: proc() -> gobj.Type ---
		app_chooser_button_new :: proc(content_type: cstring) -> ^Widget ---
		app_chooser_button_set_active_custom_item :: proc(self: ^AppChooserButton, name: cstring) ---
		app_chooser_button_set_heading :: proc(self: ^AppChooserButton, heading: cstring) ---
		app_chooser_button_set_show_default_item :: proc(self: ^AppChooserButton, setting: glib.boolean) ---
		app_chooser_button_set_show_dialog_item :: proc(self: ^AppChooserButton, setting: glib.boolean) ---
		app_chooser_dialog_get_heading :: proc(self: ^AppChooserDialog) -> cstring ---
		app_chooser_dialog_get_type :: proc() -> gobj.Type ---
		app_chooser_dialog_get_widget :: proc(self: ^AppChooserDialog) -> ^Widget ---
		app_chooser_dialog_new :: proc(parent: ^Window, flags: DialogFlags, file: ^gio.File) -> ^Widget ---
		app_chooser_dialog_new_for_content_type :: proc(parent: ^Window, flags: DialogFlags, content_type: cstring) -> ^Widget ---
		app_chooser_dialog_set_heading :: proc(self: ^AppChooserDialog, heading: cstring) ---
		app_chooser_get_app_info :: proc(self: ^AppChooser) -> ^gio.AppInfo ---
		app_chooser_get_content_type :: proc(self: ^AppChooser) -> cstring ---
		app_chooser_get_type :: proc() -> gobj.Type ---
		app_chooser_refresh :: proc(self: ^AppChooser) ---
		app_chooser_widget_get_default_text :: proc(self: ^AppChooserWidget) -> cstring ---
		app_chooser_widget_get_show_all :: proc(self: ^AppChooserWidget) -> glib.boolean ---
		app_chooser_widget_get_show_default :: proc(self: ^AppChooserWidget) -> glib.boolean ---
		app_chooser_widget_get_show_fallback :: proc(self: ^AppChooserWidget) -> glib.boolean ---
		app_chooser_widget_get_show_other :: proc(self: ^AppChooserWidget) -> glib.boolean ---
		app_chooser_widget_get_show_recommended :: proc(self: ^AppChooserWidget) -> glib.boolean ---
		app_chooser_widget_get_type :: proc() -> gobj.Type ---
		app_chooser_widget_new :: proc(content_type: cstring) -> ^Widget ---
		app_chooser_widget_set_default_text :: proc(self: ^AppChooserWidget, text: cstring) ---
		app_chooser_widget_set_show_all :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---
		app_chooser_widget_set_show_default :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---
		app_chooser_widget_set_show_fallback :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---
		app_chooser_widget_set_show_other :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---
		app_chooser_widget_set_show_recommended :: proc(self: ^AppChooserWidget, setting: glib.boolean) ---
		application_add_accelerator :: proc(application: ^Application, accelerator: cstring, action_name: cstring, parameter: ^glib.Variant) ---
		application_add_window :: proc(application: ^Application, window: ^Window) ---
		application_get_accels_for_action :: proc(application: ^Application, detailed_action_name: cstring) -> ^cstring ---
		application_get_actions_for_accel :: proc(application: ^Application, accel: cstring) -> ^cstring ---
		application_get_active_window :: proc(application: ^Application) -> ^Window ---
		application_get_app_menu :: proc(application: ^Application) -> ^gio.MenuModel ---
		application_get_menu_by_id :: proc(application: ^Application, id: cstring) -> ^gio.Menu ---
		application_get_menubar :: proc(application: ^Application) -> ^gio.MenuModel ---
		application_get_type :: proc() -> gobj.Type ---
		application_get_window_by_id :: proc(application: ^Application, id: glib.uint_) -> ^Window ---
		application_get_windows :: proc(application: ^Application) -> ^glib.List ---
		application_inhibit :: proc(application: ^Application, window: ^Window, flags: ApplicationInhibitFlags, reason: cstring) -> glib.uint_ ---
		application_inhibit_flags_get_type :: proc() -> gobj.Type ---
		application_is_inhibited :: proc(application: ^Application, flags: ApplicationInhibitFlags) -> glib.boolean ---
		application_list_action_descriptions :: proc(application: ^Application) -> ^cstring ---
		application_new :: proc(application_id: cstring, flags: gio.ApplicationFlags) -> ^Application ---
		application_prefers_app_menu :: proc(application: ^Application) -> glib.boolean ---
		application_remove_accelerator :: proc(application: ^Application, action_name: cstring, parameter: ^glib.Variant) ---
		application_remove_window :: proc(application: ^Application, window: ^Window) ---
		application_set_accels_for_action :: proc(application: ^Application, detailed_action_name: cstring, accels: [^]cstring) ---
		application_set_app_menu :: proc(application: ^Application, app_menu: ^gio.MenuModel) ---
		application_set_menubar :: proc(application: ^Application, menubar: ^gio.MenuModel) ---
		application_uninhibit :: proc(application: ^Application, cookie: glib.uint_) ---
		application_window_get_help_overlay :: proc(window: ^ApplicationWindow) -> ^ShortcutsWindow ---
		application_window_get_id :: proc(window: ^ApplicationWindow) -> glib.uint_ ---
		application_window_get_show_menubar :: proc(window: ^ApplicationWindow) -> glib.boolean ---
		application_window_get_type :: proc() -> gobj.Type ---
		application_window_new :: proc(application: ^Application) -> ^Widget ---
		application_window_set_help_overlay :: proc(window: ^ApplicationWindow, help_overlay: ^ShortcutsWindow) ---
		application_window_set_show_menubar :: proc(window: ^ApplicationWindow, show_menubar: glib.boolean) ---
		arrow_get_type :: proc() -> gobj.Type ---
		arrow_new :: proc(arrow_type: ArrowType, shadow_type: ShadowType) -> ^Widget ---
		arrow_placement_get_type :: proc() -> gobj.Type ---
		arrow_set :: proc(arrow: ^Arrow, arrow_type: ArrowType, shadow_type: ShadowType) ---
		arrow_type_get_type :: proc() -> gobj.Type ---
		aspect_frame_get_type :: proc() -> gobj.Type ---
		aspect_frame_new :: proc(label: cstring, xalign: glib.float, yalign: glib.float, ratio: glib.float, obey_child: glib.boolean) -> ^Widget ---
		aspect_frame_set :: proc(aspect_frame: ^AspectFrame, xalign: glib.float, yalign: glib.float, ratio: glib.float, obey_child: glib.boolean) ---
		assistant_add_action_widget :: proc(assistant: ^Assistant, child: ^Widget) ---
		assistant_append_page :: proc(assistant: ^Assistant, page: ^Widget) -> glib.int_ ---
		assistant_commit :: proc(assistant: ^Assistant) ---
		assistant_get_current_page :: proc(assistant: ^Assistant) -> glib.int_ ---
		assistant_get_n_pages :: proc(assistant: ^Assistant) -> glib.int_ ---
		assistant_get_nth_page :: proc(assistant: ^Assistant, page_num: glib.int_) -> ^Widget ---
		assistant_get_page_complete :: proc(assistant: ^Assistant, page: ^Widget) -> glib.boolean ---
		assistant_get_page_has_padding :: proc(assistant: ^Assistant, page: ^Widget) -> glib.boolean ---
		assistant_get_page_header_image :: proc(assistant: ^Assistant, page: ^Widget) -> ^pixbuf.Pixbuf ---
		assistant_get_page_side_image :: proc(assistant: ^Assistant, page: ^Widget) -> ^pixbuf.Pixbuf ---
		assistant_get_page_title :: proc(assistant: ^Assistant, page: ^Widget) -> cstring ---
		assistant_get_page_type :: proc(assistant: ^Assistant, page: ^Widget) -> AssistantPageType ---
		assistant_get_type :: proc() -> gobj.Type ---
		assistant_insert_page :: proc(assistant: ^Assistant, page: ^Widget, position: glib.int_) -> glib.int_ ---
		assistant_new :: proc() -> ^Widget ---
		assistant_next_page :: proc(assistant: ^Assistant) ---
		assistant_page_type_get_type :: proc() -> gobj.Type ---
		assistant_prepend_page :: proc(assistant: ^Assistant, page: ^Widget) -> glib.int_ ---
		assistant_previous_page :: proc(assistant: ^Assistant) ---
		assistant_remove_action_widget :: proc(assistant: ^Assistant, child: ^Widget) ---
		assistant_remove_page :: proc(assistant: ^Assistant, page_num: glib.int_) ---
		assistant_set_current_page :: proc(assistant: ^Assistant, page_num: glib.int_) ---
		assistant_set_forward_page_func :: proc(assistant: ^Assistant, page_func: AssistantPageFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		assistant_set_page_complete :: proc(assistant: ^Assistant, page: ^Widget, complete: glib.boolean) ---
		assistant_set_page_has_padding :: proc(assistant: ^Assistant, page: ^Widget, has_padding: glib.boolean) ---
		assistant_set_page_header_image :: proc(assistant: ^Assistant, page: ^Widget, pixbuf: ^pixbuf.Pixbuf) ---
		assistant_set_page_side_image :: proc(assistant: ^Assistant, page: ^Widget, pixbuf: ^pixbuf.Pixbuf) ---
		assistant_set_page_title :: proc(assistant: ^Assistant, page: ^Widget, title: cstring) ---
		assistant_set_page_type :: proc(assistant: ^Assistant, page: ^Widget, type: AssistantPageType) ---
		assistant_update_buttons_state :: proc(assistant: ^Assistant) ---
		attach_options_get_type :: proc() -> gobj.Type ---
		baseline_position_get_type :: proc() -> gobj.Type ---
		bin_get_child :: proc(bin: ^Bin) -> ^Widget ---
		bin_get_type :: proc() -> gobj.Type ---
		binding_entry_add_signal :: proc(binding_set: ^BindingSet, keyval: glib.uint_, modifiers: GdkModifierType, signal_name: cstring, n_args: glib.uint_, #c_vararg var_args: ..any) ---
		binding_entry_add_signal_from_string :: proc(binding_set: ^BindingSet, signal_desc: cstring) -> glib.TokenType ---
		binding_entry_add_signall :: proc(binding_set: ^BindingSet, keyval: glib.uint_, modifiers: GdkModifierType, signal_name: cstring, binding_args: ^glib.SList) ---
		binding_entry_remove :: proc(binding_set: ^BindingSet, keyval: glib.uint_, modifiers: GdkModifierType) ---
		binding_entry_skip :: proc(binding_set: ^BindingSet, keyval: glib.uint_, modifiers: GdkModifierType) ---
		binding_set_activate :: proc(binding_set: ^BindingSet, keyval: glib.uint_, modifiers: GdkModifierType, object: ^gobj.Object) -> glib.boolean ---
		binding_set_add_path :: proc(binding_set: ^BindingSet, path_type: PathType, path_pattern: cstring, priority: PathPriorityType) ---
		binding_set_by_class :: proc(object_class: glib.pointer) -> ^BindingSet ---
		binding_set_find :: proc(set_name: cstring) -> ^BindingSet ---
		binding_set_new :: proc(set_name: cstring) -> ^BindingSet ---
		bindings_activate :: proc(object: ^gobj.Object, keyval: glib.uint_, modifiers: GdkModifierType) -> glib.boolean ---
		bindings_activate_event :: proc(object: ^gobj.Object, event: ^GdkEventKey) -> glib.boolean ---
		border_copy :: proc(border_: ^Border) -> ^Border ---
		border_free :: proc(border_: ^Border) ---
		border_get_type :: proc() -> gobj.Type ---
		border_new :: proc() -> ^Border ---
		border_style_get_type :: proc() -> gobj.Type ---
		box_get_baseline_position :: proc(box: ^Box) -> BaselinePosition ---
		box_get_center_widget :: proc(box: ^Box) -> ^Widget ---
		box_get_homogeneous :: proc(box: ^Box) -> glib.boolean ---
		box_get_spacing :: proc(box: ^Box) -> glib.int_ ---
		box_get_type :: proc() -> gobj.Type ---
		box_new :: proc(orientation: Orientation, spacing: glib.int_) -> ^Widget ---
		box_pack_end :: proc(box: ^Box, child: ^Widget, expand: glib.boolean, fill: glib.boolean, padding: glib.uint_) ---
		box_pack_start :: proc(box: ^Box, child: ^Widget, expand: glib.boolean, fill: glib.boolean, padding: glib.uint_) ---
		box_query_child_packing :: proc(box: ^Box, child: ^Widget, expand: ^glib.boolean, fill: ^glib.boolean, padding: ^glib.uint_, pack_type: ^PackType) ---
		box_reorder_child :: proc(box: ^Box, child: ^Widget, position: glib.int_) ---
		box_set_baseline_position :: proc(box: ^Box, position: BaselinePosition) ---
		box_set_center_widget :: proc(box: ^Box, widget: ^Widget) ---
		box_set_child_packing :: proc(box: ^Box, child: ^Widget, expand: glib.boolean, fill: glib.boolean, padding: glib.uint_, pack_type: PackType) ---
		box_set_homogeneous :: proc(box: ^Box, homogeneous: glib.boolean) ---
		box_set_spacing :: proc(box: ^Box, spacing: glib.int_) ---
		buildable_add_child :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, type: cstring) ---
		buildable_construct_child :: proc(buildable: ^Buildable, builder: ^Builder, name: cstring) -> ^gobj.Object ---
		buildable_custom_finished :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: glib.pointer) ---
		buildable_custom_tag_end :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: ^glib.pointer) ---
		buildable_custom_tag_start :: proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, parser: ^glib.MarkupParser, data: ^glib.pointer) -> glib.boolean ---
		buildable_get_internal_child :: proc(buildable: ^Buildable, builder: ^Builder, childname: cstring) -> ^gobj.Object ---
		buildable_get_name :: proc(buildable: ^Buildable) -> cstring ---
		buildable_get_type :: proc() -> gobj.Type ---
		buildable_parser_finished :: proc(buildable: ^Buildable, builder: ^Builder) ---
		buildable_set_buildable_property :: proc(buildable: ^Buildable, builder: ^Builder, name: cstring, value: ^gobj.Value) ---
		buildable_set_name :: proc(buildable: ^Buildable, name: cstring) ---
		builder_add_callback_symbol :: proc(builder: ^Builder, callback_name: cstring, callback_symbol: gobj.Callback) ---
		builder_add_callback_symbols :: proc(builder: ^Builder, first_callback_name: cstring, first_callback_symbol: gobj.Callback, #c_vararg var_args: ..any) ---
		builder_add_from_file :: proc(builder: ^Builder, filename: cstring, error: ^^glib.Error) -> glib.uint_ ---
		builder_add_from_resource :: proc(builder: ^Builder, resource_path: cstring, error: ^^glib.Error) -> glib.uint_ ---
		builder_add_from_string :: proc(builder: ^Builder, buffer: cstring, length: glib.size, error: ^^glib.Error) -> glib.uint_ ---
		builder_add_objects_from_file :: proc(builder: ^Builder, filename: cstring, object_ids: [^]cstring, error: ^^glib.Error) -> glib.uint_ ---
		builder_add_objects_from_resource :: proc(builder: ^Builder, resource_path: cstring, object_ids: [^]cstring, error: ^^glib.Error) -> glib.uint_ ---
		builder_add_objects_from_string :: proc(builder: ^Builder, buffer: cstring, length: glib.size, object_ids: [^]cstring, error: ^^glib.Error) -> glib.uint_ ---
		builder_connect_signals :: proc(builder: ^Builder, user_data: glib.pointer) ---
		builder_connect_signals_full :: proc(builder: ^Builder, func: BuilderConnectFunc, user_data: glib.pointer) ---
		builder_error_get_type :: proc() -> gobj.Type ---
		builder_error_quark :: proc() -> glib.Quark ---
		builder_expose_object :: proc(builder: ^Builder, name: cstring, object: ^gobj.Object) ---
		builder_extend_with_template :: proc(builder: ^Builder, widget: ^Widget, template_type: gobj.Type, buffer: cstring, length: glib.size, error: ^^glib.Error) -> glib.uint_ ---
		builder_get_application :: proc(builder: ^Builder) -> ^Application ---
		builder_get_object :: proc(builder: ^Builder, name: cstring) -> ^gobj.Object ---
		builder_get_objects :: proc(builder: ^Builder) -> ^glib.SList ---
		builder_get_translation_domain :: proc(builder: ^Builder) -> cstring ---
		builder_get_type :: proc() -> gobj.Type ---
		builder_get_type_from_name :: proc(builder: ^Builder, type_name: cstring) -> gobj.Type ---
		builder_lookup_callback_symbol :: proc(builder: ^Builder, callback_name: cstring) -> gobj.Callback ---
		builder_new :: proc() -> ^Builder ---
		builder_new_from_file :: proc(filename: cstring) -> ^Builder ---
		builder_new_from_resource :: proc(resource_path: cstring) -> ^Builder ---
		builder_new_from_string :: proc(string_p: cstring, length: glib.ssize) -> ^Builder ---
		builder_set_application :: proc(builder: ^Builder, application: ^Application) ---
		builder_set_translation_domain :: proc(builder: ^Builder, domain: cstring) ---
		builder_value_from_string :: proc(builder: ^Builder, pspec: ^gobj.ParamSpec, string_p: cstring, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---
		builder_value_from_string_type :: proc(builder: ^Builder, type: gobj.Type, string_p: cstring, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean ---
		button_box_get_child_non_homogeneous :: proc(widget: ^ButtonBox, child: ^Widget) -> glib.boolean ---
		button_box_get_child_secondary :: proc(widget: ^ButtonBox, child: ^Widget) -> glib.boolean ---
		button_box_get_layout :: proc(widget: ^ButtonBox) -> ButtonBoxStyle ---
		button_box_get_type :: proc() -> gobj.Type ---
		button_box_new :: proc(orientation: Orientation) -> ^Widget ---
		button_box_set_child_non_homogeneous :: proc(widget: ^ButtonBox, child: ^Widget, non_homogeneous: glib.boolean) ---
		button_box_set_child_secondary :: proc(widget: ^ButtonBox, child: ^Widget, is_secondary: glib.boolean) ---
		button_box_set_layout :: proc(widget: ^ButtonBox, layout_style: ButtonBoxStyle) ---
		button_box_style_get_type :: proc() -> gobj.Type ---
		button_clicked :: proc(button: ^Button) ---
		button_enter :: proc(button: ^Button) ---
		button_get_alignment :: proc(button: ^Button, xalign: ^glib.float, yalign: ^glib.float) ---
		button_get_always_show_image :: proc(button: ^Button) -> glib.boolean ---
		button_get_event_window :: proc(button: ^Button) -> ^GdkWindow ---
		button_get_focus_on_click :: proc(button: ^Button) -> glib.boolean ---
		button_get_image :: proc(button: ^Button) -> ^Widget ---
		button_get_image_position :: proc(button: ^Button) -> PositionType ---
		button_get_label :: proc(button: ^Button) -> cstring ---
		button_get_relief :: proc(button: ^Button) -> ReliefStyle ---
		button_get_type :: proc() -> gobj.Type ---
		button_get_use_stock :: proc(button: ^Button) -> glib.boolean ---
		button_get_use_underline :: proc(button: ^Button) -> glib.boolean ---
		button_leave :: proc(button: ^Button) ---
		button_new :: proc() -> ^Widget ---
		button_new_from_icon_name :: proc(icon_name: cstring, size_p: IconSize) -> ^Widget ---
		button_new_from_stock :: proc(stock_id: cstring) -> ^Widget ---
		button_new_with_label :: proc(label: cstring) -> ^Widget ---
		button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		button_pressed :: proc(button: ^Button) ---
		button_released :: proc(button: ^Button) ---
		button_role_get_type :: proc() -> gobj.Type ---
		button_set_alignment :: proc(button: ^Button, xalign: glib.float, yalign: glib.float) ---
		button_set_always_show_image :: proc(button: ^Button, always_show: glib.boolean) ---
		button_set_focus_on_click :: proc(button: ^Button, focus_on_click: glib.boolean) ---
		button_set_image :: proc(button: ^Button, image: ^Widget) ---
		button_set_image_position :: proc(button: ^Button, position: PositionType) ---
		button_set_label :: proc(button: ^Button, label: cstring) ---
		button_set_relief :: proc(button: ^Button, relief: ReliefStyle) ---
		button_set_use_stock :: proc(button: ^Button, use_stock: glib.boolean) ---
		button_set_use_underline :: proc(button: ^Button, use_underline: glib.boolean) ---
		buttons_type_get_type :: proc() -> gobj.Type ---
		cairo_should_draw_window :: proc(cr: ^cairo.context_t, window: ^GdkWindow) -> glib.boolean ---
		cairo_transform_to_window :: proc(cr: ^cairo.context_t, widget: ^Widget, window: ^GdkWindow) ---
		calendar_clear_marks :: proc(calendar: ^Calendar) ---
		calendar_display_options_get_type :: proc() -> gobj.Type ---
		calendar_get_date :: proc(calendar: ^Calendar, year: ^glib.uint_, month: ^glib.uint_, day: ^glib.uint_) ---
		calendar_get_day_is_marked :: proc(calendar: ^Calendar, day: glib.uint_) -> glib.boolean ---
		calendar_get_detail_height_rows :: proc(calendar: ^Calendar) -> glib.int_ ---
		calendar_get_detail_width_chars :: proc(calendar: ^Calendar) -> glib.int_ ---
		calendar_get_display_options :: proc(calendar: ^Calendar) -> CalendarDisplayOptions ---
		calendar_get_type :: proc() -> gobj.Type ---
		calendar_mark_day :: proc(calendar: ^Calendar, day: glib.uint_) ---
		calendar_new :: proc() -> ^Widget ---
		calendar_select_day :: proc(calendar: ^Calendar, day: glib.uint_) ---
		calendar_select_month :: proc(calendar: ^Calendar, month: glib.uint_, year: glib.uint_) ---
		calendar_set_detail_func :: proc(calendar: ^Calendar, func: CalendarDetailFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		calendar_set_detail_height_rows :: proc(calendar: ^Calendar, rows: glib.int_) ---
		calendar_set_detail_width_chars :: proc(calendar: ^Calendar, chars: glib.int_) ---
		calendar_set_display_options :: proc(calendar: ^Calendar, flags: CalendarDisplayOptions) ---
		calendar_unmark_day :: proc(calendar: ^Calendar, day: glib.uint_) ---
		cell_area_activate :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^GdkRectangle, flags: CellRendererState, edit_only: glib.boolean) -> glib.boolean ---
		cell_area_activate_cell :: proc(area: ^CellArea, widget: ^Widget, renderer: ^CellRenderer, event: ^GdkEvent, cell_area: ^GdkRectangle, flags: CellRendererState) -> glib.boolean ---
		cell_area_add :: proc(area: ^CellArea, renderer: ^CellRenderer) ---
		cell_area_add_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) ---
		cell_area_add_with_properties :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		cell_area_apply_attributes :: proc(area: ^CellArea, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean) ---
		cell_area_attribute_connect :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring, column: glib.int_) ---
		cell_area_attribute_disconnect :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring) ---
		cell_area_attribute_get_column :: proc(area: ^CellArea, renderer: ^CellRenderer, attribute: cstring) -> glib.int_ ---
		cell_area_box_get_spacing :: proc(box: ^CellAreaBox) -> glib.int_ ---
		cell_area_box_get_type :: proc() -> gobj.Type ---
		cell_area_box_new :: proc() -> ^CellArea ---
		cell_area_box_pack_end :: proc(box: ^CellAreaBox, renderer: ^CellRenderer, expand: glib.boolean, align: glib.boolean, fixed: glib.boolean) ---
		cell_area_box_pack_start :: proc(box: ^CellAreaBox, renderer: ^CellRenderer, expand: glib.boolean, align: glib.boolean, fixed: glib.boolean) ---
		cell_area_box_set_spacing :: proc(box: ^CellAreaBox, spacing: glib.int_) ---
		cell_area_cell_get :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		cell_area_cell_get_property :: proc(area: ^CellArea, renderer: ^CellRenderer, property_name: cstring, value: ^gobj.Value) ---
		cell_area_cell_set :: proc(area: ^CellArea, renderer: ^CellRenderer, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		cell_area_cell_set_property :: proc(area: ^CellArea, renderer: ^CellRenderer, property_name: cstring, value: ^gobj.Value) ---
		cell_area_class_find_cell_property :: proc(aclass: ^CellAreaClass, property_name: cstring) -> ^gobj.ParamSpec ---
		cell_area_class_install_cell_property :: proc(aclass: ^CellAreaClass, property_id: glib.uint_, pspec: ^gobj.ParamSpec) ---
		cell_area_class_list_cell_properties :: proc(aclass: ^CellAreaClass, n_properties: ^glib.uint_) -> ^^gobj.ParamSpec ---
		cell_area_context_allocate :: proc(context_p: ^CellAreaContext, width: glib.int_, height: glib.int_) ---
		cell_area_context_get_allocation :: proc(context_p: ^CellAreaContext, width: ^glib.int_, height: ^glib.int_) ---
		cell_area_context_get_area :: proc(context_p: ^CellAreaContext) -> ^CellArea ---
		cell_area_context_get_preferred_height :: proc(context_p: ^CellAreaContext, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		cell_area_context_get_preferred_height_for_width :: proc(context_p: ^CellAreaContext, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		cell_area_context_get_preferred_width :: proc(context_p: ^CellAreaContext, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		cell_area_context_get_preferred_width_for_height :: proc(context_p: ^CellAreaContext, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		cell_area_context_get_type :: proc() -> gobj.Type ---
		cell_area_context_push_preferred_height :: proc(context_p: ^CellAreaContext, minimum_height: glib.int_, natural_height: glib.int_) ---
		cell_area_context_push_preferred_width :: proc(context_p: ^CellAreaContext, minimum_width: glib.int_, natural_width: glib.int_) ---
		cell_area_context_reset :: proc(context_p: ^CellAreaContext) ---
		cell_area_copy_context :: proc(area: ^CellArea, context_p: ^CellAreaContext) -> ^CellAreaContext ---
		cell_area_create_context :: proc(area: ^CellArea) -> ^CellAreaContext ---
		cell_area_event :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, event: ^GdkEvent, cell_area: ^GdkRectangle, flags: CellRendererState) -> glib.int_ ---
		cell_area_focus :: proc(area: ^CellArea, direction: DirectionType) -> glib.boolean ---
		cell_area_foreach :: proc(area: ^CellArea, callback: CellCallback, callback_data: glib.pointer) ---
		cell_area_foreach_alloc :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^GdkRectangle, background_area: ^GdkRectangle, callback: CellAllocCallback, callback_data: glib.pointer) ---
		cell_area_get_cell_allocation :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, renderer: ^CellRenderer, cell_area: ^GdkRectangle, allocation: ^GdkRectangle) ---
		cell_area_get_cell_at_position :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^GdkRectangle, x: glib.int_, y: glib.int_, alloc_area: ^GdkRectangle) -> ^CellRenderer ---
		cell_area_get_current_path_string :: proc(area: ^CellArea) -> cstring ---
		cell_area_get_edit_widget :: proc(area: ^CellArea) -> ^CellEditable ---
		cell_area_get_edited_cell :: proc(area: ^CellArea) -> ^CellRenderer ---
		cell_area_get_focus_cell :: proc(area: ^CellArea) -> ^CellRenderer ---
		cell_area_get_focus_from_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer) -> ^CellRenderer ---
		cell_area_get_focus_siblings :: proc(area: ^CellArea, renderer: ^CellRenderer) -> ^glib.List ---
		cell_area_get_preferred_height :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		cell_area_get_preferred_height_for_width :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		cell_area_get_preferred_width :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		cell_area_get_preferred_width_for_height :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		cell_area_get_request_mode :: proc(area: ^CellArea) -> SizeRequestMode ---
		cell_area_get_type :: proc() -> gobj.Type ---
		cell_area_has_renderer :: proc(area: ^CellArea, renderer: ^CellRenderer) -> glib.boolean ---
		cell_area_inner_cell_area :: proc(area: ^CellArea, widget: ^Widget, cell_area: ^GdkRectangle, inner_area: ^GdkRectangle) ---
		cell_area_is_activatable :: proc(area: ^CellArea) -> glib.boolean ---
		cell_area_is_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) -> glib.boolean ---
		cell_area_remove :: proc(area: ^CellArea, renderer: ^CellRenderer) ---
		cell_area_remove_focus_sibling :: proc(area: ^CellArea, renderer: ^CellRenderer, sibling: ^CellRenderer) ---
		cell_area_render :: proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cr: ^cairo.context_t, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState, paint_focus: glib.boolean) ---
		cell_area_request_renderer :: proc(area: ^CellArea, renderer: ^CellRenderer, orientation: Orientation, widget: ^Widget, for_size: glib.int_, minimum_size: ^glib.int_, natural_size: ^glib.int_) ---
		cell_area_set_focus_cell :: proc(area: ^CellArea, renderer: ^CellRenderer) ---
		cell_area_stop_editing :: proc(area: ^CellArea, canceled: glib.boolean) ---
		cell_editable_editing_done :: proc(cell_editable: ^CellEditable) ---
		cell_editable_get_type :: proc() -> gobj.Type ---
		cell_editable_remove_widget :: proc(cell_editable: ^CellEditable) ---
		cell_editable_start_editing :: proc(cell_editable: ^CellEditable, event: ^GdkEvent) ---
		cell_layout_add_attribute :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, attribute: cstring, column: glib.int_) ---
		cell_layout_clear :: proc(cell_layout: ^CellLayout) ---
		cell_layout_clear_attributes :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer) ---
		cell_layout_get_area :: proc(cell_layout: ^CellLayout) -> ^CellArea ---
		cell_layout_get_cells :: proc(cell_layout: ^CellLayout) -> ^glib.List ---
		cell_layout_get_type :: proc() -> gobj.Type ---
		cell_layout_pack_end :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean) ---
		cell_layout_pack_start :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean) ---
		cell_layout_reorder :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, position: glib.int_) ---
		cell_layout_set_attributes :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, #c_vararg var_args: ..any) ---
		cell_layout_set_cell_data_func :: proc(cell_layout: ^CellLayout, cell: ^CellRenderer, func: CellLayoutDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify) ---
		cell_renderer_accel_get_type :: proc() -> gobj.Type ---
		cell_renderer_accel_mode_get_type :: proc() -> gobj.Type ---
		cell_renderer_accel_new :: proc() -> ^CellRenderer ---
		cell_renderer_activate :: proc(cell: ^CellRenderer, event: ^GdkEvent, widget: ^Widget, path: cstring, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState) -> glib.boolean ---
		cell_renderer_class_set_accessible_type :: proc(renderer_class: ^CellRendererClass, type: gobj.Type) ---
		cell_renderer_combo_get_type :: proc() -> gobj.Type ---
		cell_renderer_combo_new :: proc() -> ^CellRenderer ---
		cell_renderer_get_aligned_area :: proc(cell: ^CellRenderer, widget: ^Widget, flags: CellRendererState, cell_area: ^GdkRectangle, aligned_area: ^GdkRectangle) ---
		cell_renderer_get_alignment :: proc(cell: ^CellRenderer, xalign: ^glib.float, yalign: ^glib.float) ---
		cell_renderer_get_fixed_size :: proc(cell: ^CellRenderer, width: ^glib.int_, height: ^glib.int_) ---
		cell_renderer_get_padding :: proc(cell: ^CellRenderer, xpad: ^glib.int_, ypad: ^glib.int_) ---
		cell_renderer_get_preferred_height :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^glib.int_, natural_size: ^glib.int_) ---
		cell_renderer_get_preferred_height_for_width :: proc(cell: ^CellRenderer, widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		cell_renderer_get_preferred_size :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^Requisition, natural_size: ^Requisition) ---
		cell_renderer_get_preferred_width :: proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^glib.int_, natural_size: ^glib.int_) ---
		cell_renderer_get_preferred_width_for_height :: proc(cell: ^CellRenderer, widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		cell_renderer_get_request_mode :: proc(cell: ^CellRenderer) -> SizeRequestMode ---
		cell_renderer_get_sensitive :: proc(cell: ^CellRenderer) -> glib.boolean ---
		cell_renderer_get_size :: proc(cell: ^CellRenderer, widget: ^Widget, cell_area: ^GdkRectangle, x_offset: ^glib.int_, y_offset: ^glib.int_, width: ^glib.int_, height: ^glib.int_) ---
		cell_renderer_get_state :: proc(cell: ^CellRenderer, widget: ^Widget, cell_state: CellRendererState) -> StateFlags ---
		cell_renderer_get_type :: proc() -> gobj.Type ---
		cell_renderer_get_visible :: proc(cell: ^CellRenderer) -> glib.boolean ---
		cell_renderer_is_activatable :: proc(cell: ^CellRenderer) -> glib.boolean ---
		cell_renderer_mode_get_type :: proc() -> gobj.Type ---
		cell_renderer_pixbuf_get_type :: proc() -> gobj.Type ---
		cell_renderer_pixbuf_new :: proc() -> ^CellRenderer ---
		cell_renderer_progress_get_type :: proc() -> gobj.Type ---
		cell_renderer_progress_new :: proc() -> ^CellRenderer ---
		cell_renderer_render :: proc(cell: ^CellRenderer, cr: ^cairo.context_t, widget: ^Widget, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState) ---
		cell_renderer_set_alignment :: proc(cell: ^CellRenderer, xalign: glib.float, yalign: glib.float) ---
		cell_renderer_set_fixed_size :: proc(cell: ^CellRenderer, width: glib.int_, height: glib.int_) ---
		cell_renderer_set_padding :: proc(cell: ^CellRenderer, xpad: glib.int_, ypad: glib.int_) ---
		cell_renderer_set_sensitive :: proc(cell: ^CellRenderer, sensitive: glib.boolean) ---
		cell_renderer_set_visible :: proc(cell: ^CellRenderer, visible: glib.boolean) ---
		cell_renderer_spin_get_type :: proc() -> gobj.Type ---
		cell_renderer_spin_new :: proc() -> ^CellRenderer ---
		cell_renderer_spinner_get_type :: proc() -> gobj.Type ---
		cell_renderer_spinner_new :: proc() -> ^CellRenderer ---
		cell_renderer_start_editing :: proc(cell: ^CellRenderer, event: ^GdkEvent, widget: ^Widget, path: cstring, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState) -> ^CellEditable ---
		cell_renderer_state_get_type :: proc() -> gobj.Type ---
		cell_renderer_stop_editing :: proc(cell: ^CellRenderer, canceled: glib.boolean) ---
		cell_renderer_text_get_type :: proc() -> gobj.Type ---
		cell_renderer_text_new :: proc() -> ^CellRenderer ---
		cell_renderer_text_set_fixed_height_from_font :: proc(renderer: ^CellRendererText, number_of_rows: glib.int_) ---
		cell_renderer_toggle_get_activatable :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---
		cell_renderer_toggle_get_active :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---
		cell_renderer_toggle_get_radio :: proc(toggle: ^CellRendererToggle) -> glib.boolean ---
		cell_renderer_toggle_get_type :: proc() -> gobj.Type ---
		cell_renderer_toggle_new :: proc() -> ^CellRenderer ---
		cell_renderer_toggle_set_activatable :: proc(toggle: ^CellRendererToggle, setting: glib.boolean) ---
		cell_renderer_toggle_set_active :: proc(toggle: ^CellRendererToggle, setting: glib.boolean) ---
		cell_renderer_toggle_set_radio :: proc(toggle: ^CellRendererToggle, radio: glib.boolean) ---
		cell_view_get_displayed_row :: proc(cell_view: ^CellView) -> ^TreePath ---
		cell_view_get_draw_sensitive :: proc(cell_view: ^CellView) -> glib.boolean ---
		cell_view_get_fit_model :: proc(cell_view: ^CellView) -> glib.boolean ---
		cell_view_get_model :: proc(cell_view: ^CellView) -> ^TreeModel ---
		cell_view_get_size_of_row :: proc(cell_view: ^CellView, path: ^TreePath, requisition: ^Requisition) -> glib.boolean ---
		cell_view_get_type :: proc() -> gobj.Type ---
		cell_view_new :: proc() -> ^Widget ---
		cell_view_new_with_context :: proc(area: ^CellArea, context_p: ^CellAreaContext) -> ^Widget ---
		cell_view_new_with_markup :: proc(markup: cstring) -> ^Widget ---
		cell_view_new_with_pixbuf :: proc(pixbuf: ^pixbuf.Pixbuf) -> ^Widget ---
		cell_view_new_with_text :: proc(text: cstring) -> ^Widget ---
		cell_view_set_background_color :: proc(cell_view: ^CellView, color: ^GdkColor) ---
		cell_view_set_background_rgba :: proc(cell_view: ^CellView, rgba: ^GdkRGBA) ---
		cell_view_set_displayed_row :: proc(cell_view: ^CellView, path: ^TreePath) ---
		cell_view_set_draw_sensitive :: proc(cell_view: ^CellView, draw_sensitive: glib.boolean) ---
		cell_view_set_fit_model :: proc(cell_view: ^CellView, fit_model: glib.boolean) ---
		cell_view_set_model :: proc(cell_view: ^CellView, model: ^TreeModel) ---
		check_button_get_type :: proc() -> gobj.Type ---
		check_button_new :: proc() -> ^Widget ---
		check_button_new_with_label :: proc(label: cstring) -> ^Widget ---
		check_button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		check_menu_item_get_active :: proc(check_menu_item: ^CheckMenuItem) -> glib.boolean ---
		check_menu_item_get_draw_as_radio :: proc(check_menu_item: ^CheckMenuItem) -> glib.boolean ---
		check_menu_item_get_inconsistent :: proc(check_menu_item: ^CheckMenuItem) -> glib.boolean ---
		check_menu_item_get_type :: proc() -> gobj.Type ---
		check_menu_item_new :: proc() -> ^Widget ---
		check_menu_item_new_with_label :: proc(label: cstring) -> ^Widget ---
		check_menu_item_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		check_menu_item_set_active :: proc(check_menu_item: ^CheckMenuItem, is_active: glib.boolean) ---
		check_menu_item_set_draw_as_radio :: proc(check_menu_item: ^CheckMenuItem, draw_as_radio: glib.boolean) ---
		check_menu_item_set_inconsistent :: proc(check_menu_item: ^CheckMenuItem, setting: glib.boolean) ---
		check_menu_item_toggled :: proc(check_menu_item: ^CheckMenuItem) ---
		check_version :: proc(required_major: glib.uint_, required_minor: glib.uint_, required_micro: glib.uint_) -> cstring ---
		clipboard_clear :: proc(clipboard: ^Clipboard) ---
		clipboard_get :: proc(selection: GdkAtom) -> ^Clipboard ---
		clipboard_get_default :: proc(display: ^GdkDisplay) -> ^Clipboard ---
		clipboard_get_display :: proc(clipboard: ^Clipboard) -> ^GdkDisplay ---
		clipboard_get_for_display :: proc(display: ^GdkDisplay, selection: GdkAtom) -> ^Clipboard ---
		clipboard_get_owner :: proc(clipboard: ^Clipboard) -> ^gobj.Object ---
		clipboard_get_selection :: proc(clipboard: ^Clipboard) -> GdkAtom ---
		clipboard_get_type :: proc() -> gobj.Type ---
		clipboard_request_contents :: proc(clipboard: ^Clipboard, target: GdkAtom, callback: ClipboardReceivedFunc, user_data: glib.pointer) ---
		clipboard_request_image :: proc(clipboard: ^Clipboard, callback: ClipboardImageReceivedFunc, user_data: glib.pointer) ---
		clipboard_request_rich_text :: proc(clipboard: ^Clipboard, buffer: ^TextBuffer, callback: ClipboardRichTextReceivedFunc, user_data: glib.pointer) ---
		clipboard_request_targets :: proc(clipboard: ^Clipboard, callback: ClipboardTargetsReceivedFunc, user_data: glib.pointer) ---
		clipboard_request_text :: proc(clipboard: ^Clipboard, callback: ClipboardTextReceivedFunc, user_data: glib.pointer) ---
		clipboard_request_uris :: proc(clipboard: ^Clipboard, callback: ClipboardURIReceivedFunc, user_data: glib.pointer) ---
		clipboard_set_can_store :: proc(clipboard: ^Clipboard, targets: [^]TargetEntry, n_targets: glib.int_) ---
		clipboard_set_image :: proc(clipboard: ^Clipboard, pixbuf: ^pixbuf.Pixbuf) ---
		clipboard_set_text :: proc(clipboard: ^Clipboard, text: cstring, len: glib.int_) ---
		clipboard_set_with_data :: proc(clipboard: ^Clipboard, targets: [^]TargetEntry, n_targets: glib.uint_, get_func: ClipboardGetFunc, clear_func: ClipboardClearFunc, user_data: glib.pointer) -> glib.boolean ---
		clipboard_set_with_owner :: proc(clipboard: ^Clipboard, targets: [^]TargetEntry, n_targets: glib.uint_, get_func: ClipboardGetFunc, clear_func: ClipboardClearFunc, owner: ^gobj.Object) -> glib.boolean ---
		clipboard_store :: proc(clipboard: ^Clipboard) ---
		clipboard_wait_for_contents :: proc(clipboard: ^Clipboard, target: GdkAtom) -> ^SelectionData ---
		clipboard_wait_for_image :: proc(clipboard: ^Clipboard) -> ^pixbuf.Pixbuf ---
		clipboard_wait_for_rich_text :: proc(clipboard: ^Clipboard, buffer: ^TextBuffer, format: ^GdkAtom, length: ^glib.size) -> ^glib.uint8 ---
		clipboard_wait_for_targets :: proc(clipboard: ^Clipboard, targets: [^]^GdkAtom, n_targets: ^glib.int_) -> glib.boolean ---
		clipboard_wait_for_text :: proc(clipboard: ^Clipboard) -> cstring ---
		clipboard_wait_for_uris :: proc(clipboard: ^Clipboard) -> ^cstring ---
		clipboard_wait_is_image_available :: proc(clipboard: ^Clipboard) -> glib.boolean ---
		clipboard_wait_is_rich_text_available :: proc(clipboard: ^Clipboard, buffer: ^TextBuffer) -> glib.boolean ---
		clipboard_wait_is_target_available :: proc(clipboard: ^Clipboard, target: GdkAtom) -> glib.boolean ---
		clipboard_wait_is_text_available :: proc(clipboard: ^Clipboard) -> glib.boolean ---
		clipboard_wait_is_uris_available :: proc(clipboard: ^Clipboard) -> glib.boolean ---
		color_button_get_alpha :: proc(button: ^ColorButton) -> glib.uint16 ---
		color_button_get_color :: proc(button: ^ColorButton, color: ^GdkColor) ---
		color_button_get_rgba :: proc(button: ^ColorButton, rgba: ^GdkRGBA) ---
		color_button_get_title :: proc(button: ^ColorButton) -> cstring ---
		color_button_get_type :: proc() -> gobj.Type ---
		color_button_get_use_alpha :: proc(button: ^ColorButton) -> glib.boolean ---
		color_button_new :: proc() -> ^Widget ---
		color_button_new_with_color :: proc(color: ^GdkColor) -> ^Widget ---
		color_button_new_with_rgba :: proc(rgba: ^GdkRGBA) -> ^Widget ---
		color_button_set_alpha :: proc(button: ^ColorButton, alpha: glib.uint16) ---
		color_button_set_color :: proc(button: ^ColorButton, color: ^GdkColor) ---
		color_button_set_rgba :: proc(button: ^ColorButton, rgba: ^GdkRGBA) ---
		color_button_set_title :: proc(button: ^ColorButton, title: cstring) ---
		color_button_set_use_alpha :: proc(button: ^ColorButton, use_alpha: glib.boolean) ---
		color_chooser_add_palette :: proc(chooser: ^ColorChooser, orientation: Orientation, colors_per_line: glib.int_, n_colors: glib.int_, colors: [^]GdkRGBA) ---
		color_chooser_dialog_get_type :: proc() -> gobj.Type ---
		color_chooser_dialog_new :: proc(title: cstring, parent: ^Window) -> ^Widget ---
		color_chooser_get_rgba :: proc(chooser: ^ColorChooser, color: ^GdkRGBA) ---
		color_chooser_get_type :: proc() -> gobj.Type ---
		color_chooser_get_use_alpha :: proc(chooser: ^ColorChooser) -> glib.boolean ---
		color_chooser_set_rgba :: proc(chooser: ^ColorChooser, color: ^GdkRGBA) ---
		color_chooser_set_use_alpha :: proc(chooser: ^ColorChooser, use_alpha: glib.boolean) ---
		color_chooser_widget_get_type :: proc() -> gobj.Type ---
		color_chooser_widget_new :: proc() -> ^Widget ---
		color_selection_dialog_get_color_selection :: proc(colorsel: ^ColorSelectionDialog) -> ^Widget ---
		color_selection_dialog_get_type :: proc() -> gobj.Type ---
		color_selection_dialog_new :: proc(title: cstring) -> ^Widget ---
		color_selection_get_current_alpha :: proc(colorsel: ^ColorSelection) -> glib.uint16 ---
		color_selection_get_current_color :: proc(colorsel: ^ColorSelection, color: ^GdkColor) ---
		color_selection_get_current_rgba :: proc(colorsel: ^ColorSelection, rgba: ^GdkRGBA) ---
		color_selection_get_has_opacity_control :: proc(colorsel: ^ColorSelection) -> glib.boolean ---
		color_selection_get_has_palette :: proc(colorsel: ^ColorSelection) -> glib.boolean ---
		color_selection_get_previous_alpha :: proc(colorsel: ^ColorSelection) -> glib.uint16 ---
		color_selection_get_previous_color :: proc(colorsel: ^ColorSelection, color: ^GdkColor) ---
		color_selection_get_previous_rgba :: proc(colorsel: ^ColorSelection, rgba: ^GdkRGBA) ---
		color_selection_get_type :: proc() -> gobj.Type ---
		color_selection_is_adjusting :: proc(colorsel: ^ColorSelection) -> glib.boolean ---
		color_selection_new :: proc() -> ^Widget ---
		color_selection_palette_from_string :: proc(str: cstring, colors: [^]^GdkColor, n_colors: ^glib.int_) -> glib.boolean ---
		color_selection_palette_to_string :: proc(colors: [^]GdkColor, n_colors: glib.int_) -> cstring ---
		color_selection_set_change_palette_with_screen_hook :: proc(func: ColorSelectionChangePaletteWithScreenFunc) -> ColorSelectionChangePaletteWithScreenFunc ---
		color_selection_set_current_alpha :: proc(colorsel: ^ColorSelection, alpha: glib.uint16) ---
		color_selection_set_current_color :: proc(colorsel: ^ColorSelection, color: ^GdkColor) ---
		color_selection_set_current_rgba :: proc(colorsel: ^ColorSelection, rgba: ^GdkRGBA) ---
		color_selection_set_has_opacity_control :: proc(colorsel: ^ColorSelection, has_opacity: glib.boolean) ---
		color_selection_set_has_palette :: proc(colorsel: ^ColorSelection, has_palette: glib.boolean) ---
		color_selection_set_previous_alpha :: proc(colorsel: ^ColorSelection, alpha: glib.uint16) ---
		color_selection_set_previous_color :: proc(colorsel: ^ColorSelection, color: ^GdkColor) ---
		color_selection_set_previous_rgba :: proc(colorsel: ^ColorSelection, rgba: ^GdkRGBA) ---
		combo_box_get_active :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_get_active_id :: proc(combo_box: ^ComboBox) -> cstring ---
		combo_box_get_active_iter :: proc(combo_box: ^ComboBox, iter: ^TreeIter) -> glib.boolean ---
		combo_box_get_add_tearoffs :: proc(combo_box: ^ComboBox) -> glib.boolean ---
		combo_box_get_button_sensitivity :: proc(combo_box: ^ComboBox) -> SensitivityType ---
		combo_box_get_column_span_column :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_get_entry_text_column :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_get_focus_on_click :: proc(combo: ^ComboBox) -> glib.boolean ---
		combo_box_get_has_entry :: proc(combo_box: ^ComboBox) -> glib.boolean ---
		combo_box_get_id_column :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_get_model :: proc(combo_box: ^ComboBox) -> ^TreeModel ---
		combo_box_get_popup_accessible :: proc(combo_box: ^ComboBox) -> ^atk.Object ---
		combo_box_get_popup_fixed_width :: proc(combo_box: ^ComboBox) -> glib.boolean ---
		combo_box_get_row_separator_func :: proc(combo_box: ^ComboBox) -> TreeViewRowSeparatorFunc ---
		combo_box_get_row_span_column :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_get_title :: proc(combo_box: ^ComboBox) -> cstring ---
		combo_box_get_type :: proc() -> gobj.Type ---
		combo_box_get_wrap_width :: proc(combo_box: ^ComboBox) -> glib.int_ ---
		combo_box_new :: proc() -> ^Widget ---
		combo_box_new_with_area :: proc(area: ^CellArea) -> ^Widget ---
		combo_box_new_with_area_and_entry :: proc(area: ^CellArea) -> ^Widget ---
		combo_box_new_with_entry :: proc() -> ^Widget ---
		combo_box_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---
		combo_box_new_with_model_and_entry :: proc(model: ^TreeModel) -> ^Widget ---
		combo_box_popdown :: proc(combo_box: ^ComboBox) ---
		combo_box_popup :: proc(combo_box: ^ComboBox) ---
		combo_box_popup_for_device :: proc(combo_box: ^ComboBox, device: ^GdkDevice) ---
		combo_box_set_active :: proc(combo_box: ^ComboBox, index_: glib.int_) ---
		combo_box_set_active_id :: proc(combo_box: ^ComboBox, active_id: cstring) -> glib.boolean ---
		combo_box_set_active_iter :: proc(combo_box: ^ComboBox, iter: ^TreeIter) ---
		combo_box_set_add_tearoffs :: proc(combo_box: ^ComboBox, add_tearoffs: glib.boolean) ---
		combo_box_set_button_sensitivity :: proc(combo_box: ^ComboBox, sensitivity: SensitivityType) ---
		combo_box_set_column_span_column :: proc(combo_box: ^ComboBox, column_span: glib.int_) ---
		combo_box_set_entry_text_column :: proc(combo_box: ^ComboBox, text_column: glib.int_) ---
		combo_box_set_focus_on_click :: proc(combo: ^ComboBox, focus_on_click: glib.boolean) ---
		combo_box_set_id_column :: proc(combo_box: ^ComboBox, id_column: glib.int_) ---
		combo_box_set_model :: proc(combo_box: ^ComboBox, model: ^TreeModel) ---
		combo_box_set_popup_fixed_width :: proc(combo_box: ^ComboBox, fixed: glib.boolean) ---
		combo_box_set_row_separator_func :: proc(combo_box: ^ComboBox, func: TreeViewRowSeparatorFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		combo_box_set_row_span_column :: proc(combo_box: ^ComboBox, row_span: glib.int_) ---
		combo_box_set_title :: proc(combo_box: ^ComboBox, title: cstring) ---
		combo_box_set_wrap_width :: proc(combo_box: ^ComboBox, width: glib.int_) ---
		combo_box_text_append :: proc(combo_box: ^ComboBoxText, id: cstring, text: cstring) ---
		combo_box_text_append_text :: proc(combo_box: ^ComboBoxText, text: cstring) ---
		combo_box_text_get_active_text :: proc(combo_box: ^ComboBoxText) -> cstring ---
		combo_box_text_get_type :: proc() -> gobj.Type ---
		combo_box_text_insert :: proc(combo_box: ^ComboBoxText, position: glib.int_, id: cstring, text: cstring) ---
		combo_box_text_insert_text :: proc(combo_box: ^ComboBoxText, position: glib.int_, text: cstring) ---
		combo_box_text_new :: proc() -> ^Widget ---
		combo_box_text_new_with_entry :: proc() -> ^Widget ---
		combo_box_text_prepend :: proc(combo_box: ^ComboBoxText, id: cstring, text: cstring) ---
		combo_box_text_prepend_text :: proc(combo_box: ^ComboBoxText, text: cstring) ---
		combo_box_text_remove :: proc(combo_box: ^ComboBoxText, position: glib.int_) ---
		combo_box_text_remove_all :: proc(combo_box: ^ComboBoxText) ---
		container_add :: proc(container: ^Container, widget: ^Widget) ---
		container_add_with_properties :: proc(container: ^Container, widget: ^Widget, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		container_check_resize :: proc(container: ^Container) ---
		container_child_get :: proc(container: ^Container, child: ^Widget, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		container_child_get_property :: proc(container: ^Container, child: ^Widget, property_name: cstring, value: ^gobj.Value) ---
		container_child_notify :: proc(container: ^Container, child: ^Widget, child_property: cstring) ---
		container_child_notify_by_pspec :: proc(container: ^Container, child: ^Widget, pspec: ^gobj.ParamSpec) ---
		container_child_set :: proc(container: ^Container, child: ^Widget, first_prop_name: cstring, #c_vararg var_args: ..any) ---
		container_child_set_property :: proc(container: ^Container, child: ^Widget, property_name: cstring, value: ^gobj.Value) ---
		container_child_type :: proc(container: ^Container) -> gobj.Type ---
		container_class_find_child_property :: proc(cclass: ^gobj.ObjectClass, property_name: cstring) -> ^gobj.ParamSpec ---
		container_class_handle_border_width :: proc(klass: ^ContainerClass) ---
		container_class_install_child_properties :: proc(cclass: ^ContainerClass, n_pspecs: glib.uint_, pspecs: [^]^gobj.ParamSpec) ---
		container_class_install_child_property :: proc(cclass: ^ContainerClass, property_id: glib.uint_, pspec: ^gobj.ParamSpec) ---
		container_class_list_child_properties :: proc(cclass: ^gobj.ObjectClass, n_properties: ^glib.uint_) -> ^^gobj.ParamSpec ---
		container_forall :: proc(container: ^Container, callback: Callback, callback_data: glib.pointer) ---
		container_foreach :: proc(container: ^Container, callback: Callback, callback_data: glib.pointer) ---
		container_get_border_width :: proc(container: ^Container) -> glib.uint_ ---
		container_get_children :: proc(container: ^Container) -> ^glib.List ---
		container_get_focus_chain :: proc(container: ^Container, focusable_widgets: ^^glib.List) -> glib.boolean ---
		container_get_focus_child :: proc(container: ^Container) -> ^Widget ---
		container_get_focus_hadjustment :: proc(container: ^Container) -> ^Adjustment ---
		container_get_focus_vadjustment :: proc(container: ^Container) -> ^Adjustment ---
		container_get_path_for_child :: proc(container: ^Container, child: ^Widget) -> ^WidgetPath ---
		container_get_resize_mode :: proc(container: ^Container) -> ResizeMode ---
		container_get_type :: proc() -> gobj.Type ---
		container_propagate_draw :: proc(container: ^Container, child: ^Widget, cr: ^cairo.context_t) ---
		container_remove :: proc(container: ^Container, widget: ^Widget) ---
		container_resize_children :: proc(container: ^Container) ---
		container_set_border_width :: proc(container: ^Container, border_width: glib.uint_) ---
		container_set_focus_chain :: proc(container: ^Container, focusable_widgets: ^glib.List) ---
		container_set_focus_child :: proc(container: ^Container, child: ^Widget) ---
		container_set_focus_hadjustment :: proc(container: ^Container, adjustment: ^Adjustment) ---
		container_set_focus_vadjustment :: proc(container: ^Container, adjustment: ^Adjustment) ---
		container_set_reallocate_redraws :: proc(container: ^Container, needs_redraws: glib.boolean) ---
		container_set_resize_mode :: proc(container: ^Container, resize_mode: ResizeMode) ---
		container_unset_focus_chain :: proc(container: ^Container) ---
		corner_type_get_type :: proc() -> gobj.Type ---
		css_provider_error_get_type :: proc() -> gobj.Type ---
		css_provider_error_quark :: proc() -> glib.Quark ---
		css_provider_get_default :: proc() -> ^CssProvider ---
		css_provider_get_named :: proc(name: cstring, variant: cstring) -> ^CssProvider ---
		css_provider_get_type :: proc() -> gobj.Type ---
		css_provider_load_from_data :: proc(css_provider: ^CssProvider, data: cstring, length: glib.ssize, error: ^^glib.Error) -> glib.boolean ---
		css_provider_load_from_file :: proc(css_provider: ^CssProvider, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---
		css_provider_load_from_path :: proc(css_provider: ^CssProvider, path: cstring, error: ^^glib.Error) -> glib.boolean ---
		css_provider_load_from_resource :: proc(css_provider: ^CssProvider, resource_path: cstring) ---
		css_provider_new :: proc() -> ^CssProvider ---
		css_provider_to_string :: proc(provider: ^CssProvider) -> cstring ---
		css_section_get_end_line :: proc(section: ^CssSection) -> glib.uint_ ---
		css_section_get_end_position :: proc(section: ^CssSection) -> glib.uint_ ---
		css_section_get_file :: proc(section: ^CssSection) -> ^gio.File ---
		css_section_get_parent :: proc(section: ^CssSection) -> ^CssSection ---
		css_section_get_section_type :: proc(section: ^CssSection) -> CssSectionType ---
		css_section_get_start_line :: proc(section: ^CssSection) -> glib.uint_ ---
		css_section_get_start_position :: proc(section: ^CssSection) -> glib.uint_ ---
		css_section_get_type :: proc() -> gobj.Type ---
		css_section_ref :: proc(section: ^CssSection) -> ^CssSection ---
		css_section_type_get_type :: proc() -> gobj.Type ---
		css_section_unref :: proc(section: ^CssSection) ---
		debug_flag_get_type :: proc() -> gobj.Type ---
		delete_type_get_type :: proc() -> gobj.Type ---
		dest_defaults_get_type :: proc() -> gobj.Type ---
		device_grab_add :: proc(widget: ^Widget, device: ^GdkDevice, block_others: glib.boolean) ---
		device_grab_remove :: proc(widget: ^Widget, device: ^GdkDevice) ---
		dialog_add_action_widget :: proc(dialog: ^Dialog, child: ^Widget, response_id: glib.int_) ---
		dialog_add_button :: proc(dialog: ^Dialog, button_text: cstring, response_id: glib.int_) -> ^Widget ---
		dialog_add_buttons :: proc(dialog: ^Dialog, first_button_text: cstring, #c_vararg var_args: ..any) ---
		dialog_flags_get_type :: proc() -> gobj.Type ---
		dialog_get_action_area :: proc(dialog: ^Dialog) -> ^Widget ---
		dialog_get_content_area :: proc(dialog: ^Dialog) -> ^Widget ---
		dialog_get_header_bar :: proc(dialog: ^Dialog) -> ^Widget ---
		dialog_get_response_for_widget :: proc(dialog: ^Dialog, widget: ^Widget) -> glib.int_ ---
		dialog_get_type :: proc() -> gobj.Type ---
		dialog_get_widget_for_response :: proc(dialog: ^Dialog, response_id: glib.int_) -> ^Widget ---
		dialog_new :: proc() -> ^Widget ---
		dialog_new_with_buttons :: proc(title: cstring, parent: ^Window, flags: DialogFlags, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		dialog_response :: proc(dialog: ^Dialog, response_id: glib.int_) ---
		dialog_run :: proc(dialog: ^Dialog) -> glib.int_ ---
		dialog_set_alternative_button_order :: proc(dialog: ^Dialog, first_response_id: glib.int_, #c_vararg var_args: ..any) ---
		dialog_set_alternative_button_order_from_array :: proc(dialog: ^Dialog, n_params: glib.int_, new_order: ^glib.int_) ---
		dialog_set_default_response :: proc(dialog: ^Dialog, response_id: glib.int_) ---
		dialog_set_response_sensitive :: proc(dialog: ^Dialog, response_id: glib.int_, setting: glib.boolean) ---
		direction_type_get_type :: proc() -> gobj.Type ---
		disable_setlocale :: proc() ---
		distribute_natural_allocation :: proc(extra_space: glib.int_, n_requested_sizes: glib.uint_, sizes: [^]RequestedSize) -> glib.int_ ---
		drag_begin :: proc(widget: ^Widget, targets: ^TargetList, actions: GdkDragAction, button: glib.int_, event: ^GdkEvent) -> ^GdkDragContext ---
		drag_begin_with_coordinates :: proc(widget: ^Widget, targets: ^TargetList, actions: GdkDragAction, button: glib.int_, event: ^GdkEvent, x: glib.int_, y: glib.int_) -> ^GdkDragContext ---
		drag_cancel :: proc(context_p: ^GdkDragContext) ---
		drag_check_threshold :: proc(widget: ^Widget, start_x: glib.int_, start_y: glib.int_, current_x: glib.int_, current_y: glib.int_) -> glib.boolean ---
		drag_dest_add_image_targets :: proc(widget: ^Widget) ---
		drag_dest_add_text_targets :: proc(widget: ^Widget) ---
		drag_dest_add_uri_targets :: proc(widget: ^Widget) ---
		drag_dest_find_target :: proc(widget: ^Widget, context_p: ^GdkDragContext, target_list: ^TargetList) -> GdkAtom ---
		drag_dest_get_target_list :: proc(widget: ^Widget) -> ^TargetList ---
		drag_dest_get_track_motion :: proc(widget: ^Widget) -> glib.boolean ---
		drag_dest_set :: proc(widget: ^Widget, flags: DestDefaults, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		drag_dest_set_proxy :: proc(widget: ^Widget, proxy_window: ^GdkWindow, protocol: GdkDragProtocol, use_coordinates: glib.boolean) ---
		drag_dest_set_target_list :: proc(widget: ^Widget, target_list: ^TargetList) ---
		drag_dest_set_track_motion :: proc(widget: ^Widget, track_motion: glib.boolean) ---
		drag_dest_unset :: proc(widget: ^Widget) ---
		drag_finish :: proc(context_p: ^GdkDragContext, success: glib.boolean, del: glib.boolean, time_: glib.uint32) ---
		drag_get_data :: proc(widget: ^Widget, context_p: ^GdkDragContext, target: GdkAtom, time_: glib.uint32) ---
		drag_get_source_widget :: proc(context_p: ^GdkDragContext) -> ^Widget ---
		drag_highlight :: proc(widget: ^Widget) ---
		drag_result_get_type :: proc() -> gobj.Type ---
		drag_set_icon_default :: proc(context_p: ^GdkDragContext) ---
		drag_set_icon_gicon :: proc(context_p: ^GdkDragContext, icon: ^gio.Icon, hot_x: glib.int_, hot_y: glib.int_) ---
		drag_set_icon_name :: proc(context_p: ^GdkDragContext, icon_name: cstring, hot_x: glib.int_, hot_y: glib.int_) ---
		drag_set_icon_pixbuf :: proc(context_p: ^GdkDragContext, pixbuf: ^pixbuf.Pixbuf, hot_x: glib.int_, hot_y: glib.int_) ---
		drag_set_icon_stock :: proc(context_p: ^GdkDragContext, stock_id: cstring, hot_x: glib.int_, hot_y: glib.int_) ---
		drag_set_icon_surface :: proc(context_p: ^GdkDragContext, surface: ^cairo.surface_t) ---
		drag_set_icon_widget :: proc(context_p: ^GdkDragContext, widget: ^Widget, hot_x: glib.int_, hot_y: glib.int_) ---
		drag_source_add_image_targets :: proc(widget: ^Widget) ---
		drag_source_add_text_targets :: proc(widget: ^Widget) ---
		drag_source_add_uri_targets :: proc(widget: ^Widget) ---
		drag_source_get_target_list :: proc(widget: ^Widget) -> ^TargetList ---
		drag_source_set :: proc(widget: ^Widget, start_button_mask: GdkModifierType, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		drag_source_set_icon_gicon :: proc(widget: ^Widget, icon: ^gio.Icon) ---
		drag_source_set_icon_name :: proc(widget: ^Widget, icon_name: cstring) ---
		drag_source_set_icon_pixbuf :: proc(widget: ^Widget, pixbuf: ^pixbuf.Pixbuf) ---
		drag_source_set_icon_stock :: proc(widget: ^Widget, stock_id: cstring) ---
		drag_source_set_target_list :: proc(widget: ^Widget, target_list: ^TargetList) ---
		drag_source_unset :: proc(widget: ^Widget) ---
		drag_unhighlight :: proc(widget: ^Widget) ---
		draw_insertion_cursor :: proc(widget: ^Widget, cr: ^cairo.context_t, location: ^GdkRectangle, is_primary: glib.boolean, direction: TextDirection, draw_arrow: glib.boolean) ---
		drawing_area_get_type :: proc() -> gobj.Type ---
		drawing_area_new :: proc() -> ^Widget ---
		editable_copy_clipboard :: proc(editable: ^Editable) ---
		editable_cut_clipboard :: proc(editable: ^Editable) ---
		editable_delete_selection :: proc(editable: ^Editable) ---
		editable_delete_text :: proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_) ---
		editable_get_chars :: proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_) -> cstring ---
		editable_get_editable :: proc(editable: ^Editable) -> glib.boolean ---
		editable_get_position :: proc(editable: ^Editable) -> glib.int_ ---
		editable_get_selection_bounds :: proc(editable: ^Editable, start_pos: ^glib.int_, end_pos: ^glib.int_) -> glib.boolean ---
		editable_get_type :: proc() -> gobj.Type ---
		editable_insert_text :: proc(editable: ^Editable, new_text: cstring, new_text_length: glib.int_, position: ^glib.int_) ---
		editable_paste_clipboard :: proc(editable: ^Editable) ---
		editable_select_region :: proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_) ---
		editable_set_editable :: proc(editable: ^Editable, is_editable: glib.boolean) ---
		editable_set_position :: proc(editable: ^Editable, position: glib.int_) ---
		entry_buffer_delete_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.int_) -> glib.uint_ ---
		entry_buffer_emit_deleted_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_) ---
		entry_buffer_emit_inserted_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_) ---
		entry_buffer_get_bytes :: proc(buffer: ^EntryBuffer) -> glib.size ---
		entry_buffer_get_length :: proc(buffer: ^EntryBuffer) -> glib.uint_ ---
		entry_buffer_get_max_length :: proc(buffer: ^EntryBuffer) -> glib.int_ ---
		entry_buffer_get_text :: proc(buffer: ^EntryBuffer) -> cstring ---
		entry_buffer_get_type :: proc() -> gobj.Type ---
		entry_buffer_insert_text :: proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.int_) -> glib.uint_ ---
		entry_buffer_new :: proc(initial_chars: cstring, n_initial_chars: glib.int_) -> ^EntryBuffer ---
		entry_buffer_set_max_length :: proc(buffer: ^EntryBuffer, max_length: glib.int_) ---
		entry_buffer_set_text :: proc(buffer: ^EntryBuffer, chars: cstring, n_chars: glib.int_) ---
		entry_completion_complete :: proc(completion: ^EntryCompletion) ---
		entry_completion_compute_prefix :: proc(completion: ^EntryCompletion, key: cstring) -> cstring ---
		entry_completion_delete_action :: proc(completion: ^EntryCompletion, index_: glib.int_) ---
		entry_completion_get_completion_prefix :: proc(completion: ^EntryCompletion) -> cstring ---
		entry_completion_get_entry :: proc(completion: ^EntryCompletion) -> ^Widget ---
		entry_completion_get_inline_completion :: proc(completion: ^EntryCompletion) -> glib.boolean ---
		entry_completion_get_inline_selection :: proc(completion: ^EntryCompletion) -> glib.boolean ---
		entry_completion_get_minimum_key_length :: proc(completion: ^EntryCompletion) -> glib.int_ ---
		entry_completion_get_model :: proc(completion: ^EntryCompletion) -> ^TreeModel ---
		entry_completion_get_popup_completion :: proc(completion: ^EntryCompletion) -> glib.boolean ---
		entry_completion_get_popup_set_width :: proc(completion: ^EntryCompletion) -> glib.boolean ---
		entry_completion_get_popup_single_match :: proc(completion: ^EntryCompletion) -> glib.boolean ---
		entry_completion_get_text_column :: proc(completion: ^EntryCompletion) -> glib.int_ ---
		entry_completion_get_type :: proc() -> gobj.Type ---
		entry_completion_insert_action_markup :: proc(completion: ^EntryCompletion, index_: glib.int_, markup: cstring) ---
		entry_completion_insert_action_text :: proc(completion: ^EntryCompletion, index_: glib.int_, text: cstring) ---
		entry_completion_insert_prefix :: proc(completion: ^EntryCompletion) ---
		entry_completion_new :: proc() -> ^EntryCompletion ---
		entry_completion_new_with_area :: proc(area: ^CellArea) -> ^EntryCompletion ---
		entry_completion_set_inline_completion :: proc(completion: ^EntryCompletion, inline_completion: glib.boolean) ---
		entry_completion_set_inline_selection :: proc(completion: ^EntryCompletion, inline_selection: glib.boolean) ---
		entry_completion_set_match_func :: proc(completion: ^EntryCompletion, func: EntryCompletionMatchFunc, func_data: glib.pointer, func_notify: glib.DestroyNotify) ---
		entry_completion_set_minimum_key_length :: proc(completion: ^EntryCompletion, length: glib.int_) ---
		entry_completion_set_model :: proc(completion: ^EntryCompletion, model: ^TreeModel) ---
		entry_completion_set_popup_completion :: proc(completion: ^EntryCompletion, popup_completion: glib.boolean) ---
		entry_completion_set_popup_set_width :: proc(completion: ^EntryCompletion, popup_set_width: glib.boolean) ---
		entry_completion_set_popup_single_match :: proc(completion: ^EntryCompletion, popup_single_match: glib.boolean) ---
		entry_completion_set_text_column :: proc(completion: ^EntryCompletion, column: glib.int_) ---
		entry_get_activates_default :: proc(entry: ^Entry) -> glib.boolean ---
		entry_get_alignment :: proc(entry: ^Entry) -> glib.float ---
		entry_get_attributes :: proc(entry: ^Entry) -> ^pango.AttrList ---
		entry_get_buffer :: proc(entry: ^Entry) -> ^EntryBuffer ---
		entry_get_completion :: proc(entry: ^Entry) -> ^EntryCompletion ---
		entry_get_current_icon_drag_source :: proc(entry: ^Entry) -> glib.int_ ---
		entry_get_cursor_hadjustment :: proc(entry: ^Entry) -> ^Adjustment ---
		entry_get_has_frame :: proc(entry: ^Entry) -> glib.boolean ---
		entry_get_icon_activatable :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> glib.boolean ---
		entry_get_icon_area :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon_area: ^GdkRectangle) ---
		entry_get_icon_at_pos :: proc(entry: ^Entry, x: glib.int_, y: glib.int_) -> glib.int_ ---
		entry_get_icon_gicon :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ^gio.Icon ---
		entry_get_icon_name :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---
		entry_get_icon_pixbuf :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ^pixbuf.Pixbuf ---
		entry_get_icon_sensitive :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> glib.boolean ---
		entry_get_icon_stock :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---
		entry_get_icon_storage_type :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> ImageType ---
		entry_get_icon_tooltip_markup :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---
		entry_get_icon_tooltip_text :: proc(entry: ^Entry, icon_pos: EntryIconPosition) -> cstring ---
		entry_get_inner_border :: proc(entry: ^Entry) -> ^Border ---
		entry_get_input_hints :: proc(entry: ^Entry) -> InputHints ---
		entry_get_input_purpose :: proc(entry: ^Entry) -> InputPurpose ---
		entry_get_invisible_char :: proc(entry: ^Entry) -> glib.unichar ---
		entry_get_layout :: proc(entry: ^Entry) -> ^pango.Layout ---
		entry_get_layout_offsets :: proc(entry: ^Entry, x: ^glib.int_, y: ^glib.int_) ---
		entry_get_max_length :: proc(entry: ^Entry) -> glib.int_ ---
		entry_get_max_width_chars :: proc(entry: ^Entry) -> glib.int_ ---
		entry_get_overwrite_mode :: proc(entry: ^Entry) -> glib.boolean ---
		entry_get_placeholder_text :: proc(entry: ^Entry) -> cstring ---
		entry_get_progress_fraction :: proc(entry: ^Entry) -> glib.double ---
		entry_get_progress_pulse_step :: proc(entry: ^Entry) -> glib.double ---
		entry_get_tabs :: proc(entry: ^Entry) -> ^pango.TabArray ---
		entry_get_text :: proc(entry: ^Entry) -> cstring ---
		entry_get_text_area :: proc(entry: ^Entry, text_area: ^GdkRectangle) ---
		entry_get_text_length :: proc(entry: ^Entry) -> glib.uint16 ---
		entry_get_type :: proc() -> gobj.Type ---
		entry_get_visibility :: proc(entry: ^Entry) -> glib.boolean ---
		entry_get_width_chars :: proc(entry: ^Entry) -> glib.int_ ---
		entry_grab_focus_without_selecting :: proc(entry: ^Entry) ---
		entry_icon_position_get_type :: proc() -> gobj.Type ---
		entry_im_context_filter_keypress :: proc(entry: ^Entry, event: ^GdkEventKey) -> glib.boolean ---
		entry_layout_index_to_text_index :: proc(entry: ^Entry, layout_index: glib.int_) -> glib.int_ ---
		entry_new :: proc() -> ^Widget ---
		entry_new_with_buffer :: proc(buffer: ^EntryBuffer) -> ^Widget ---
		entry_progress_pulse :: proc(entry: ^Entry) ---
		entry_reset_im_context :: proc(entry: ^Entry) ---
		entry_set_activates_default :: proc(entry: ^Entry, setting: glib.boolean) ---
		entry_set_alignment :: proc(entry: ^Entry, xalign: glib.float) ---
		entry_set_attributes :: proc(entry: ^Entry, attrs: ^pango.AttrList) ---
		entry_set_buffer :: proc(entry: ^Entry, buffer: ^EntryBuffer) ---
		entry_set_completion :: proc(entry: ^Entry, completion: ^EntryCompletion) ---
		entry_set_cursor_hadjustment :: proc(entry: ^Entry, adjustment: ^Adjustment) ---
		entry_set_has_frame :: proc(entry: ^Entry, setting: glib.boolean) ---
		entry_set_icon_activatable :: proc(entry: ^Entry, icon_pos: EntryIconPosition, activatable: glib.boolean) ---
		entry_set_icon_drag_source :: proc(entry: ^Entry, icon_pos: EntryIconPosition, target_list: ^TargetList, actions: GdkDragAction) ---
		entry_set_icon_from_gicon :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon: ^gio.Icon) ---
		entry_set_icon_from_icon_name :: proc(entry: ^Entry, icon_pos: EntryIconPosition, icon_name: cstring) ---
		entry_set_icon_from_pixbuf :: proc(entry: ^Entry, icon_pos: EntryIconPosition, pixbuf: ^pixbuf.Pixbuf) ---
		entry_set_icon_from_stock :: proc(entry: ^Entry, icon_pos: EntryIconPosition, stock_id: cstring) ---
		entry_set_icon_sensitive :: proc(entry: ^Entry, icon_pos: EntryIconPosition, sensitive: glib.boolean) ---
		entry_set_icon_tooltip_markup :: proc(entry: ^Entry, icon_pos: EntryIconPosition, tooltip: cstring) ---
		entry_set_icon_tooltip_text :: proc(entry: ^Entry, icon_pos: EntryIconPosition, tooltip: cstring) ---
		entry_set_inner_border :: proc(entry: ^Entry, border: ^Border) ---
		entry_set_input_hints :: proc(entry: ^Entry, hints: InputHints) ---
		entry_set_input_purpose :: proc(entry: ^Entry, purpose: InputPurpose) ---
		entry_set_invisible_char :: proc(entry: ^Entry, ch: glib.unichar) ---
		entry_set_max_length :: proc(entry: ^Entry, max: glib.int_) ---
		entry_set_max_width_chars :: proc(entry: ^Entry, n_chars: glib.int_) ---
		entry_set_overwrite_mode :: proc(entry: ^Entry, overwrite: glib.boolean) ---
		entry_set_placeholder_text :: proc(entry: ^Entry, text: cstring) ---
		entry_set_progress_fraction :: proc(entry: ^Entry, fraction: glib.double) ---
		entry_set_progress_pulse_step :: proc(entry: ^Entry, fraction: glib.double) ---
		entry_set_tabs :: proc(entry: ^Entry, tabs: ^pango.TabArray) ---
		entry_set_text :: proc(entry: ^Entry, text: cstring) ---
		entry_set_visibility :: proc(entry: ^Entry, visible: glib.boolean) ---
		entry_set_width_chars :: proc(entry: ^Entry, n_chars: glib.int_) ---
		entry_text_index_to_layout_index :: proc(entry: ^Entry, text_index: glib.int_) -> glib.int_ ---
		entry_unset_invisible_char :: proc(entry: ^Entry) ---
		event_box_get_above_child :: proc(event_box: ^EventBox) -> glib.boolean ---
		event_box_get_type :: proc() -> gobj.Type ---
		event_box_get_visible_window :: proc(event_box: ^EventBox) -> glib.boolean ---
		event_box_new :: proc() -> ^Widget ---
		event_box_set_above_child :: proc(event_box: ^EventBox, above_child: glib.boolean) ---
		event_box_set_visible_window :: proc(event_box: ^EventBox, visible_window: glib.boolean) ---
		event_controller_get_propagation_phase :: proc(controller: ^EventController) -> PropagationPhase ---
		event_controller_get_type :: proc() -> gobj.Type ---
		event_controller_get_widget :: proc(controller: ^EventController) -> ^Widget ---
		event_controller_handle_event :: proc(controller: ^EventController, event: ^GdkEvent) -> glib.boolean ---
		event_controller_key_forward :: proc(controller: ^EventControllerKey, widget: ^Widget) -> glib.boolean ---
		event_controller_key_get_group :: proc(controller: ^EventControllerKey) -> glib.uint_ ---
		event_controller_key_get_im_context :: proc(controller: ^EventControllerKey) -> ^IMContext ---
		event_controller_key_get_type :: proc() -> gobj.Type ---
		event_controller_key_new :: proc(widget: ^Widget) -> ^EventController ---
		event_controller_key_set_im_context :: proc(controller: ^EventControllerKey, im_context: ^IMContext) ---
		event_controller_motion_get_type :: proc() -> gobj.Type ---
		event_controller_motion_new :: proc(widget: ^Widget) -> ^EventController ---
		event_controller_reset :: proc(controller: ^EventController) ---
		event_controller_scroll_flags_get_type :: proc() -> gobj.Type ---
		event_controller_scroll_get_flags :: proc(scroll: ^EventControllerScroll) -> EventControllerScrollFlags ---
		event_controller_scroll_get_type :: proc() -> gobj.Type ---
		event_controller_scroll_new :: proc(widget: ^Widget, flags: EventControllerScrollFlags) -> ^EventController ---
		event_controller_scroll_set_flags :: proc(scroll: ^EventControllerScroll, flags: EventControllerScrollFlags) ---
		event_controller_set_propagation_phase :: proc(controller: ^EventController, phase: PropagationPhase) ---
		event_sequence_state_get_type :: proc() -> gobj.Type ---
		events_pending :: proc() -> glib.boolean ---
		expander_get_expanded :: proc(expander: ^Expander) -> glib.boolean ---
		expander_get_label :: proc(expander: ^Expander) -> cstring ---
		expander_get_label_fill :: proc(expander: ^Expander) -> glib.boolean ---
		expander_get_label_widget :: proc(expander: ^Expander) -> ^Widget ---
		expander_get_resize_toplevel :: proc(expander: ^Expander) -> glib.boolean ---
		expander_get_spacing :: proc(expander: ^Expander) -> glib.int_ ---
		expander_get_type :: proc() -> gobj.Type ---
		expander_get_use_markup :: proc(expander: ^Expander) -> glib.boolean ---
		expander_get_use_underline :: proc(expander: ^Expander) -> glib.boolean ---
		expander_new :: proc(label: cstring) -> ^Widget ---
		expander_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		expander_set_expanded :: proc(expander: ^Expander, expanded: glib.boolean) ---
		expander_set_label :: proc(expander: ^Expander, label: cstring) ---
		expander_set_label_fill :: proc(expander: ^Expander, label_fill: glib.boolean) ---
		expander_set_label_widget :: proc(expander: ^Expander, label_widget: ^Widget) ---
		expander_set_resize_toplevel :: proc(expander: ^Expander, resize_toplevel: glib.boolean) ---
		expander_set_spacing :: proc(expander: ^Expander, spacing: glib.int_) ---
		expander_set_use_markup :: proc(expander: ^Expander, use_markup: glib.boolean) ---
		expander_set_use_underline :: proc(expander: ^Expander, use_underline: glib.boolean) ---
		expander_style_get_type :: proc() -> gobj.Type ---
		file_chooser_action_get_type :: proc() -> gobj.Type ---
		file_chooser_add_choice :: proc(chooser: ^FileChooser, id: cstring, label: cstring, options: [^]cstring, option_labels: [^]cstring) ---
		file_chooser_add_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---
		file_chooser_add_shortcut_folder :: proc(chooser: ^FileChooser, folder: cstring, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_add_shortcut_folder_uri :: proc(chooser: ^FileChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_button_get_focus_on_click :: proc(button: ^FileChooserButton) -> glib.boolean ---
		file_chooser_button_get_title :: proc(button: ^FileChooserButton) -> cstring ---
		file_chooser_button_get_type :: proc() -> gobj.Type ---
		file_chooser_button_get_width_chars :: proc(button: ^FileChooserButton) -> glib.int_ ---
		file_chooser_button_new :: proc(title: cstring, action: FileChooserAction) -> ^Widget ---
		file_chooser_button_new_with_dialog :: proc(dialog: ^Widget) -> ^Widget ---
		file_chooser_button_set_focus_on_click :: proc(button: ^FileChooserButton, focus_on_click: glib.boolean) ---
		file_chooser_button_set_title :: proc(button: ^FileChooserButton, title: cstring) ---
		file_chooser_button_set_width_chars :: proc(button: ^FileChooserButton, n_chars: glib.int_) ---
		file_chooser_confirmation_get_type :: proc() -> gobj.Type ---
		file_chooser_dialog_get_type :: proc() -> gobj.Type ---
		file_chooser_dialog_new :: proc(title: cstring, parent: ^Window, action: FileChooserAction, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		file_chooser_error_get_type :: proc() -> gobj.Type ---
		file_chooser_error_quark :: proc() -> glib.Quark ---
		file_chooser_get_action :: proc(chooser: ^FileChooser) -> FileChooserAction ---
		file_chooser_get_choice :: proc(chooser: ^FileChooser, id: cstring) -> cstring ---
		file_chooser_get_create_folders :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_current_folder :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_current_folder_file :: proc(chooser: ^FileChooser) -> ^gio.File ---
		file_chooser_get_current_folder_uri :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_current_name :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_do_overwrite_confirmation :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_extra_widget :: proc(chooser: ^FileChooser) -> ^Widget ---
		file_chooser_get_file :: proc(chooser: ^FileChooser) -> ^gio.File ---
		file_chooser_get_filename :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_filenames :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_get_files :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_get_filter :: proc(chooser: ^FileChooser) -> ^FileFilter ---
		file_chooser_get_local_only :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_preview_file :: proc(chooser: ^FileChooser) -> ^gio.File ---
		file_chooser_get_preview_filename :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_preview_uri :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_preview_widget :: proc(chooser: ^FileChooser) -> ^Widget ---
		file_chooser_get_preview_widget_active :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_select_multiple :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_show_hidden :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_get_type :: proc() -> gobj.Type ---
		file_chooser_get_uri :: proc(chooser: ^FileChooser) -> cstring ---
		file_chooser_get_uris :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_get_use_preview_label :: proc(chooser: ^FileChooser) -> glib.boolean ---
		file_chooser_list_filters :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_list_shortcut_folder_uris :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_list_shortcut_folders :: proc(chooser: ^FileChooser) -> ^glib.SList ---
		file_chooser_native_get_accept_label :: proc(self: ^FileChooserNative) -> cstring ---
		file_chooser_native_get_cancel_label :: proc(self: ^FileChooserNative) -> cstring ---
		file_chooser_native_get_type :: proc() -> gobj.Type ---
		file_chooser_native_new :: proc(title: cstring, parent: ^Window, action: FileChooserAction, accept_label: cstring, cancel_label: cstring) -> ^FileChooserNative ---
		file_chooser_native_set_accept_label :: proc(self: ^FileChooserNative, accept_label: cstring) ---
		file_chooser_native_set_cancel_label :: proc(self: ^FileChooserNative, cancel_label: cstring) ---
		file_chooser_remove_choice :: proc(chooser: ^FileChooser, id: cstring) ---
		file_chooser_remove_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---
		file_chooser_remove_shortcut_folder :: proc(chooser: ^FileChooser, folder: cstring, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_remove_shortcut_folder_uri :: proc(chooser: ^FileChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_select_all :: proc(chooser: ^FileChooser) ---
		file_chooser_select_file :: proc(chooser: ^FileChooser, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_select_filename :: proc(chooser: ^FileChooser, filename: cstring) -> glib.boolean ---
		file_chooser_select_uri :: proc(chooser: ^FileChooser, uri: cstring) -> glib.boolean ---
		file_chooser_set_action :: proc(chooser: ^FileChooser, action: FileChooserAction) ---
		file_chooser_set_choice :: proc(chooser: ^FileChooser, id: cstring, option: cstring) ---
		file_chooser_set_create_folders :: proc(chooser: ^FileChooser, create_folders: glib.boolean) ---
		file_chooser_set_current_folder :: proc(chooser: ^FileChooser, filename: cstring) -> glib.boolean ---
		file_chooser_set_current_folder_file :: proc(chooser: ^FileChooser, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_set_current_folder_uri :: proc(chooser: ^FileChooser, uri: cstring) -> glib.boolean ---
		file_chooser_set_current_name :: proc(chooser: ^FileChooser, name: cstring) ---
		file_chooser_set_do_overwrite_confirmation :: proc(chooser: ^FileChooser, do_overwrite_confirmation: glib.boolean) ---
		file_chooser_set_extra_widget :: proc(chooser: ^FileChooser, extra_widget: ^Widget) ---
		file_chooser_set_file :: proc(chooser: ^FileChooser, file: ^gio.File, error: ^^glib.Error) -> glib.boolean ---
		file_chooser_set_filename :: proc(chooser: ^FileChooser, filename: cstring) -> glib.boolean ---
		file_chooser_set_filter :: proc(chooser: ^FileChooser, filter: ^FileFilter) ---
		file_chooser_set_local_only :: proc(chooser: ^FileChooser, local_only: glib.boolean) ---
		file_chooser_set_preview_widget :: proc(chooser: ^FileChooser, preview_widget: ^Widget) ---
		file_chooser_set_preview_widget_active :: proc(chooser: ^FileChooser, active: glib.boolean) ---
		file_chooser_set_select_multiple :: proc(chooser: ^FileChooser, select_multiple: glib.boolean) ---
		file_chooser_set_show_hidden :: proc(chooser: ^FileChooser, show_hidden: glib.boolean) ---
		file_chooser_set_uri :: proc(chooser: ^FileChooser, uri: cstring) -> glib.boolean ---
		file_chooser_set_use_preview_label :: proc(chooser: ^FileChooser, use_label: glib.boolean) ---
		file_chooser_unselect_all :: proc(chooser: ^FileChooser) ---
		file_chooser_unselect_file :: proc(chooser: ^FileChooser, file: ^gio.File) ---
		file_chooser_unselect_filename :: proc(chooser: ^FileChooser, filename: cstring) ---
		file_chooser_unselect_uri :: proc(chooser: ^FileChooser, uri: cstring) ---
		file_chooser_widget_get_type :: proc() -> gobj.Type ---
		file_chooser_widget_new :: proc(action: FileChooserAction) -> ^Widget ---
		file_filter_add_custom :: proc(filter: ^FileFilter, needed: FileFilterFlags, func: FileFilterFunc, data: glib.pointer, notify: glib.DestroyNotify) ---
		file_filter_add_mime_type :: proc(filter: ^FileFilter, mime_type: cstring) ---
		file_filter_add_pattern :: proc(filter: ^FileFilter, pattern: cstring) ---
		file_filter_add_pixbuf_formats :: proc(filter: ^FileFilter) ---
		file_filter_filter :: proc(filter: ^FileFilter, filter_info: ^FileFilterInfo) -> glib.boolean ---
		file_filter_flags_get_type :: proc() -> gobj.Type ---
		file_filter_get_name :: proc(filter: ^FileFilter) -> cstring ---
		file_filter_get_needed :: proc(filter: ^FileFilter) -> FileFilterFlags ---
		file_filter_get_type :: proc() -> gobj.Type ---
		file_filter_new :: proc() -> ^FileFilter ---
		file_filter_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^FileFilter ---
		file_filter_set_name :: proc(filter: ^FileFilter, name: cstring) ---
		file_filter_to_gvariant :: proc(filter: ^FileFilter) -> ^glib.Variant ---
		fixed_get_type :: proc() -> gobj.Type ---
		fixed_move :: proc(fixed: ^Fixed, widget: ^Widget, x: glib.int_, y: glib.int_) ---
		fixed_new :: proc() -> ^Widget ---
		fixed_put :: proc(fixed: ^Fixed, widget: ^Widget, x: glib.int_, y: glib.int_) ---
		flow_box_bind_model :: proc(box: ^FlowBox, model: ^gio.ListModel, create_widget_func: FlowBoxCreateWidgetFunc, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) ---
		flow_box_child_changed :: proc(child: ^FlowBoxChild) ---
		flow_box_child_get_index :: proc(child: ^FlowBoxChild) -> glib.int_ ---
		flow_box_child_get_type :: proc() -> gobj.Type ---
		flow_box_child_is_selected :: proc(child: ^FlowBoxChild) -> glib.boolean ---
		flow_box_child_new :: proc() -> ^Widget ---
		flow_box_get_activate_on_single_click :: proc(box: ^FlowBox) -> glib.boolean ---
		flow_box_get_child_at_index :: proc(box: ^FlowBox, idx: glib.int_) -> ^FlowBoxChild ---
		flow_box_get_child_at_pos :: proc(box: ^FlowBox, x: glib.int_, y: glib.int_) -> ^FlowBoxChild ---
		flow_box_get_column_spacing :: proc(box: ^FlowBox) -> glib.uint_ ---
		flow_box_get_homogeneous :: proc(box: ^FlowBox) -> glib.boolean ---
		flow_box_get_max_children_per_line :: proc(box: ^FlowBox) -> glib.uint_ ---
		flow_box_get_min_children_per_line :: proc(box: ^FlowBox) -> glib.uint_ ---
		flow_box_get_row_spacing :: proc(box: ^FlowBox) -> glib.uint_ ---
		flow_box_get_selected_children :: proc(box: ^FlowBox) -> ^glib.List ---
		flow_box_get_selection_mode :: proc(box: ^FlowBox) -> SelectionMode ---
		flow_box_get_type :: proc() -> gobj.Type ---
		flow_box_insert :: proc(box: ^FlowBox, widget: ^Widget, position: glib.int_) ---
		flow_box_invalidate_filter :: proc(box: ^FlowBox) ---
		flow_box_invalidate_sort :: proc(box: ^FlowBox) ---
		flow_box_new :: proc() -> ^Widget ---
		flow_box_select_all :: proc(box: ^FlowBox) ---
		flow_box_select_child :: proc(box: ^FlowBox, child: ^FlowBoxChild) ---
		flow_box_selected_foreach :: proc(box: ^FlowBox, func: FlowBoxForeachFunc, data: glib.pointer) ---
		flow_box_set_activate_on_single_click :: proc(box: ^FlowBox, single: glib.boolean) ---
		flow_box_set_column_spacing :: proc(box: ^FlowBox, spacing: glib.uint_) ---
		flow_box_set_filter_func :: proc(box: ^FlowBox, filter_func: FlowBoxFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		flow_box_set_hadjustment :: proc(box: ^FlowBox, adjustment: ^Adjustment) ---
		flow_box_set_homogeneous :: proc(box: ^FlowBox, homogeneous: glib.boolean) ---
		flow_box_set_max_children_per_line :: proc(box: ^FlowBox, n_children: glib.uint_) ---
		flow_box_set_min_children_per_line :: proc(box: ^FlowBox, n_children: glib.uint_) ---
		flow_box_set_row_spacing :: proc(box: ^FlowBox, spacing: glib.uint_) ---
		flow_box_set_selection_mode :: proc(box: ^FlowBox, mode: SelectionMode) ---
		flow_box_set_sort_func :: proc(box: ^FlowBox, sort_func: FlowBoxSortFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		flow_box_set_vadjustment :: proc(box: ^FlowBox, adjustment: ^Adjustment) ---
		flow_box_unselect_all :: proc(box: ^FlowBox) ---
		flow_box_unselect_child :: proc(box: ^FlowBox, child: ^FlowBoxChild) ---
		font_button_get_font_name :: proc(font_button: ^FontButton) -> cstring ---
		font_button_get_show_size :: proc(font_button: ^FontButton) -> glib.boolean ---
		font_button_get_show_style :: proc(font_button: ^FontButton) -> glib.boolean ---
		font_button_get_title :: proc(font_button: ^FontButton) -> cstring ---
		font_button_get_type :: proc() -> gobj.Type ---
		font_button_get_use_font :: proc(font_button: ^FontButton) -> glib.boolean ---
		font_button_get_use_size :: proc(font_button: ^FontButton) -> glib.boolean ---
		font_button_new :: proc() -> ^Widget ---
		font_button_new_with_font :: proc(fontname: cstring) -> ^Widget ---
		font_button_set_font_name :: proc(font_button: ^FontButton, fontname: cstring) -> glib.boolean ---
		font_button_set_show_size :: proc(font_button: ^FontButton, show_size: glib.boolean) ---
		font_button_set_show_style :: proc(font_button: ^FontButton, show_style: glib.boolean) ---
		font_button_set_title :: proc(font_button: ^FontButton, title: cstring) ---
		font_button_set_use_font :: proc(font_button: ^FontButton, use_font: glib.boolean) ---
		font_button_set_use_size :: proc(font_button: ^FontButton, use_size: glib.boolean) ---
		font_chooser_dialog_get_type :: proc() -> gobj.Type ---
		font_chooser_dialog_new :: proc(title: cstring, parent: ^Window) -> ^Widget ---
		font_chooser_get_font :: proc(fontchooser: ^FontChooser) -> cstring ---
		font_chooser_get_font_desc :: proc(fontchooser: ^FontChooser) -> ^pango.FontDescription ---
		font_chooser_get_font_face :: proc(fontchooser: ^FontChooser) -> ^pango.FontFace ---
		font_chooser_get_font_family :: proc(fontchooser: ^FontChooser) -> ^pango.FontFamily ---
		font_chooser_get_font_features :: proc(fontchooser: ^FontChooser) -> cstring ---
		font_chooser_get_font_map :: proc(fontchooser: ^FontChooser) -> ^pango.FontMap ---
		font_chooser_get_font_size :: proc(fontchooser: ^FontChooser) -> glib.int_ ---
		font_chooser_get_language :: proc(fontchooser: ^FontChooser) -> cstring ---
		font_chooser_get_level :: proc(fontchooser: ^FontChooser) -> FontChooserLevel ---
		font_chooser_get_preview_text :: proc(fontchooser: ^FontChooser) -> cstring ---
		font_chooser_get_show_preview_entry :: proc(fontchooser: ^FontChooser) -> glib.boolean ---
		font_chooser_get_type :: proc() -> gobj.Type ---
		font_chooser_level_get_type :: proc() -> gobj.Type ---
		font_chooser_set_filter_func :: proc(fontchooser: ^FontChooser, filter: FontFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		font_chooser_set_font :: proc(fontchooser: ^FontChooser, fontname: cstring) ---
		font_chooser_set_font_desc :: proc(fontchooser: ^FontChooser, font_desc: ^pango.FontDescription) ---
		font_chooser_set_font_map :: proc(fontchooser: ^FontChooser, fontmap: ^pango.FontMap) ---
		font_chooser_set_language :: proc(fontchooser: ^FontChooser, language: cstring) ---
		font_chooser_set_level :: proc(fontchooser: ^FontChooser, level: FontChooserLevel) ---
		font_chooser_set_preview_text :: proc(fontchooser: ^FontChooser, text: cstring) ---
		font_chooser_set_show_preview_entry :: proc(fontchooser: ^FontChooser, show_preview_entry: glib.boolean) ---
		font_chooser_widget_get_type :: proc() -> gobj.Type ---
		font_chooser_widget_new :: proc() -> ^Widget ---
		font_selection_dialog_get_cancel_button :: proc(fsd: ^FontSelectionDialog) -> ^Widget ---
		font_selection_dialog_get_font_name :: proc(fsd: ^FontSelectionDialog) -> cstring ---
		font_selection_dialog_get_font_selection :: proc(fsd: ^FontSelectionDialog) -> ^Widget ---
		font_selection_dialog_get_ok_button :: proc(fsd: ^FontSelectionDialog) -> ^Widget ---
		font_selection_dialog_get_preview_text :: proc(fsd: ^FontSelectionDialog) -> cstring ---
		font_selection_dialog_get_type :: proc() -> gobj.Type ---
		font_selection_dialog_new :: proc(title: cstring) -> ^Widget ---
		font_selection_dialog_set_font_name :: proc(fsd: ^FontSelectionDialog, fontname: cstring) -> glib.boolean ---
		font_selection_dialog_set_preview_text :: proc(fsd: ^FontSelectionDialog, text: cstring) ---
		font_selection_get_face :: proc(fontsel: ^FontSelection) -> ^pango.FontFace ---
		font_selection_get_face_list :: proc(fontsel: ^FontSelection) -> ^Widget ---
		font_selection_get_family :: proc(fontsel: ^FontSelection) -> ^pango.FontFamily ---
		font_selection_get_family_list :: proc(fontsel: ^FontSelection) -> ^Widget ---
		font_selection_get_font_name :: proc(fontsel: ^FontSelection) -> cstring ---
		font_selection_get_preview_entry :: proc(fontsel: ^FontSelection) -> ^Widget ---
		font_selection_get_preview_text :: proc(fontsel: ^FontSelection) -> cstring ---
		font_selection_get_size :: proc(fontsel: ^FontSelection) -> glib.int_ ---
		font_selection_get_size_entry :: proc(fontsel: ^FontSelection) -> ^Widget ---
		font_selection_get_size_list :: proc(fontsel: ^FontSelection) -> ^Widget ---
		font_selection_get_type :: proc() -> gobj.Type ---
		font_selection_new :: proc() -> ^Widget ---
		font_selection_set_font_name :: proc(fontsel: ^FontSelection, fontname: cstring) -> glib.boolean ---
		font_selection_set_preview_text :: proc(fontsel: ^FontSelection, text: cstring) ---
		frame_get_label :: proc(frame: ^Frame) -> cstring ---
		frame_get_label_align :: proc(frame: ^Frame, xalign: ^glib.float, yalign: ^glib.float) ---
		frame_get_label_widget :: proc(frame: ^Frame) -> ^Widget ---
		frame_get_shadow_type :: proc(frame: ^Frame) -> ShadowType ---
		frame_get_type :: proc() -> gobj.Type ---
		frame_new :: proc(label: cstring) -> ^Widget ---
		frame_set_label :: proc(frame: ^Frame, label: cstring) ---
		frame_set_label_align :: proc(frame: ^Frame, xalign: glib.float, yalign: glib.float) ---
		frame_set_label_widget :: proc(frame: ^Frame, label_widget: ^Widget) ---
		frame_set_shadow_type :: proc(frame: ^Frame, type: ShadowType) ---
		gdk_add_option_entries_libgtk_only :: proc(group: ^glib.OptionGroup) ---
		gdk_anchor_hints_get_type :: proc() -> gobj.Type ---
		gdk_app_launch_context_get_type :: proc() -> gobj.Type ---
		gdk_app_launch_context_new :: proc() -> ^GdkAppLaunchContext ---
		gdk_app_launch_context_set_desktop :: proc(context_p: ^GdkAppLaunchContext, desktop: glib.int_) ---
		gdk_app_launch_context_set_display :: proc(context_p: ^GdkAppLaunchContext, display: ^GdkDisplay) ---
		gdk_app_launch_context_set_icon :: proc(context_p: ^GdkAppLaunchContext, icon: ^gio.Icon) ---
		gdk_app_launch_context_set_icon_name :: proc(context_p: ^GdkAppLaunchContext, icon_name: cstring) ---
		gdk_app_launch_context_set_screen :: proc(context_p: ^GdkAppLaunchContext, screen: ^GdkScreen) ---
		gdk_app_launch_context_set_timestamp :: proc(context_p: ^GdkAppLaunchContext, timestamp: glib.uint32) ---
		gdk_atom_intern :: proc(atom_name: cstring, only_if_exists: glib.boolean) -> GdkAtom ---
		gdk_atom_intern_static_string :: proc(atom_name: cstring) -> GdkAtom ---
		gdk_atom_name :: proc(atom: GdkAtom) -> cstring ---
		gdk_axis_flags_get_type :: proc() -> gobj.Type ---
		gdk_axis_use_get_type :: proc() -> gobj.Type ---
		gdk_beep :: proc() ---
		gdk_byte_order_get_type :: proc() -> gobj.Type ---
		gdk_cairo_create :: proc(window: ^GdkWindow) -> ^cairo.context_t ---
		gdk_cairo_draw_from_gl :: proc(cr: ^cairo.context_t, window: ^GdkWindow, source: i32, source_type: i32, buffer_scale: i32, x: i32, y: i32, width: i32, height: i32) ---
		gdk_cairo_get_clip_rectangle :: proc(cr: ^cairo.context_t, rect: ^GdkRectangle) -> glib.boolean ---
		gdk_cairo_get_drawing_context :: proc(cr: ^cairo.context_t) -> ^GdkDrawingContext ---
		gdk_cairo_rectangle :: proc(cr: ^cairo.context_t, rectangle: ^GdkRectangle) ---
		gdk_cairo_region :: proc(cr: ^cairo.context_t, region: ^cairo.region_t) ---
		gdk_cairo_region_create_from_surface :: proc(surface: ^cairo.surface_t) -> ^cairo.region_t ---
		gdk_cairo_set_source_color :: proc(cr: ^cairo.context_t, color: ^GdkColor) ---
		gdk_cairo_set_source_pixbuf :: proc(cr: ^cairo.context_t, pixbuf: ^pixbuf.Pixbuf, pixbuf_x: glib.double, pixbuf_y: glib.double) ---
		gdk_cairo_set_source_rgba :: proc(cr: ^cairo.context_t, rgba: ^GdkRGBA) ---
		gdk_cairo_set_source_window :: proc(cr: ^cairo.context_t, window: ^GdkWindow, x: glib.double, y: glib.double) ---
		gdk_cairo_surface_create_from_pixbuf :: proc(pixbuf: ^pixbuf.Pixbuf, scale: i32, for_window: ^GdkWindow) -> ^cairo.surface_t ---
		gdk_color_copy :: proc(color: ^GdkColor) -> ^GdkColor ---
		gdk_color_equal :: proc(colora: ^GdkColor, colorb: ^GdkColor) -> glib.boolean ---
		gdk_color_free :: proc(color: ^GdkColor) ---
		gdk_color_get_type :: proc() -> gobj.Type ---
		gdk_color_hash :: proc(color: ^GdkColor) -> glib.uint_ ---
		gdk_color_parse :: proc(spec: cstring, color: ^GdkColor) -> glib.boolean ---
		gdk_color_to_string :: proc(color: ^GdkColor) -> cstring ---
		gdk_crossing_mode_get_type :: proc() -> gobj.Type ---
		gdk_cursor_get_cursor_type :: proc(cursor: ^GdkCursor) -> GdkCursorType ---
		gdk_cursor_get_display :: proc(cursor: ^GdkCursor) -> ^GdkDisplay ---
		gdk_cursor_get_image :: proc(cursor: ^GdkCursor) -> ^pixbuf.Pixbuf ---
		gdk_cursor_get_surface :: proc(cursor: ^GdkCursor, x_hot: ^glib.double, y_hot: ^glib.double) -> ^cairo.surface_t ---
		gdk_cursor_get_type :: proc() -> gobj.Type ---
		gdk_cursor_new :: proc(cursor_type: GdkCursorType) -> ^GdkCursor ---
		gdk_cursor_new_for_display :: proc(display: ^GdkDisplay, cursor_type: GdkCursorType) -> ^GdkCursor ---
		gdk_cursor_new_from_name :: proc(display: ^GdkDisplay, name: cstring) -> ^GdkCursor ---
		gdk_cursor_new_from_pixbuf :: proc(display: ^GdkDisplay, pixbuf: ^pixbuf.Pixbuf, x: glib.int_, y: glib.int_) -> ^GdkCursor ---
		gdk_cursor_new_from_surface :: proc(display: ^GdkDisplay, surface: ^cairo.surface_t, x: glib.double, y: glib.double) -> ^GdkCursor ---
		gdk_cursor_ref :: proc(cursor: ^GdkCursor) -> ^GdkCursor ---
		gdk_cursor_type_get_type :: proc() -> gobj.Type ---
		gdk_cursor_unref :: proc(cursor: ^GdkCursor) ---
		gdk_device_free_history :: proc(events: [^]^GdkTimeCoord, n_events: glib.int_) ---
		gdk_device_get_associated_device :: proc(device: ^GdkDevice) -> ^GdkDevice ---
		gdk_device_get_axes :: proc(device: ^GdkDevice) -> GdkAxisFlags ---
		gdk_device_get_axis :: proc(device: ^GdkDevice, axes: [^]glib.double, use: GdkAxisUse, value: ^glib.double) -> glib.boolean ---
		gdk_device_get_axis_use :: proc(device: ^GdkDevice, index_: glib.uint_) -> GdkAxisUse ---
		gdk_device_get_axis_value :: proc(device: ^GdkDevice, axes: [^]glib.double, axis_label: GdkAtom, value: ^glib.double) -> glib.boolean ---
		gdk_device_get_device_type :: proc(device: ^GdkDevice) -> GdkDeviceType ---
		gdk_device_get_display :: proc(device: ^GdkDevice) -> ^GdkDisplay ---
		gdk_device_get_has_cursor :: proc(device: ^GdkDevice) -> glib.boolean ---
		gdk_device_get_history :: proc(device: ^GdkDevice, window: ^GdkWindow, start: glib.uint32, stop: glib.uint32, events: [^]^^GdkTimeCoord, n_events: ^glib.int_) -> glib.boolean ---
		gdk_device_get_key :: proc(device: ^GdkDevice, index_: glib.uint_, keyval: ^glib.uint_, modifiers: ^GdkModifierType) -> glib.boolean ---
		gdk_device_get_last_event_window :: proc(device: ^GdkDevice) -> ^GdkWindow ---
		gdk_device_get_mode :: proc(device: ^GdkDevice) -> GdkInputMode ---
		gdk_device_get_n_axes :: proc(device: ^GdkDevice) -> glib.int_ ---
		gdk_device_get_n_keys :: proc(device: ^GdkDevice) -> glib.int_ ---
		gdk_device_get_name :: proc(device: ^GdkDevice) -> cstring ---
		gdk_device_get_position :: proc(device: ^GdkDevice, screen: ^^GdkScreen, x: ^glib.int_, y: ^glib.int_) ---
		gdk_device_get_position_double :: proc(device: ^GdkDevice, screen: ^^GdkScreen, x: ^glib.double, y: ^glib.double) ---
		gdk_device_get_product_id :: proc(device: ^GdkDevice) -> cstring ---
		gdk_device_get_seat :: proc(device: ^GdkDevice) -> ^GdkSeat ---
		gdk_device_get_source :: proc(device: ^GdkDevice) -> GdkInputSource ---
		gdk_device_get_state :: proc(device: ^GdkDevice, window: ^GdkWindow, axes: [^]glib.double, mask: ^GdkModifierType) ---
		gdk_device_get_type :: proc() -> gobj.Type ---
		gdk_device_get_vendor_id :: proc(device: ^GdkDevice) -> cstring ---
		gdk_device_get_window_at_position :: proc(device: ^GdkDevice, win_x: ^glib.int_, win_y: ^glib.int_) -> ^GdkWindow ---
		gdk_device_get_window_at_position_double :: proc(device: ^GdkDevice, win_x: ^glib.double, win_y: ^glib.double) -> ^GdkWindow ---
		gdk_device_grab :: proc(device: ^GdkDevice, window: ^GdkWindow, grab_ownership: GdkGrabOwnership, owner_events: glib.boolean, event_mask: GdkEventMask, cursor: ^GdkCursor, time_: glib.uint32) -> GdkGrabStatus ---
		gdk_device_grab_info_libgtk_only :: proc(display: ^GdkDisplay, device: ^GdkDevice, grab_window: ^^GdkWindow, owner_events: ^glib.boolean) -> glib.boolean ---
		gdk_device_list_axes :: proc(device: ^GdkDevice) -> ^glib.List ---
		gdk_device_list_slave_devices :: proc(device: ^GdkDevice) -> ^glib.List ---
		gdk_device_manager_get_client_pointer :: proc(device_manager: ^GdkDeviceManager) -> ^GdkDevice ---
		gdk_device_manager_get_display :: proc(device_manager: ^GdkDeviceManager) -> ^GdkDisplay ---
		gdk_device_manager_get_type :: proc() -> gobj.Type ---
		gdk_device_manager_list_devices :: proc(device_manager: ^GdkDeviceManager, type: GdkDeviceType) -> ^glib.List ---
		gdk_device_pad_feature_get_type :: proc() -> gobj.Type ---
		gdk_device_pad_get_feature_group :: proc(pad: ^GdkDevicePad, feature: GdkDevicePadFeature, feature_idx: glib.int_) -> glib.int_ ---
		gdk_device_pad_get_group_n_modes :: proc(pad: ^GdkDevicePad, group_idx: glib.int_) -> glib.int_ ---
		gdk_device_pad_get_n_features :: proc(pad: ^GdkDevicePad, feature: GdkDevicePadFeature) -> glib.int_ ---
		gdk_device_pad_get_n_groups :: proc(pad: ^GdkDevicePad) -> glib.int_ ---
		gdk_device_pad_get_type :: proc() -> gobj.Type ---
		gdk_device_set_axis_use :: proc(device: ^GdkDevice, index_: glib.uint_, use: GdkAxisUse) ---
		gdk_device_set_key :: proc(device: ^GdkDevice, index_: glib.uint_, keyval: glib.uint_, modifiers: GdkModifierType) ---
		gdk_device_set_mode :: proc(device: ^GdkDevice, mode: GdkInputMode) -> glib.boolean ---
		gdk_device_tool_get_hardware_id :: proc(tool: ^GdkDeviceTool) -> glib.uint64 ---
		gdk_device_tool_get_serial :: proc(tool: ^GdkDeviceTool) -> glib.uint64 ---
		gdk_device_tool_get_tool_type :: proc(tool: ^GdkDeviceTool) -> GdkDeviceToolType ---
		gdk_device_tool_get_type :: proc() -> gobj.Type ---
		gdk_device_tool_type_get_type :: proc() -> gobj.Type ---
		gdk_device_type_get_type :: proc() -> gobj.Type ---
		gdk_device_ungrab :: proc(device: ^GdkDevice, time_: glib.uint32) ---
		gdk_device_warp :: proc(device: ^GdkDevice, screen: ^GdkScreen, x: glib.int_, y: glib.int_) ---
		gdk_disable_multidevice :: proc() ---
		gdk_display_beep :: proc(display: ^GdkDisplay) ---
		gdk_display_close :: proc(display: ^GdkDisplay) ---
		gdk_display_device_is_grabbed :: proc(display: ^GdkDisplay, device: ^GdkDevice) -> glib.boolean ---
		gdk_display_flush :: proc(display: ^GdkDisplay) ---
		gdk_display_get_app_launch_context :: proc(display: ^GdkDisplay) -> ^GdkAppLaunchContext ---
		gdk_display_get_default :: proc() -> ^GdkDisplay ---
		gdk_display_get_default_cursor_size :: proc(display: ^GdkDisplay) -> glib.uint_ ---
		gdk_display_get_default_group :: proc(display: ^GdkDisplay) -> ^GdkWindow ---
		gdk_display_get_default_screen :: proc(display: ^GdkDisplay) -> ^GdkScreen ---
		gdk_display_get_default_seat :: proc(display: ^GdkDisplay) -> ^GdkSeat ---
		gdk_display_get_device_manager :: proc(display: ^GdkDisplay) -> ^GdkDeviceManager ---
		gdk_display_get_event :: proc(display: ^GdkDisplay) -> ^GdkEvent ---
		gdk_display_get_maximal_cursor_size :: proc(display: ^GdkDisplay, width: ^glib.uint_, height: ^glib.uint_) ---
		gdk_display_get_monitor :: proc(display: ^GdkDisplay, monitor_num: i32) -> ^GdkMonitor ---
		gdk_display_get_monitor_at_point :: proc(display: ^GdkDisplay, x: i32, y: i32) -> ^GdkMonitor ---
		gdk_display_get_monitor_at_window :: proc(display: ^GdkDisplay, window: ^GdkWindow) -> ^GdkMonitor ---
		gdk_display_get_n_monitors :: proc(display: ^GdkDisplay) -> i32 ---
		gdk_display_get_n_screens :: proc(display: ^GdkDisplay) -> glib.int_ ---
		gdk_display_get_name :: proc(display: ^GdkDisplay) -> cstring ---
		gdk_display_get_pointer :: proc(display: ^GdkDisplay, screen: ^^GdkScreen, x: ^glib.int_, y: ^glib.int_, mask: ^GdkModifierType) ---
		gdk_display_get_primary_monitor :: proc(display: ^GdkDisplay) -> ^GdkMonitor ---
		gdk_display_get_screen :: proc(display: ^GdkDisplay, screen_num: glib.int_) -> ^GdkScreen ---
		gdk_display_get_type :: proc() -> gobj.Type ---
		gdk_display_get_window_at_pointer :: proc(display: ^GdkDisplay, win_x: ^glib.int_, win_y: ^glib.int_) -> ^GdkWindow ---
		gdk_display_has_pending :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_is_closed :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_keyboard_ungrab :: proc(display: ^GdkDisplay, time_: glib.uint32) ---
		gdk_display_list_devices :: proc(display: ^GdkDisplay) -> ^glib.List ---
		gdk_display_list_seats :: proc(display: ^GdkDisplay) -> ^glib.List ---
		gdk_display_manager_get :: proc() -> ^GdkDisplayManager ---
		gdk_display_manager_get_default_display :: proc(manager: ^GdkDisplayManager) -> ^GdkDisplay ---
		gdk_display_manager_get_type :: proc() -> gobj.Type ---
		gdk_display_manager_list_displays :: proc(manager: ^GdkDisplayManager) -> ^glib.SList ---
		gdk_display_manager_open_display :: proc(manager: ^GdkDisplayManager, name: cstring) -> ^GdkDisplay ---
		gdk_display_manager_set_default_display :: proc(manager: ^GdkDisplayManager, display: ^GdkDisplay) ---
		gdk_display_notify_startup_complete :: proc(display: ^GdkDisplay, startup_id: cstring) ---
		gdk_display_open :: proc(display_name: cstring) -> ^GdkDisplay ---
		gdk_display_open_default_libgtk_only :: proc() -> ^GdkDisplay ---
		gdk_display_peek_event :: proc(display: ^GdkDisplay) -> ^GdkEvent ---
		gdk_display_pointer_is_grabbed :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_pointer_ungrab :: proc(display: ^GdkDisplay, time_: glib.uint32) ---
		gdk_display_put_event :: proc(display: ^GdkDisplay, event: ^GdkEvent) ---
		gdk_display_request_selection_notification :: proc(display: ^GdkDisplay, selection: GdkAtom) -> glib.boolean ---
		gdk_display_set_double_click_distance :: proc(display: ^GdkDisplay, distance: glib.uint_) ---
		gdk_display_set_double_click_time :: proc(display: ^GdkDisplay, msec: glib.uint_) ---
		gdk_display_store_clipboard :: proc(display: ^GdkDisplay, clipboard_window: ^GdkWindow, time_: glib.uint32, targets: [^]GdkAtom, n_targets: glib.int_) ---
		gdk_display_supports_clipboard_persistence :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_composite :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_cursor_alpha :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_cursor_color :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_input_shapes :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_selection_notification :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_supports_shapes :: proc(display: ^GdkDisplay) -> glib.boolean ---
		gdk_display_sync :: proc(display: ^GdkDisplay) ---
		gdk_display_warp_pointer :: proc(display: ^GdkDisplay, screen: ^GdkScreen, x: glib.int_, y: glib.int_) ---
		gdk_drag_abort :: proc(context_p: ^GdkDragContext, time_: glib.uint32) ---
		gdk_drag_action_get_type :: proc() -> gobj.Type ---
		gdk_drag_begin :: proc(window: ^GdkWindow, targets: ^glib.List) -> ^GdkDragContext ---
		gdk_drag_begin_for_device :: proc(window: ^GdkWindow, device: ^GdkDevice, targets: ^glib.List) -> ^GdkDragContext ---
		gdk_drag_begin_from_point :: proc(window: ^GdkWindow, device: ^GdkDevice, targets: ^glib.List, x_root: glib.int_, y_root: glib.int_) -> ^GdkDragContext ---
		gdk_drag_cancel_reason_get_type :: proc() -> gobj.Type ---
		gdk_drag_context_get_actions :: proc(context_p: ^GdkDragContext) -> GdkDragAction ---
		gdk_drag_context_get_dest_window :: proc(context_p: ^GdkDragContext) -> ^GdkWindow ---
		gdk_drag_context_get_device :: proc(context_p: ^GdkDragContext) -> ^GdkDevice ---
		gdk_drag_context_get_drag_window :: proc(context_p: ^GdkDragContext) -> ^GdkWindow ---
		gdk_drag_context_get_protocol :: proc(context_p: ^GdkDragContext) -> GdkDragProtocol ---
		gdk_drag_context_get_selected_action :: proc(context_p: ^GdkDragContext) -> GdkDragAction ---
		gdk_drag_context_get_source_window :: proc(context_p: ^GdkDragContext) -> ^GdkWindow ---
		gdk_drag_context_get_suggested_action :: proc(context_p: ^GdkDragContext) -> GdkDragAction ---
		gdk_drag_context_get_type :: proc() -> gobj.Type ---
		gdk_drag_context_list_targets :: proc(context_p: ^GdkDragContext) -> ^glib.List ---
		gdk_drag_context_manage_dnd :: proc(context_p: ^GdkDragContext, ipc_window: ^GdkWindow, actions: GdkDragAction) -> glib.boolean ---
		gdk_drag_context_set_device :: proc(context_p: ^GdkDragContext, device: ^GdkDevice) ---
		gdk_drag_context_set_hotspot :: proc(context_p: ^GdkDragContext, hot_x: glib.int_, hot_y: glib.int_) ---
		gdk_drag_drop :: proc(context_p: ^GdkDragContext, time_: glib.uint32) ---
		gdk_drag_drop_done :: proc(context_p: ^GdkDragContext, success: glib.boolean) ---
		gdk_drag_drop_succeeded :: proc(context_p: ^GdkDragContext) -> glib.boolean ---
		gdk_drag_find_window_for_screen :: proc(context_p: ^GdkDragContext, drag_window: ^GdkWindow, screen: ^GdkScreen, x_root: glib.int_, y_root: glib.int_, dest_window: ^^GdkWindow, protocol: ^GdkDragProtocol) ---
		gdk_drag_get_selection :: proc(context_p: ^GdkDragContext) -> GdkAtom ---
		gdk_drag_motion :: proc(context_p: ^GdkDragContext, dest_window: ^GdkWindow, protocol: GdkDragProtocol, x_root: glib.int_, y_root: glib.int_, suggested_action: GdkDragAction, possible_actions: GdkDragAction, time_: glib.uint32) -> glib.boolean ---
		gdk_drag_protocol_get_type :: proc() -> gobj.Type ---
		gdk_drag_status :: proc(context_p: ^GdkDragContext, action: GdkDragAction, time_: glib.uint32) ---
		gdk_drawing_context_get_cairo_context :: proc(context_p: ^GdkDrawingContext) -> ^cairo.context_t ---
		gdk_drawing_context_get_clip :: proc(context_p: ^GdkDrawingContext) -> ^cairo.region_t ---
		gdk_drawing_context_get_type :: proc() -> gobj.Type ---
		gdk_drawing_context_get_window :: proc(context_p: ^GdkDrawingContext) -> ^GdkWindow ---
		gdk_drawing_context_is_valid :: proc(context_p: ^GdkDrawingContext) -> glib.boolean ---
		gdk_drop_finish :: proc(context_p: ^GdkDragContext, success: glib.boolean, time_: glib.uint32) ---
		gdk_drop_reply :: proc(context_p: ^GdkDragContext, accepted: glib.boolean, time_: glib.uint32) ---
		gdk_error_trap_pop :: proc() -> glib.int_ ---
		gdk_error_trap_pop_ignored :: proc() ---
		gdk_error_trap_push :: proc() ---
		gdk_event_copy :: proc(event: ^GdkEvent) -> ^GdkEvent ---
		gdk_event_free :: proc(event: ^GdkEvent) ---
		gdk_event_get :: proc() -> ^GdkEvent ---
		gdk_event_get_axis :: proc(event: ^GdkEvent, axis_use: GdkAxisUse, value: ^glib.double) -> glib.boolean ---
		gdk_event_get_button :: proc(event: ^GdkEvent, button: ^glib.uint_) -> glib.boolean ---
		gdk_event_get_click_count :: proc(event: ^GdkEvent, click_count: ^glib.uint_) -> glib.boolean ---
		gdk_event_get_coords :: proc(event: ^GdkEvent, x_win: ^glib.double, y_win: ^glib.double) -> glib.boolean ---
		gdk_event_get_device :: proc(event: ^GdkEvent) -> ^GdkDevice ---
		gdk_event_get_device_tool :: proc(event: ^GdkEvent) -> ^GdkDeviceTool ---
		gdk_event_get_event_sequence :: proc(event: ^GdkEvent) -> ^GdkEventSequence ---
		gdk_event_get_event_type :: proc(event: ^GdkEvent) -> GdkEventType ---
		gdk_event_get_keycode :: proc(event: ^GdkEvent, keycode: ^glib.uint16) -> glib.boolean ---
		gdk_event_get_keyval :: proc(event: ^GdkEvent, keyval: ^glib.uint_) -> glib.boolean ---
		gdk_event_get_pointer_emulated :: proc(event: ^GdkEvent) -> glib.boolean ---
		gdk_event_get_root_coords :: proc(event: ^GdkEvent, x_root: ^glib.double, y_root: ^glib.double) -> glib.boolean ---
		gdk_event_get_scancode :: proc(event: ^GdkEvent) -> i32 ---
		gdk_event_get_screen :: proc(event: ^GdkEvent) -> ^GdkScreen ---
		gdk_event_get_scroll_deltas :: proc(event: ^GdkEvent, delta_x: ^glib.double, delta_y: ^glib.double) -> glib.boolean ---
		gdk_event_get_scroll_direction :: proc(event: ^GdkEvent, direction: ^GdkScrollDirection) -> glib.boolean ---
		gdk_event_get_seat :: proc(event: ^GdkEvent) -> ^GdkSeat ---
		gdk_event_get_source_device :: proc(event: ^GdkEvent) -> ^GdkDevice ---
		gdk_event_get_state :: proc(event: ^GdkEvent, state: ^GdkModifierType) -> glib.boolean ---
		gdk_event_get_time :: proc(event: ^GdkEvent) -> glib.uint32 ---
		gdk_event_get_type :: proc() -> gobj.Type ---
		gdk_event_get_window :: proc(event: ^GdkEvent) -> ^GdkWindow ---
		gdk_event_handler_set :: proc(func: GdkEventFunc, data: glib.pointer, notify: glib.DestroyNotify) ---
		gdk_event_is_scroll_stop_event :: proc(event: ^GdkEvent) -> glib.boolean ---
		gdk_event_mask_get_type :: proc() -> gobj.Type ---
		gdk_event_new :: proc(type: GdkEventType) -> ^GdkEvent ---
		gdk_event_peek :: proc() -> ^GdkEvent ---
		gdk_event_put :: proc(event: ^GdkEvent) ---
		gdk_event_request_motions :: proc(event: ^GdkEventMotion) ---
		gdk_event_sequence_get_type :: proc() -> gobj.Type ---
		gdk_event_set_device :: proc(event: ^GdkEvent, device: ^GdkDevice) ---
		gdk_event_set_device_tool :: proc(event: ^GdkEvent, tool: ^GdkDeviceTool) ---
		gdk_event_set_screen :: proc(event: ^GdkEvent, screen: ^GdkScreen) ---
		gdk_event_set_source_device :: proc(event: ^GdkEvent, device: ^GdkDevice) ---
		gdk_event_triggers_context_menu :: proc(event: ^GdkEvent) -> glib.boolean ---
		gdk_event_type_get_type :: proc() -> gobj.Type ---
		gdk_events_get_angle :: proc(event1: ^GdkEvent, event2: ^GdkEvent, angle: ^glib.double) -> glib.boolean ---
		gdk_events_get_center :: proc(event1: ^GdkEvent, event2: ^GdkEvent, x: ^glib.double, y: ^glib.double) -> glib.boolean ---
		gdk_events_get_distance :: proc(event1: ^GdkEvent, event2: ^GdkEvent, distance: ^glib.double) -> glib.boolean ---
		gdk_events_pending :: proc() -> glib.boolean ---
		gdk_filter_return_get_type :: proc() -> gobj.Type ---
		gdk_flush :: proc() ---
		gdk_frame_clock_begin_updating :: proc(frame_clock: ^GdkFrameClock) ---
		gdk_frame_clock_end_updating :: proc(frame_clock: ^GdkFrameClock) ---
		gdk_frame_clock_get_current_timings :: proc(frame_clock: ^GdkFrameClock) -> ^GdkFrameTimings ---
		gdk_frame_clock_get_frame_counter :: proc(frame_clock: ^GdkFrameClock) -> glib.int64 ---
		gdk_frame_clock_get_frame_time :: proc(frame_clock: ^GdkFrameClock) -> glib.int64 ---
		gdk_frame_clock_get_history_start :: proc(frame_clock: ^GdkFrameClock) -> glib.int64 ---
		gdk_frame_clock_get_refresh_info :: proc(frame_clock: ^GdkFrameClock, base_time: glib.int64, refresh_interval_return: ^glib.int64, presentation_time_return: ^glib.int64) ---
		gdk_frame_clock_get_timings :: proc(frame_clock: ^GdkFrameClock, frame_counter: glib.int64) -> ^GdkFrameTimings ---
		gdk_frame_clock_get_type :: proc() -> gobj.Type ---
		gdk_frame_clock_phase_get_type :: proc() -> gobj.Type ---
		gdk_frame_clock_request_phase :: proc(frame_clock: ^GdkFrameClock, phase: GdkFrameClockPhase) ---
		gdk_frame_timings_get_complete :: proc(timings: ^GdkFrameTimings) -> glib.boolean ---
		gdk_frame_timings_get_frame_counter :: proc(timings: ^GdkFrameTimings) -> glib.int64 ---
		gdk_frame_timings_get_frame_time :: proc(timings: ^GdkFrameTimings) -> glib.int64 ---
		gdk_frame_timings_get_predicted_presentation_time :: proc(timings: ^GdkFrameTimings) -> glib.int64 ---
		gdk_frame_timings_get_presentation_time :: proc(timings: ^GdkFrameTimings) -> glib.int64 ---
		gdk_frame_timings_get_refresh_interval :: proc(timings: ^GdkFrameTimings) -> glib.int64 ---
		gdk_frame_timings_get_type :: proc() -> gobj.Type ---
		gdk_frame_timings_ref :: proc(timings: ^GdkFrameTimings) -> ^GdkFrameTimings ---
		gdk_frame_timings_unref :: proc(timings: ^GdkFrameTimings) ---
		gdk_fullscreen_mode_get_type :: proc() -> gobj.Type ---
		gdk_get_default_root_window :: proc() -> ^GdkWindow ---
		gdk_get_display :: proc() -> cstring ---
		gdk_get_display_arg_name :: proc() -> cstring ---
		gdk_get_program_class :: proc() -> cstring ---
		gdk_get_show_events :: proc() -> glib.boolean ---
		gdk_gl_context_clear_current :: proc() ---
		gdk_gl_context_get_current :: proc() -> ^GdkGLContext ---
		gdk_gl_context_get_debug_enabled :: proc(context_p: ^GdkGLContext) -> glib.boolean ---
		gdk_gl_context_get_display :: proc(context_p: ^GdkGLContext) -> ^GdkDisplay ---
		gdk_gl_context_get_forward_compatible :: proc(context_p: ^GdkGLContext) -> glib.boolean ---
		gdk_gl_context_get_required_version :: proc(context_p: ^GdkGLContext, major: ^i32, minor: ^i32) ---
		gdk_gl_context_get_shared_context :: proc(context_p: ^GdkGLContext) -> ^GdkGLContext ---
		gdk_gl_context_get_type :: proc() -> gobj.Type ---
		gdk_gl_context_get_use_es :: proc(context_p: ^GdkGLContext) -> glib.boolean ---
		gdk_gl_context_get_version :: proc(context_p: ^GdkGLContext, major: ^i32, minor: ^i32) ---
		gdk_gl_context_get_window :: proc(context_p: ^GdkGLContext) -> ^GdkWindow ---
		gdk_gl_context_is_legacy :: proc(context_p: ^GdkGLContext) -> glib.boolean ---
		gdk_gl_context_make_current :: proc(context_p: ^GdkGLContext) ---
		gdk_gl_context_realize :: proc(context_p: ^GdkGLContext, error: ^^glib.Error) -> glib.boolean ---
		gdk_gl_context_set_debug_enabled :: proc(context_p: ^GdkGLContext, enabled: glib.boolean) ---
		gdk_gl_context_set_forward_compatible :: proc(context_p: ^GdkGLContext, compatible: glib.boolean) ---
		gdk_gl_context_set_required_version :: proc(context_p: ^GdkGLContext, major: i32, minor: i32) ---
		gdk_gl_context_set_use_es :: proc(context_p: ^GdkGLContext, use_es: i32) ---
		gdk_gl_error_get_type :: proc() -> gobj.Type ---
		gdk_gl_error_quark :: proc() -> glib.Quark ---
		gdk_grab_ownership_get_type :: proc() -> gobj.Type ---
		gdk_grab_status_get_type :: proc() -> gobj.Type ---
		gdk_gravity_get_type :: proc() -> gobj.Type ---
		gdk_init :: proc(argc: ^glib.int_, argv: ^^cstring) ---
		gdk_init_check :: proc(argc: ^glib.int_, argv: ^^cstring) -> glib.boolean ---
		gdk_input_mode_get_type :: proc() -> gobj.Type ---
		gdk_input_source_get_type :: proc() -> gobj.Type ---
		gdk_keyboard_grab :: proc(window: ^GdkWindow, owner_events: glib.boolean, time_: glib.uint32) -> GdkGrabStatus ---
		gdk_keyboard_ungrab :: proc(time_: glib.uint32) ---
		gdk_keymap_add_virtual_modifiers :: proc(keymap: ^GdkKeymap, state: ^GdkModifierType) ---
		gdk_keymap_get_caps_lock_state :: proc(keymap: ^GdkKeymap) -> glib.boolean ---
		gdk_keymap_get_default :: proc() -> ^GdkKeymap ---
		gdk_keymap_get_direction :: proc(keymap: ^GdkKeymap) -> pango.Direction ---
		gdk_keymap_get_entries_for_keycode :: proc(keymap: ^GdkKeymap, hardware_keycode: glib.uint_, keys: [^]^GdkKeymapKey, keyvals: [^]^glib.uint_, n_entries: ^glib.int_) -> glib.boolean ---
		gdk_keymap_get_entries_for_keyval :: proc(keymap: ^GdkKeymap, keyval: glib.uint_, keys: [^]^GdkKeymapKey, n_keys: ^glib.int_) -> glib.boolean ---
		gdk_keymap_get_for_display :: proc(display: ^GdkDisplay) -> ^GdkKeymap ---
		gdk_keymap_get_modifier_mask :: proc(keymap: ^GdkKeymap, intent: GdkModifierIntent) -> GdkModifierType ---
		gdk_keymap_get_modifier_state :: proc(keymap: ^GdkKeymap) -> glib.uint_ ---
		gdk_keymap_get_num_lock_state :: proc(keymap: ^GdkKeymap) -> glib.boolean ---
		gdk_keymap_get_scroll_lock_state :: proc(keymap: ^GdkKeymap) -> glib.boolean ---
		gdk_keymap_get_type :: proc() -> gobj.Type ---
		gdk_keymap_have_bidi_layouts :: proc(keymap: ^GdkKeymap) -> glib.boolean ---
		gdk_keymap_lookup_key :: proc(keymap: ^GdkKeymap, key: ^GdkKeymapKey) -> glib.uint_ ---
		gdk_keymap_map_virtual_modifiers :: proc(keymap: ^GdkKeymap, state: ^GdkModifierType) -> glib.boolean ---
		gdk_keymap_translate_keyboard_state :: proc(keymap: ^GdkKeymap, hardware_keycode: glib.uint_, state: GdkModifierType, group: glib.int_, keyval: ^glib.uint_, effective_group: ^glib.int_, level: ^glib.int_, consumed_modifiers: ^GdkModifierType) -> glib.boolean ---
		gdk_keyval_convert_case :: proc(symbol: glib.uint_, lower: ^glib.uint_, upper: ^glib.uint_) ---
		gdk_keyval_from_name :: proc(keyval_name: cstring) -> glib.uint_ ---
		gdk_keyval_is_lower :: proc(keyval: glib.uint_) -> glib.boolean ---
		gdk_keyval_is_upper :: proc(keyval: glib.uint_) -> glib.boolean ---
		gdk_keyval_name :: proc(keyval: glib.uint_) -> cstring ---
		gdk_keyval_to_lower :: proc(keyval: glib.uint_) -> glib.uint_ ---
		gdk_keyval_to_unicode :: proc(keyval: glib.uint_) -> glib.uint32 ---
		gdk_keyval_to_upper :: proc(keyval: glib.uint_) -> glib.uint_ ---
		gdk_list_visuals :: proc() -> ^glib.List ---
		gdk_modifier_intent_get_type :: proc() -> gobj.Type ---
		gdk_modifier_type_get_type :: proc() -> gobj.Type ---
		gdk_monitor_get_display :: proc(monitor: ^GdkMonitor) -> ^GdkDisplay ---
		gdk_monitor_get_geometry :: proc(monitor: ^GdkMonitor, geometry: ^GdkRectangle) ---
		gdk_monitor_get_height_mm :: proc(monitor: ^GdkMonitor) -> i32 ---
		gdk_monitor_get_manufacturer :: proc(monitor: ^GdkMonitor) -> cstring ---
		gdk_monitor_get_model :: proc(monitor: ^GdkMonitor) -> cstring ---
		gdk_monitor_get_refresh_rate :: proc(monitor: ^GdkMonitor) -> i32 ---
		gdk_monitor_get_scale_factor :: proc(monitor: ^GdkMonitor) -> i32 ---
		gdk_monitor_get_subpixel_layout :: proc(monitor: ^GdkMonitor) -> GdkSubpixelLayout ---
		gdk_monitor_get_type :: proc() -> gobj.Type ---
		gdk_monitor_get_width_mm :: proc(monitor: ^GdkMonitor) -> i32 ---
		gdk_monitor_get_workarea :: proc(monitor: ^GdkMonitor, workarea: ^GdkRectangle) ---
		gdk_monitor_is_primary :: proc(monitor: ^GdkMonitor) -> glib.boolean ---
		gdk_notify_startup_complete :: proc() ---
		gdk_notify_startup_complete_with_id :: proc(startup_id: cstring) ---
		gdk_notify_type_get_type :: proc() -> gobj.Type ---
		gdk_offscreen_window_get_embedder :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_offscreen_window_get_surface :: proc(window: ^GdkWindow) -> ^cairo.surface_t ---
		gdk_offscreen_window_set_embedder :: proc(window: ^GdkWindow, embedder: ^GdkWindow) ---
		gdk_owner_change_get_type :: proc() -> gobj.Type ---
		gdk_pango_context_get :: proc() -> ^pango.Context ---
		gdk_pango_context_get_for_display :: proc(display: ^GdkDisplay) -> ^pango.Context ---
		gdk_pango_context_get_for_screen :: proc(screen: ^GdkScreen) -> ^pango.Context ---
		gdk_pango_layout_get_clip_region :: proc(layout: ^pango.Layout, x_origin: glib.int_, y_origin: glib.int_, index_ranges: [^]glib.int_, n_ranges: glib.int_) -> ^cairo.region_t ---
		gdk_pango_layout_line_get_clip_region :: proc(line: ^pango.LayoutLine, x_origin: glib.int_, y_origin: glib.int_, index_ranges: [^]glib.int_, n_ranges: glib.int_) -> ^cairo.region_t ---
		gdk_parse_args :: proc(argc: ^glib.int_, argv: ^^cstring) ---
		gdk_pixbuf_get_from_surface :: proc(surface: ^cairo.surface_t, src_x: glib.int_, src_y: glib.int_, width: glib.int_, height: glib.int_) -> ^pixbuf.Pixbuf ---
		gdk_pixbuf_get_from_window :: proc(window: ^GdkWindow, src_x: glib.int_, src_y: glib.int_, width: glib.int_, height: glib.int_) -> ^pixbuf.Pixbuf ---
		gdk_pointer_grab :: proc(window: ^GdkWindow, owner_events: glib.boolean, event_mask: GdkEventMask, confine_to: ^GdkWindow, cursor: ^GdkCursor, time_: glib.uint32) -> GdkGrabStatus ---
		gdk_pointer_is_grabbed :: proc() -> glib.boolean ---
		gdk_pointer_ungrab :: proc(time_: glib.uint32) ---
		gdk_pre_parse_libgtk_only :: proc() ---
		gdk_prop_mode_get_type :: proc() -> gobj.Type ---
		gdk_property_change :: proc(window: ^GdkWindow, property: GdkAtom, type: GdkAtom, format: glib.int_, mode: GdkPropMode, data: ^glib.uchar, nelements: glib.int_) ---
		gdk_property_delete :: proc(window: ^GdkWindow, property: GdkAtom) ---
		gdk_property_get :: proc(window: ^GdkWindow, property: GdkAtom, type: GdkAtom, offset: glib.ulong, length: glib.ulong, pdelete: glib.int_, actual_property_type: ^GdkAtom, actual_format: ^glib.int_, actual_length: ^glib.int_, data: ^^glib.uchar) -> glib.boolean ---
		gdk_property_state_get_type :: proc() -> gobj.Type ---
		gdk_query_depths :: proc(depths: [^]^glib.int_, count: ^glib.int_) ---
		gdk_query_visual_types :: proc(visual_types: [^]^GdkVisualType, count: ^glib.int_) ---
		gdk_rectangle_equal :: proc(rect1: ^GdkRectangle, rect2: ^GdkRectangle) -> glib.boolean ---
		gdk_rectangle_get_type :: proc() -> gobj.Type ---
		gdk_rectangle_intersect :: proc(src1: ^GdkRectangle, src2: ^GdkRectangle, dest: ^GdkRectangle) -> glib.boolean ---
		gdk_rectangle_union :: proc(src1: ^GdkRectangle, src2: ^GdkRectangle, dest: ^GdkRectangle) ---
		gdk_rgba_copy :: proc(rgba: ^GdkRGBA) -> ^GdkRGBA ---
		gdk_rgba_equal :: proc(p1: glib.constpointer, p2: glib.constpointer) -> glib.boolean ---
		gdk_rgba_free :: proc(rgba: ^GdkRGBA) ---
		gdk_rgba_get_type :: proc() -> gobj.Type ---
		gdk_rgba_hash :: proc(p: glib.constpointer) -> glib.uint_ ---
		gdk_rgba_parse :: proc(rgba: ^GdkRGBA, spec: cstring) -> glib.boolean ---
		gdk_rgba_to_string :: proc(rgba: ^GdkRGBA) -> cstring ---
		gdk_screen_get_active_window :: proc(screen: ^GdkScreen) -> ^GdkWindow ---
		gdk_screen_get_default :: proc() -> ^GdkScreen ---
		gdk_screen_get_display :: proc(screen: ^GdkScreen) -> ^GdkDisplay ---
		gdk_screen_get_font_options :: proc(screen: ^GdkScreen) -> ^cairo.font_options_t ---
		gdk_screen_get_height :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_height_mm :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_monitor_at_point :: proc(screen: ^GdkScreen, x: glib.int_, y: glib.int_) -> glib.int_ ---
		gdk_screen_get_monitor_at_window :: proc(screen: ^GdkScreen, window: ^GdkWindow) -> glib.int_ ---
		gdk_screen_get_monitor_geometry :: proc(screen: ^GdkScreen, monitor_num: glib.int_, dest: ^GdkRectangle) ---
		gdk_screen_get_monitor_height_mm :: proc(screen: ^GdkScreen, monitor_num: glib.int_) -> glib.int_ ---
		gdk_screen_get_monitor_plug_name :: proc(screen: ^GdkScreen, monitor_num: glib.int_) -> cstring ---
		gdk_screen_get_monitor_scale_factor :: proc(screen: ^GdkScreen, monitor_num: glib.int_) -> glib.int_ ---
		gdk_screen_get_monitor_width_mm :: proc(screen: ^GdkScreen, monitor_num: glib.int_) -> glib.int_ ---
		gdk_screen_get_monitor_workarea :: proc(screen: ^GdkScreen, monitor_num: glib.int_, dest: ^GdkRectangle) ---
		gdk_screen_get_n_monitors :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_number :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_primary_monitor :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_resolution :: proc(screen: ^GdkScreen) -> glib.double ---
		gdk_screen_get_rgba_visual :: proc(screen: ^GdkScreen) -> ^GdkVisual ---
		gdk_screen_get_root_window :: proc(screen: ^GdkScreen) -> ^GdkWindow ---
		gdk_screen_get_setting :: proc(screen: ^GdkScreen, name: cstring, value: ^gobj.Value) -> glib.boolean ---
		gdk_screen_get_system_visual :: proc(screen: ^GdkScreen) -> ^GdkVisual ---
		gdk_screen_get_toplevel_windows :: proc(screen: ^GdkScreen) -> ^glib.List ---
		gdk_screen_get_type :: proc() -> gobj.Type ---
		gdk_screen_get_width :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_width_mm :: proc(screen: ^GdkScreen) -> glib.int_ ---
		gdk_screen_get_window_stack :: proc(screen: ^GdkScreen) -> ^glib.List ---
		gdk_screen_height :: proc() -> glib.int_ ---
		gdk_screen_height_mm :: proc() -> glib.int_ ---
		gdk_screen_is_composited :: proc(screen: ^GdkScreen) -> glib.boolean ---
		gdk_screen_list_visuals :: proc(screen: ^GdkScreen) -> ^glib.List ---
		gdk_screen_make_display_name :: proc(screen: ^GdkScreen) -> cstring ---
		gdk_screen_set_font_options :: proc(screen: ^GdkScreen, options: ^cairo.font_options_t) ---
		gdk_screen_set_resolution :: proc(screen: ^GdkScreen, dpi: glib.double) ---
		gdk_screen_width :: proc() -> glib.int_ ---
		gdk_screen_width_mm :: proc() -> glib.int_ ---
		gdk_scroll_direction_get_type :: proc() -> gobj.Type ---
		gdk_seat_capabilities_get_type :: proc() -> gobj.Type ---
		gdk_seat_get_capabilities :: proc(seat: ^GdkSeat) -> GdkSeatCapabilities ---
		gdk_seat_get_display :: proc(seat: ^GdkSeat) -> ^GdkDisplay ---
		gdk_seat_get_keyboard :: proc(seat: ^GdkSeat) -> ^GdkDevice ---
		gdk_seat_get_pointer :: proc(seat: ^GdkSeat) -> ^GdkDevice ---
		gdk_seat_get_slaves :: proc(seat: ^GdkSeat, capabilities: GdkSeatCapabilities) -> ^glib.List ---
		gdk_seat_get_type :: proc() -> gobj.Type ---
		gdk_seat_grab :: proc(seat: ^GdkSeat, window: ^GdkWindow, capabilities: GdkSeatCapabilities, owner_events: glib.boolean, cursor: ^GdkCursor, event: ^GdkEvent, prepare_func: GdkSeatGrabPrepareFunc, prepare_func_data: glib.pointer) -> GdkGrabStatus ---
		gdk_seat_ungrab :: proc(seat: ^GdkSeat) ---
		gdk_selection_convert :: proc(requestor: ^GdkWindow, selection: GdkAtom, target: GdkAtom, time_: glib.uint32) ---
		gdk_selection_owner_get :: proc(selection: GdkAtom) -> ^GdkWindow ---
		gdk_selection_owner_get_for_display :: proc(display: ^GdkDisplay, selection: GdkAtom) -> ^GdkWindow ---
		gdk_selection_owner_set :: proc(owner: ^GdkWindow, selection: GdkAtom, time_: glib.uint32, send_event: glib.boolean) -> glib.boolean ---
		gdk_selection_owner_set_for_display :: proc(display: ^GdkDisplay, owner: ^GdkWindow, selection: GdkAtom, time_: glib.uint32, send_event: glib.boolean) -> glib.boolean ---
		gdk_selection_property_get :: proc(requestor: ^GdkWindow, data: ^^glib.uchar, prop_type: ^GdkAtom, prop_format: ^glib.int_) -> glib.int_ ---
		gdk_selection_send_notify :: proc(requestor: ^GdkWindow, selection: GdkAtom, target: GdkAtom, property: GdkAtom, time_: glib.uint32) ---
		gdk_selection_send_notify_for_display :: proc(display: ^GdkDisplay, requestor: ^GdkWindow, selection: GdkAtom, target: GdkAtom, property: GdkAtom, time_: glib.uint32) ---
		gdk_set_allowed_backends :: proc(backends: cstring) ---
		gdk_set_double_click_time :: proc(msec: glib.uint_) ---
		gdk_set_program_class :: proc(program_class: cstring) ---
		gdk_set_show_events :: proc(show_events: glib.boolean) ---
		gdk_setting_action_get_type :: proc() -> gobj.Type ---
		gdk_setting_get :: proc(name: cstring, value: ^gobj.Value) -> glib.boolean ---
		gdk_status_get_type :: proc() -> gobj.Type ---
		gdk_subpixel_layout_get_type :: proc() -> gobj.Type ---
		gdk_test_render_sync :: proc(window: ^GdkWindow) ---
		gdk_test_simulate_button :: proc(window: ^GdkWindow, x: glib.int_, y: glib.int_, button: glib.uint_, modifiers: GdkModifierType, button_pressrelease: GdkEventType) -> glib.boolean ---
		gdk_test_simulate_key :: proc(window: ^GdkWindow, x: glib.int_, y: glib.int_, keyval: glib.uint_, modifiers: GdkModifierType, key_pressrelease: GdkEventType) -> glib.boolean ---
		gdk_text_property_to_utf8_list_for_display :: proc(display: ^GdkDisplay, encoding: GdkAtom, format: glib.int_, text: ^glib.uchar, length: glib.int_, list: ^^cstring) -> glib.int_ ---
		gdk_threads_add_idle :: proc(function: glib.SourceFunc, data: glib.pointer) -> glib.uint_ ---
		gdk_threads_add_idle_full :: proc(priority: glib.int_, function: glib.SourceFunc, data: glib.pointer, notify: glib.DestroyNotify) -> glib.uint_ ---
		gdk_threads_add_timeout :: proc(interval: glib.uint_, function: glib.SourceFunc, data: glib.pointer) -> glib.uint_ ---
		gdk_threads_add_timeout_full :: proc(priority: glib.int_, interval: glib.uint_, function: glib.SourceFunc, data: glib.pointer, notify: glib.DestroyNotify) -> glib.uint_ ---
		gdk_threads_add_timeout_seconds :: proc(interval: glib.uint_, function: glib.SourceFunc, data: glib.pointer) -> glib.uint_ ---
		gdk_threads_add_timeout_seconds_full :: proc(priority: glib.int_, interval: glib.uint_, function: glib.SourceFunc, data: glib.pointer, notify: glib.DestroyNotify) -> glib.uint_ ---
		gdk_threads_enter :: proc() ---
		gdk_threads_init :: proc() ---
		gdk_threads_leave :: proc() ---
		gdk_threads_set_lock_functions :: proc(enter_fn: gobj.Callback, leave_fn: gobj.Callback) ---
		gdk_touchpad_gesture_phase_get_type :: proc() -> gobj.Type ---
		gdk_unicode_to_keyval :: proc(wc: glib.uint32) -> glib.uint_ ---
		gdk_utf8_to_string_target :: proc(str: cstring) -> cstring ---
		gdk_visibility_state_get_type :: proc() -> gobj.Type ---
		gdk_visual_get_best :: proc() -> ^GdkVisual ---
		gdk_visual_get_best_depth :: proc() -> glib.int_ ---
		gdk_visual_get_best_type :: proc() -> GdkVisualType ---
		gdk_visual_get_best_with_both :: proc(depth: glib.int_, visual_type: GdkVisualType) -> ^GdkVisual ---
		gdk_visual_get_best_with_depth :: proc(depth: glib.int_) -> ^GdkVisual ---
		gdk_visual_get_best_with_type :: proc(visual_type: GdkVisualType) -> ^GdkVisual ---
		gdk_visual_get_bits_per_rgb :: proc(visual: ^GdkVisual) -> glib.int_ ---
		gdk_visual_get_blue_pixel_details :: proc(visual: ^GdkVisual, mask: ^glib.uint32, shift: ^glib.int_, precision: ^glib.int_) ---
		gdk_visual_get_byte_order :: proc(visual: ^GdkVisual) -> GdkByteOrder ---
		gdk_visual_get_colormap_size :: proc(visual: ^GdkVisual) -> glib.int_ ---
		gdk_visual_get_depth :: proc(visual: ^GdkVisual) -> glib.int_ ---
		gdk_visual_get_green_pixel_details :: proc(visual: ^GdkVisual, mask: ^glib.uint32, shift: ^glib.int_, precision: ^glib.int_) ---
		gdk_visual_get_red_pixel_details :: proc(visual: ^GdkVisual, mask: ^glib.uint32, shift: ^glib.int_, precision: ^glib.int_) ---
		gdk_visual_get_screen :: proc(visual: ^GdkVisual) -> ^GdkScreen ---
		gdk_visual_get_system :: proc() -> ^GdkVisual ---
		gdk_visual_get_type :: proc() -> gobj.Type ---
		gdk_visual_get_visual_type :: proc(visual: ^GdkVisual) -> GdkVisualType ---
		gdk_visual_type_get_type :: proc() -> gobj.Type ---
		gdk_window_add_filter :: proc(window: ^GdkWindow, function: GdkFilterFunc, data: glib.pointer) ---
		gdk_window_at_pointer :: proc(win_x: ^glib.int_, win_y: ^glib.int_) -> ^GdkWindow ---
		gdk_window_attributes_type_get_type :: proc() -> gobj.Type ---
		gdk_window_beep :: proc(window: ^GdkWindow) ---
		gdk_window_begin_draw_frame :: proc(window: ^GdkWindow, region: ^cairo.region_t) -> ^GdkDrawingContext ---
		gdk_window_begin_move_drag :: proc(window: ^GdkWindow, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		gdk_window_begin_move_drag_for_device :: proc(window: ^GdkWindow, device: ^GdkDevice, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		gdk_window_begin_paint_rect :: proc(window: ^GdkWindow, rectangle: ^GdkRectangle) ---
		gdk_window_begin_paint_region :: proc(window: ^GdkWindow, region: ^cairo.region_t) ---
		gdk_window_begin_resize_drag :: proc(window: ^GdkWindow, edge: GdkWindowEdge, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		gdk_window_begin_resize_drag_for_device :: proc(window: ^GdkWindow, edge: GdkWindowEdge, device: ^GdkDevice, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		gdk_window_configure_finished :: proc(window: ^GdkWindow) ---
		gdk_window_constrain_size :: proc(geometry: ^GdkGeometry, flags: GdkWindowHints, width: glib.int_, height: glib.int_, new_width: ^glib.int_, new_height: ^glib.int_) ---
		gdk_window_coords_from_parent :: proc(window: ^GdkWindow, parent_x: glib.double, parent_y: glib.double, x: ^glib.double, y: ^glib.double) ---
		gdk_window_coords_to_parent :: proc(window: ^GdkWindow, x: glib.double, y: glib.double, parent_x: ^glib.double, parent_y: ^glib.double) ---
		gdk_window_create_gl_context :: proc(window: ^GdkWindow, error: ^^glib.Error) -> ^GdkGLContext ---
		gdk_window_create_similar_image_surface :: proc(window: ^GdkWindow, format: cairo.format_t, width: i32, height: i32, scale: i32) -> ^cairo.surface_t ---
		gdk_window_create_similar_surface :: proc(window: ^GdkWindow, content: cairo.content_t, width: i32, height: i32) -> ^cairo.surface_t ---
		gdk_window_deiconify :: proc(window: ^GdkWindow) ---
		gdk_window_destroy :: proc(window: ^GdkWindow) ---
		gdk_window_edge_get_type :: proc() -> gobj.Type ---
		gdk_window_enable_synchronized_configure :: proc(window: ^GdkWindow) ---
		gdk_window_end_draw_frame :: proc(window: ^GdkWindow, context_p: ^GdkDrawingContext) ---
		gdk_window_end_paint :: proc(window: ^GdkWindow) ---
		gdk_window_ensure_native :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_flush :: proc(window: ^GdkWindow) ---
		gdk_window_focus :: proc(window: ^GdkWindow, timestamp: glib.uint32) ---
		gdk_window_freeze_toplevel_updates_libgtk_only :: proc(window: ^GdkWindow) ---
		gdk_window_freeze_updates :: proc(window: ^GdkWindow) ---
		gdk_window_fullscreen :: proc(window: ^GdkWindow) ---
		gdk_window_fullscreen_on_monitor :: proc(window: ^GdkWindow, monitor: glib.int_) ---
		gdk_window_geometry_changed :: proc(window: ^GdkWindow) ---
		gdk_window_get_accept_focus :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_background_pattern :: proc(window: ^GdkWindow) -> ^cairo.pattern_t ---
		gdk_window_get_children :: proc(window: ^GdkWindow) -> ^glib.List ---
		gdk_window_get_children_with_user_data :: proc(window: ^GdkWindow, user_data: glib.pointer) -> ^glib.List ---
		gdk_window_get_clip_region :: proc(window: ^GdkWindow) -> ^cairo.region_t ---
		gdk_window_get_composited :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_cursor :: proc(window: ^GdkWindow) -> ^GdkCursor ---
		gdk_window_get_decorations :: proc(window: ^GdkWindow, decorations: ^GdkWMDecoration) -> glib.boolean ---
		gdk_window_get_device_cursor :: proc(window: ^GdkWindow, device: ^GdkDevice) -> ^GdkCursor ---
		gdk_window_get_device_events :: proc(window: ^GdkWindow, device: ^GdkDevice) -> GdkEventMask ---
		gdk_window_get_device_position :: proc(window: ^GdkWindow, device: ^GdkDevice, x: ^glib.int_, y: ^glib.int_, mask: ^GdkModifierType) -> ^GdkWindow ---
		gdk_window_get_device_position_double :: proc(window: ^GdkWindow, device: ^GdkDevice, x: ^glib.double, y: ^glib.double, mask: ^GdkModifierType) -> ^GdkWindow ---
		gdk_window_get_display :: proc(window: ^GdkWindow) -> ^GdkDisplay ---
		gdk_window_get_drag_protocol :: proc(window: ^GdkWindow, target: ^^GdkWindow) -> GdkDragProtocol ---
		gdk_window_get_effective_parent :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_window_get_effective_toplevel :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_window_get_event_compression :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_events :: proc(window: ^GdkWindow) -> GdkEventMask ---
		gdk_window_get_focus_on_map :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_frame_clock :: proc(window: ^GdkWindow) -> ^GdkFrameClock ---
		gdk_window_get_frame_extents :: proc(window: ^GdkWindow, rect: ^GdkRectangle) ---
		gdk_window_get_fullscreen_mode :: proc(window: ^GdkWindow) -> GdkFullscreenMode ---
		gdk_window_get_geometry :: proc(window: ^GdkWindow, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_) ---
		gdk_window_get_group :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_window_get_height :: proc(window: ^GdkWindow) -> i32 ---
		gdk_window_get_modal_hint :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_origin :: proc(window: ^GdkWindow, x: ^glib.int_, y: ^glib.int_) -> glib.int_ ---
		gdk_window_get_parent :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_window_get_pass_through :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_pointer :: proc(window: ^GdkWindow, x: ^glib.int_, y: ^glib.int_, mask: ^GdkModifierType) -> ^GdkWindow ---
		gdk_window_get_position :: proc(window: ^GdkWindow, x: ^glib.int_, y: ^glib.int_) ---
		gdk_window_get_root_coords :: proc(window: ^GdkWindow, x: glib.int_, y: glib.int_, root_x: ^glib.int_, root_y: ^glib.int_) ---
		gdk_window_get_root_origin :: proc(window: ^GdkWindow, x: ^glib.int_, y: ^glib.int_) ---
		gdk_window_get_scale_factor :: proc(window: ^GdkWindow) -> glib.int_ ---
		gdk_window_get_screen :: proc(window: ^GdkWindow) -> ^GdkScreen ---
		gdk_window_get_source_events :: proc(window: ^GdkWindow, source: GdkInputSource) -> GdkEventMask ---
		gdk_window_get_state :: proc(window: ^GdkWindow) -> GdkWindowState ---
		gdk_window_get_support_multidevice :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_get_toplevel :: proc(window: ^GdkWindow) -> ^GdkWindow ---
		gdk_window_get_type :: proc() -> gobj.Type ---
		gdk_window_get_type_hint :: proc(window: ^GdkWindow) -> GdkWindowTypeHint ---
		gdk_window_get_update_area :: proc(window: ^GdkWindow) -> ^cairo.region_t ---
		gdk_window_get_user_data :: proc(window: ^GdkWindow, data: ^glib.pointer) ---
		gdk_window_get_visible_region :: proc(window: ^GdkWindow) -> ^cairo.region_t ---
		gdk_window_get_visual :: proc(window: ^GdkWindow) -> ^GdkVisual ---
		gdk_window_get_width :: proc(window: ^GdkWindow) -> i32 ---
		gdk_window_get_window_type :: proc(window: ^GdkWindow) -> GdkWindowType ---
		gdk_window_has_native :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_hide :: proc(window: ^GdkWindow) ---
		gdk_window_hints_get_type :: proc() -> gobj.Type ---
		gdk_window_iconify :: proc(window: ^GdkWindow) ---
		gdk_window_input_shape_combine_region :: proc(window: ^GdkWindow, shape_region: ^cairo.region_t, offset_x: glib.int_, offset_y: glib.int_) ---
		gdk_window_invalidate_maybe_recurse :: proc(window: ^GdkWindow, region: ^cairo.region_t, child_func: GdkWindowChildFunc, user_data: glib.pointer) ---
		gdk_window_invalidate_rect :: proc(window: ^GdkWindow, rect: ^GdkRectangle, invalidate_children: glib.boolean) ---
		gdk_window_invalidate_region :: proc(window: ^GdkWindow, region: ^cairo.region_t, invalidate_children: glib.boolean) ---
		gdk_window_is_destroyed :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_is_input_only :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_is_shaped :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_is_viewable :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_is_visible :: proc(window: ^GdkWindow) -> glib.boolean ---
		gdk_window_lower :: proc(window: ^GdkWindow) ---
		gdk_window_mark_paint_from_clip :: proc(window: ^GdkWindow, cr: ^cairo.context_t) ---
		gdk_window_maximize :: proc(window: ^GdkWindow) ---
		gdk_window_merge_child_input_shapes :: proc(window: ^GdkWindow) ---
		gdk_window_merge_child_shapes :: proc(window: ^GdkWindow) ---
		gdk_window_move :: proc(window: ^GdkWindow, x: glib.int_, y: glib.int_) ---
		gdk_window_move_region :: proc(window: ^GdkWindow, region: ^cairo.region_t, dx: glib.int_, dy: glib.int_) ---
		gdk_window_move_resize :: proc(window: ^GdkWindow, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		gdk_window_move_to_rect :: proc(window: ^GdkWindow, rect: ^GdkRectangle, rect_anchor: GdkGravity, window_anchor: GdkGravity, anchor_hints: GdkAnchorHints, rect_anchor_dx: glib.int_, rect_anchor_dy: glib.int_) ---
		gdk_window_new :: proc(parent: ^GdkWindow, attributes: ^GdkWindowAttr, attributes_mask: glib.int_) -> ^GdkWindow ---
		gdk_window_peek_children :: proc(window: ^GdkWindow) -> ^glib.List ---
		gdk_window_process_all_updates :: proc() ---
		gdk_window_process_updates :: proc(window: ^GdkWindow, update_children: glib.boolean) ---
		gdk_window_raise :: proc(window: ^GdkWindow) ---
		gdk_window_register_dnd :: proc(window: ^GdkWindow) ---
		gdk_window_remove_filter :: proc(window: ^GdkWindow, function: GdkFilterFunc, data: glib.pointer) ---
		gdk_window_reparent :: proc(window: ^GdkWindow, new_parent: ^GdkWindow, x: glib.int_, y: glib.int_) ---
		gdk_window_resize :: proc(window: ^GdkWindow, width: glib.int_, height: glib.int_) ---
		gdk_window_restack :: proc(window: ^GdkWindow, sibling: ^GdkWindow, above: glib.boolean) ---
		gdk_window_scroll :: proc(window: ^GdkWindow, dx: glib.int_, dy: glib.int_) ---
		gdk_window_set_accept_focus :: proc(window: ^GdkWindow, accept_focus: glib.boolean) ---
		gdk_window_set_background :: proc(window: ^GdkWindow, color: ^GdkColor) ---
		gdk_window_set_background_pattern :: proc(window: ^GdkWindow, pattern: ^cairo.pattern_t) ---
		gdk_window_set_background_rgba :: proc(window: ^GdkWindow, rgba: ^GdkRGBA) ---
		gdk_window_set_child_input_shapes :: proc(window: ^GdkWindow) ---
		gdk_window_set_child_shapes :: proc(window: ^GdkWindow) ---
		gdk_window_set_composited :: proc(window: ^GdkWindow, composited: glib.boolean) ---
		gdk_window_set_cursor :: proc(window: ^GdkWindow, cursor: ^GdkCursor) ---
		gdk_window_set_debug_updates :: proc(setting: glib.boolean) ---
		gdk_window_set_decorations :: proc(window: ^GdkWindow, decorations: GdkWMDecoration) ---
		gdk_window_set_device_cursor :: proc(window: ^GdkWindow, device: ^GdkDevice, cursor: ^GdkCursor) ---
		gdk_window_set_device_events :: proc(window: ^GdkWindow, device: ^GdkDevice, event_mask: GdkEventMask) ---
		gdk_window_set_event_compression :: proc(window: ^GdkWindow, event_compression: glib.boolean) ---
		gdk_window_set_events :: proc(window: ^GdkWindow, event_mask: GdkEventMask) ---
		gdk_window_set_focus_on_map :: proc(window: ^GdkWindow, focus_on_map: glib.boolean) ---
		gdk_window_set_fullscreen_mode :: proc(window: ^GdkWindow, mode: GdkFullscreenMode) ---
		gdk_window_set_functions :: proc(window: ^GdkWindow, functions: GdkWMFunction) ---
		gdk_window_set_geometry_hints :: proc(window: ^GdkWindow, geometry: ^GdkGeometry, geom_mask: GdkWindowHints) ---
		gdk_window_set_group :: proc(window: ^GdkWindow, leader: ^GdkWindow) ---
		gdk_window_set_icon_list :: proc(window: ^GdkWindow, pixbufs: ^glib.List) ---
		gdk_window_set_icon_name :: proc(window: ^GdkWindow, name: cstring) ---
		gdk_window_set_invalidate_handler :: proc(window: ^GdkWindow, handler: GdkWindowInvalidateHandlerFunc) ---
		gdk_window_set_keep_above :: proc(window: ^GdkWindow, setting: glib.boolean) ---
		gdk_window_set_keep_below :: proc(window: ^GdkWindow, setting: glib.boolean) ---
		gdk_window_set_modal_hint :: proc(window: ^GdkWindow, modal: glib.boolean) ---
		gdk_window_set_opacity :: proc(window: ^GdkWindow, opacity: glib.double) ---
		gdk_window_set_opaque_region :: proc(window: ^GdkWindow, region: ^cairo.region_t) ---
		gdk_window_set_override_redirect :: proc(window: ^GdkWindow, override_redirect: glib.boolean) ---
		gdk_window_set_pass_through :: proc(window: ^GdkWindow, pass_through: glib.boolean) ---
		gdk_window_set_role :: proc(window: ^GdkWindow, role: cstring) ---
		gdk_window_set_shadow_width :: proc(window: ^GdkWindow, left: glib.int_, right: glib.int_, top: glib.int_, bottom: glib.int_) ---
		gdk_window_set_skip_pager_hint :: proc(window: ^GdkWindow, skips_pager: glib.boolean) ---
		gdk_window_set_skip_taskbar_hint :: proc(window: ^GdkWindow, skips_taskbar: glib.boolean) ---
		gdk_window_set_source_events :: proc(window: ^GdkWindow, source: GdkInputSource, event_mask: GdkEventMask) ---
		gdk_window_set_startup_id :: proc(window: ^GdkWindow, startup_id: cstring) ---
		gdk_window_set_static_gravities :: proc(window: ^GdkWindow, use_static: glib.boolean) -> glib.boolean ---
		gdk_window_set_support_multidevice :: proc(window: ^GdkWindow, support_multidevice: glib.boolean) ---
		gdk_window_set_title :: proc(window: ^GdkWindow, title: cstring) ---
		gdk_window_set_transient_for :: proc(window: ^GdkWindow, parent: ^GdkWindow) ---
		gdk_window_set_type_hint :: proc(window: ^GdkWindow, hint: GdkWindowTypeHint) ---
		gdk_window_set_urgency_hint :: proc(window: ^GdkWindow, urgent: glib.boolean) ---
		gdk_window_set_user_data :: proc(window: ^GdkWindow, user_data: glib.pointer) ---
		gdk_window_shape_combine_region :: proc(window: ^GdkWindow, shape_region: ^cairo.region_t, offset_x: glib.int_, offset_y: glib.int_) ---
		gdk_window_show :: proc(window: ^GdkWindow) ---
		gdk_window_show_unraised :: proc(window: ^GdkWindow) ---
		gdk_window_show_window_menu :: proc(window: ^GdkWindow, event: ^GdkEvent) -> glib.boolean ---
		gdk_window_state_get_type :: proc() -> gobj.Type ---
		gdk_window_stick :: proc(window: ^GdkWindow) ---
		gdk_window_thaw_toplevel_updates_libgtk_only :: proc(window: ^GdkWindow) ---
		gdk_window_thaw_updates :: proc(window: ^GdkWindow) ---
		gdk_window_type_get_type :: proc() -> gobj.Type ---
		gdk_window_type_hint_get_type :: proc() -> gobj.Type ---
		gdk_window_unfullscreen :: proc(window: ^GdkWindow) ---
		gdk_window_unmaximize :: proc(window: ^GdkWindow) ---
		gdk_window_unstick :: proc(window: ^GdkWindow) ---
		gdk_window_window_class_get_type :: proc() -> gobj.Type ---
		gdk_window_withdraw :: proc(window: ^GdkWindow) ---
		gdk_wm_decoration_get_type :: proc() -> gobj.Type ---
		gdk_wm_function_get_type :: proc() -> gobj.Type ---
		gesture_drag_get_offset :: proc(gesture: ^estureDrag, x: ^glib.double, y: ^glib.double) -> glib.boolean ---
		gesture_drag_get_start_point :: proc(gesture: ^estureDrag, x: ^glib.double, y: ^glib.double) -> glib.boolean ---
		gesture_drag_get_type :: proc() -> gobj.Type ---
		gesture_drag_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_get_bounding_box :: proc(gesture: ^esture, rect: ^GdkRectangle) -> glib.boolean ---
		gesture_get_bounding_box_center :: proc(gesture: ^esture, x: ^glib.double, y: ^glib.double) -> glib.boolean ---
		gesture_get_device :: proc(gesture: ^esture) -> ^GdkDevice ---
		gesture_get_group :: proc(gesture: ^esture) -> ^glib.List ---
		gesture_get_last_event :: proc(gesture: ^esture, sequence: ^GdkEventSequence) -> ^GdkEvent ---
		gesture_get_last_updated_sequence :: proc(gesture: ^esture) -> ^GdkEventSequence ---
		gesture_get_point :: proc(gesture: ^esture, sequence: ^GdkEventSequence, x: ^glib.double, y: ^glib.double) -> glib.boolean ---
		gesture_get_sequence_state :: proc(gesture: ^esture, sequence: ^GdkEventSequence) -> EventSequenceState ---
		gesture_get_sequences :: proc(gesture: ^esture) -> ^glib.List ---
		gesture_get_type :: proc() -> gobj.Type ---
		gesture_get_window :: proc(gesture: ^esture) -> ^GdkWindow ---
		gesture_group :: proc(group_gesture: ^esture, gesture: ^esture) ---
		gesture_handles_sequence :: proc(gesture: ^esture, sequence: ^GdkEventSequence) -> glib.boolean ---
		gesture_is_active :: proc(gesture: ^esture) -> glib.boolean ---
		gesture_is_grouped_with :: proc(gesture: ^esture, other: ^esture) -> glib.boolean ---
		gesture_is_recognized :: proc(gesture: ^esture) -> glib.boolean ---
		gesture_long_press_get_type :: proc() -> gobj.Type ---
		gesture_long_press_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_multi_press_get_area :: proc(gesture: ^estureMultiPress, rect: ^GdkRectangle) -> glib.boolean ---
		gesture_multi_press_get_type :: proc() -> gobj.Type ---
		gesture_multi_press_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_multi_press_set_area :: proc(gesture: ^estureMultiPress, rect: ^GdkRectangle) ---
		gesture_pan_get_orientation :: proc(gesture: ^esturePan) -> Orientation ---
		gesture_pan_get_type :: proc() -> gobj.Type ---
		gesture_pan_new :: proc(widget: ^Widget, orientation: Orientation) -> ^esture ---
		gesture_pan_set_orientation :: proc(gesture: ^esturePan, orientation: Orientation) ---
		gesture_rotate_get_angle_delta :: proc(gesture: ^estureRotate) -> glib.double ---
		gesture_rotate_get_type :: proc() -> gobj.Type ---
		gesture_rotate_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_set_sequence_state :: proc(gesture: ^esture, sequence: ^GdkEventSequence, state: EventSequenceState) -> glib.boolean ---
		gesture_set_state :: proc(gesture: ^esture, state: EventSequenceState) -> glib.boolean ---
		gesture_set_window :: proc(gesture: ^esture, window: ^GdkWindow) ---
		gesture_single_get_button :: proc(gesture: ^estureSingle) -> glib.uint_ ---
		gesture_single_get_current_button :: proc(gesture: ^estureSingle) -> glib.uint_ ---
		gesture_single_get_current_sequence :: proc(gesture: ^estureSingle) -> ^GdkEventSequence ---
		gesture_single_get_exclusive :: proc(gesture: ^estureSingle) -> glib.boolean ---
		gesture_single_get_touch_only :: proc(gesture: ^estureSingle) -> glib.boolean ---
		gesture_single_get_type :: proc() -> gobj.Type ---
		gesture_single_set_button :: proc(gesture: ^estureSingle, button: glib.uint_) ---
		gesture_single_set_exclusive :: proc(gesture: ^estureSingle, exclusive: glib.boolean) ---
		gesture_single_set_touch_only :: proc(gesture: ^estureSingle, touch_only: glib.boolean) ---
		gesture_stylus_get_axes :: proc(gesture: ^estureStylus, axes: [^]GdkAxisUse, values: [^]^glib.double) -> glib.boolean ---
		gesture_stylus_get_axis :: proc(gesture: ^estureStylus, axis: GdkAxisUse, value: ^glib.double) -> glib.boolean ---
		gesture_stylus_get_device_tool :: proc(gesture: ^estureStylus) -> ^GdkDeviceTool ---
		gesture_stylus_get_type :: proc() -> gobj.Type ---
		gesture_stylus_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_swipe_get_type :: proc() -> gobj.Type ---
		gesture_swipe_get_velocity :: proc(gesture: ^estureSwipe, velocity_x: ^glib.double, velocity_y: ^glib.double) -> glib.boolean ---
		gesture_swipe_new :: proc(widget: ^Widget) -> ^esture ---
		gesture_ungroup :: proc(gesture: ^esture) ---
		gesture_zoom_get_scale_delta :: proc(gesture: ^estureZoom) -> glib.double ---
		gesture_zoom_get_type :: proc() -> gobj.Type ---
		gesture_zoom_new :: proc(widget: ^Widget) -> ^esture ---
		get_binary_age :: proc() -> glib.uint_ ---
		get_current_event :: proc() -> ^GdkEvent ---
		get_current_event_device :: proc() -> ^GdkDevice ---
		get_current_event_state :: proc(state: ^GdkModifierType) -> glib.boolean ---
		get_current_event_time :: proc() -> glib.uint32 ---
		get_debug_flags :: proc() -> glib.uint_ ---
		get_default_language :: proc() -> ^pango.Language ---
		get_event_widget :: proc(event: ^GdkEvent) -> ^Widget ---
		get_interface_age :: proc() -> glib.uint_ ---
		get_locale_direction :: proc() -> TextDirection ---
		get_major_version :: proc() -> glib.uint_ ---
		get_micro_version :: proc() -> glib.uint_ ---
		get_minor_version :: proc() -> glib.uint_ ---
		get_option_group :: proc(open_default_display: glib.boolean) -> ^glib.OptionGroup ---
		gl_area_attach_buffers :: proc(area: ^LArea) ---
		gl_area_get_auto_render :: proc(area: ^LArea) -> glib.boolean ---
		gl_area_get_context :: proc(area: ^LArea) -> ^GdkGLContext ---
		gl_area_get_error :: proc(area: ^LArea) -> ^glib.Error ---
		gl_area_get_has_alpha :: proc(area: ^LArea) -> glib.boolean ---
		gl_area_get_has_depth_buffer :: proc(area: ^LArea) -> glib.boolean ---
		gl_area_get_has_stencil_buffer :: proc(area: ^LArea) -> glib.boolean ---
		gl_area_get_required_version :: proc(area: ^LArea, major: ^glib.int_, minor: ^glib.int_) ---
		gl_area_get_type :: proc() -> gobj.Type ---
		gl_area_get_use_es :: proc(area: ^LArea) -> glib.boolean ---
		gl_area_make_current :: proc(area: ^LArea) ---
		gl_area_new :: proc() -> ^Widget ---
		gl_area_queue_render :: proc(area: ^LArea) ---
		gl_area_set_auto_render :: proc(area: ^LArea, auto_render: glib.boolean) ---
		gl_area_set_error :: proc(area: ^LArea, error: ^glib.Error) ---
		gl_area_set_has_alpha :: proc(area: ^LArea, has_alpha: glib.boolean) ---
		gl_area_set_has_depth_buffer :: proc(area: ^LArea, has_depth_buffer: glib.boolean) ---
		gl_area_set_has_stencil_buffer :: proc(area: ^LArea, has_stencil_buffer: glib.boolean) ---
		gl_area_set_required_version :: proc(area: ^LArea, major: glib.int_, minor: glib.int_) ---
		gl_area_set_use_es :: proc(area: ^LArea, use_es: glib.boolean) ---
		grab_add :: proc(widget: ^Widget) ---
		grab_get_current :: proc() -> ^Widget ---
		grab_remove :: proc(widget: ^Widget) ---
		gradient_add_color_stop :: proc(gradient: ^radient, offset: glib.double, color: ^SymbolicColor) ---
		gradient_get_type :: proc() -> gobj.Type ---
		gradient_new_linear :: proc(x0: glib.double, y0: glib.double, x1: glib.double, y1: glib.double) -> ^radient ---
		gradient_new_radial :: proc(x0: glib.double, y0: glib.double, radius0: glib.double, x1: glib.double, y1: glib.double, radius1: glib.double) -> ^radient ---
		gradient_ref :: proc(gradient: ^radient) -> ^radient ---
		gradient_resolve :: proc(gradient: ^radient, props: ^StyleProperties, resolved_gradient: ^^cairo.pattern_t) -> glib.boolean ---
		gradient_resolve_for_context :: proc(gradient: ^radient, context_p: ^StyleContext) -> ^cairo.pattern_t ---
		gradient_to_string :: proc(gradient: ^radient) -> cstring ---
		gradient_unref :: proc(gradient: ^radient) ---
		grid_attach :: proc(grid: ^rid, child: ^Widget, left: glib.int_, top: glib.int_, width: glib.int_, height: glib.int_) ---
		grid_attach_next_to :: proc(grid: ^rid, child: ^Widget, sibling: ^Widget, side: PositionType, width: glib.int_, height: glib.int_) ---
		grid_get_baseline_row :: proc(grid: ^rid) -> glib.int_ ---
		grid_get_child_at :: proc(grid: ^rid, left: glib.int_, top: glib.int_) -> ^Widget ---
		grid_get_column_homogeneous :: proc(grid: ^rid) -> glib.boolean ---
		grid_get_column_spacing :: proc(grid: ^rid) -> glib.uint_ ---
		grid_get_row_baseline_position :: proc(grid: ^rid, row: glib.int_) -> BaselinePosition ---
		grid_get_row_homogeneous :: proc(grid: ^rid) -> glib.boolean ---
		grid_get_row_spacing :: proc(grid: ^rid) -> glib.uint_ ---
		grid_get_type :: proc() -> gobj.Type ---
		grid_insert_column :: proc(grid: ^rid, position: glib.int_) ---
		grid_insert_next_to :: proc(grid: ^rid, sibling: ^Widget, side: PositionType) ---
		grid_insert_row :: proc(grid: ^rid, position: glib.int_) ---
		grid_new :: proc() -> ^Widget ---
		grid_remove_column :: proc(grid: ^rid, position: glib.int_) ---
		grid_remove_row :: proc(grid: ^rid, position: glib.int_) ---
		grid_set_baseline_row :: proc(grid: ^rid, row: glib.int_) ---
		grid_set_column_homogeneous :: proc(grid: ^rid, homogeneous: glib.boolean) ---
		grid_set_column_spacing :: proc(grid: ^rid, spacing: glib.uint_) ---
		grid_set_row_baseline_position :: proc(grid: ^rid, row: glib.int_, pos: BaselinePosition) ---
		grid_set_row_homogeneous :: proc(grid: ^rid, homogeneous: glib.boolean) ---
		grid_set_row_spacing :: proc(grid: ^rid, spacing: glib.uint_) ---
		gtk_false :: proc() -> glib.boolean ---
		gtk_main :: proc() ---
		gtk_true :: proc() -> glib.boolean ---
		handle_box_get_child_detached :: proc(handle_box: ^HandleBox) -> glib.boolean ---
		handle_box_get_handle_position :: proc(handle_box: ^HandleBox) -> PositionType ---
		handle_box_get_shadow_type :: proc(handle_box: ^HandleBox) -> ShadowType ---
		handle_box_get_snap_edge :: proc(handle_box: ^HandleBox) -> PositionType ---
		handle_box_get_type :: proc() -> gobj.Type ---
		handle_box_new :: proc() -> ^Widget ---
		handle_box_set_handle_position :: proc(handle_box: ^HandleBox, position: PositionType) ---
		handle_box_set_shadow_type :: proc(handle_box: ^HandleBox, type: ShadowType) ---
		handle_box_set_snap_edge :: proc(handle_box: ^HandleBox, edge: PositionType) ---
		hbox_get_type :: proc() -> gobj.Type ---
		hbox_new :: proc(homogeneous: glib.boolean, spacing: glib.int_) -> ^Widget ---
		hbutton_box_get_type :: proc() -> gobj.Type ---
		hbutton_box_new :: proc() -> ^Widget ---
		header_bar_get_custom_title :: proc(bar: ^HeaderBar) -> ^Widget ---
		header_bar_get_decoration_layout :: proc(bar: ^HeaderBar) -> cstring ---
		header_bar_get_has_subtitle :: proc(bar: ^HeaderBar) -> glib.boolean ---
		header_bar_get_show_close_button :: proc(bar: ^HeaderBar) -> glib.boolean ---
		header_bar_get_subtitle :: proc(bar: ^HeaderBar) -> cstring ---
		header_bar_get_title :: proc(bar: ^HeaderBar) -> cstring ---
		header_bar_get_type :: proc() -> gobj.Type ---
		header_bar_new :: proc() -> ^Widget ---
		header_bar_pack_end :: proc(bar: ^HeaderBar, child: ^Widget) ---
		header_bar_pack_start :: proc(bar: ^HeaderBar, child: ^Widget) ---
		header_bar_set_custom_title :: proc(bar: ^HeaderBar, title_widget: ^Widget) ---
		header_bar_set_decoration_layout :: proc(bar: ^HeaderBar, layout: cstring) ---
		header_bar_set_has_subtitle :: proc(bar: ^HeaderBar, setting: glib.boolean) ---
		header_bar_set_show_close_button :: proc(bar: ^HeaderBar, setting: glib.boolean) ---
		header_bar_set_subtitle :: proc(bar: ^HeaderBar, subtitle: cstring) ---
		header_bar_set_title :: proc(bar: ^HeaderBar, title: cstring) ---
		hpaned_get_type :: proc() -> gobj.Type ---
		hpaned_new :: proc() -> ^Widget ---
		hscale_get_type :: proc() -> gobj.Type ---
		hscale_new :: proc(adjustment: ^Adjustment) -> ^Widget ---
		hscale_new_with_range :: proc(min: glib.double, max: glib.double, step: glib.double) -> ^Widget ---
		hscrollbar_get_type :: proc() -> gobj.Type ---
		hscrollbar_new :: proc(adjustment: ^Adjustment) -> ^Widget ---
		hseparator_get_type :: proc() -> gobj.Type ---
		hseparator_new :: proc() -> ^Widget ---
		hsv_get_color :: proc(hsv: ^HSV, h: ^glib.double, s: ^glib.double, v: ^glib.double) ---
		hsv_get_metrics :: proc(hsv: ^HSV, size_p: ^glib.int_, ring_width: ^glib.int_) ---
		hsv_get_type :: proc() -> gobj.Type ---
		hsv_is_adjusting :: proc(hsv: ^HSV) -> glib.boolean ---
		hsv_new :: proc() -> ^Widget ---
		hsv_set_color :: proc(hsv: ^HSV, h: f64, s: f64, v: f64) ---
		hsv_set_metrics :: proc(hsv: ^HSV, size_p: glib.int_, ring_width: glib.int_) ---
		hsv_to_rgb :: proc(h: glib.double, s: glib.double, v: glib.double, r: ^glib.double, g: ^glib.double, b: ^glib.double) ---
		icon_factory_add :: proc(factory: ^IconFactory, stock_id: cstring, icon_set: ^IconSet) ---
		icon_factory_add_default :: proc(factory: ^IconFactory) ---
		icon_factory_get_type :: proc() -> gobj.Type ---
		icon_factory_lookup :: proc(factory: ^IconFactory, stock_id: cstring) -> ^IconSet ---
		icon_factory_lookup_default :: proc(stock_id: cstring) -> ^IconSet ---
		icon_factory_new :: proc() -> ^IconFactory ---
		icon_factory_remove_default :: proc(factory: ^IconFactory) ---
		icon_info_copy :: proc(icon_info: ^IconInfo) -> ^IconInfo ---
		icon_info_free :: proc(icon_info: ^IconInfo) ---
		icon_info_get_attach_points :: proc(icon_info: ^IconInfo, points: [^]^GdkPoint, n_points: ^glib.int_) -> glib.boolean ---
		icon_info_get_base_scale :: proc(icon_info: ^IconInfo) -> glib.int_ ---
		icon_info_get_base_size :: proc(icon_info: ^IconInfo) -> glib.int_ ---
		icon_info_get_builtin_pixbuf :: proc(icon_info: ^IconInfo) -> ^pixbuf.Pixbuf ---
		icon_info_get_display_name :: proc(icon_info: ^IconInfo) -> cstring ---
		icon_info_get_embedded_rect :: proc(icon_info: ^IconInfo, rectangle: ^GdkRectangle) -> glib.boolean ---
		icon_info_get_filename :: proc(icon_info: ^IconInfo) -> cstring ---
		icon_info_get_type :: proc() -> gobj.Type ---
		icon_info_is_symbolic :: proc(icon_info: ^IconInfo) -> glib.boolean ---
		icon_info_load_icon :: proc(icon_info: ^IconInfo, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_icon_async :: proc(icon_info: ^IconInfo, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		icon_info_load_icon_finish :: proc(icon_info: ^IconInfo, res: ^gio.AsyncResult, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_surface :: proc(icon_info: ^IconInfo, for_window: ^GdkWindow, error: ^^glib.Error) -> ^cairo.surface_t ---
		icon_info_load_symbolic :: proc(icon_info: ^IconInfo, fg: ^GdkRGBA, success_color: ^GdkRGBA, warning_color: ^GdkRGBA, error_color: ^GdkRGBA, was_symbolic: ^glib.boolean, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_symbolic_async :: proc(icon_info: ^IconInfo, fg: ^GdkRGBA, success_color: ^GdkRGBA, warning_color: ^GdkRGBA, error_color: ^GdkRGBA, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		icon_info_load_symbolic_finish :: proc(icon_info: ^IconInfo, res: ^gio.AsyncResult, was_symbolic: ^glib.boolean, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_symbolic_for_context :: proc(icon_info: ^IconInfo, context_p: ^StyleContext, was_symbolic: ^glib.boolean, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_symbolic_for_context_async :: proc(icon_info: ^IconInfo, context_p: ^StyleContext, cancellable: ^gio.Cancellable, callback: gio.AsyncReadyCallback, user_data: glib.pointer) ---
		icon_info_load_symbolic_for_context_finish :: proc(icon_info: ^IconInfo, res: ^gio.AsyncResult, was_symbolic: ^glib.boolean, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_load_symbolic_for_style :: proc(icon_info: ^IconInfo, style: ^Style, state: StateType, was_symbolic: ^glib.boolean, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_info_new_for_pixbuf :: proc(icon_theme: ^IconTheme, pixbuf: ^pixbuf.Pixbuf) -> ^IconInfo ---
		icon_info_set_raw_coordinates :: proc(icon_info: ^IconInfo, raw_coordinates: glib.boolean) ---
		icon_lookup_flags_get_type :: proc() -> gobj.Type ---
		icon_set_add_source :: proc(icon_set: ^IconSet, source: ^IconSource) ---
		icon_set_copy :: proc(icon_set: ^IconSet) -> ^IconSet ---
		icon_set_get_sizes :: proc(icon_set: ^IconSet, sizes: [^]^IconSize, n_sizes: ^glib.int_) ---
		icon_set_get_type :: proc() -> gobj.Type ---
		icon_set_new :: proc() -> ^IconSet ---
		icon_set_new_from_pixbuf :: proc(pixbuf: ^pixbuf.Pixbuf) -> ^IconSet ---
		icon_set_ref :: proc(icon_set: ^IconSet) -> ^IconSet ---
		icon_set_render_icon :: proc(icon_set: ^IconSet, style: ^Style, direction: TextDirection, state: StateType, size_p: IconSize, widget: ^Widget, detail: cstring) -> ^pixbuf.Pixbuf ---
		icon_set_render_icon_pixbuf :: proc(icon_set: ^IconSet, context_p: ^StyleContext, size_p: IconSize) -> ^pixbuf.Pixbuf ---
		icon_set_render_icon_surface :: proc(icon_set: ^IconSet, context_p: ^StyleContext, size_p: IconSize, scale: i32, for_window: ^GdkWindow) -> ^cairo.surface_t ---
		icon_set_unref :: proc(icon_set: ^IconSet) ---
		icon_size_from_name :: proc(name: cstring) -> IconSize ---
		icon_size_get_name :: proc(size_p: IconSize) -> cstring ---
		icon_size_get_type :: proc() -> gobj.Type ---
		icon_size_lookup :: proc(size_p: IconSize, width: ^glib.int_, height: ^glib.int_) -> glib.boolean ---
		icon_size_lookup_for_settings :: proc(settings: ^Settings, size_p: IconSize, width: ^glib.int_, height: ^glib.int_) -> glib.boolean ---
		icon_size_register :: proc(name: cstring, width: glib.int_, height: glib.int_) -> IconSize ---
		icon_size_register_alias :: proc(alias: cstring, target: IconSize) ---
		icon_source_copy :: proc(source: ^IconSource) -> ^IconSource ---
		icon_source_free :: proc(source: ^IconSource) ---
		icon_source_get_direction :: proc(source: ^IconSource) -> TextDirection ---
		icon_source_get_direction_wildcarded :: proc(source: ^IconSource) -> glib.boolean ---
		icon_source_get_filename :: proc(source: ^IconSource) -> cstring ---
		icon_source_get_icon_name :: proc(source: ^IconSource) -> cstring ---
		icon_source_get_pixbuf :: proc(source: ^IconSource) -> ^pixbuf.Pixbuf ---
		icon_source_get_size :: proc(source: ^IconSource) -> IconSize ---
		icon_source_get_size_wildcarded :: proc(source: ^IconSource) -> glib.boolean ---
		icon_source_get_state :: proc(source: ^IconSource) -> StateType ---
		icon_source_get_state_wildcarded :: proc(source: ^IconSource) -> glib.boolean ---
		icon_source_get_type :: proc() -> gobj.Type ---
		icon_source_new :: proc() -> ^IconSource ---
		icon_source_set_direction :: proc(source: ^IconSource, direction: TextDirection) ---
		icon_source_set_direction_wildcarded :: proc(source: ^IconSource, setting: glib.boolean) ---
		icon_source_set_filename :: proc(source: ^IconSource, filename: cstring) ---
		icon_source_set_icon_name :: proc(source: ^IconSource, icon_name: cstring) ---
		icon_source_set_pixbuf :: proc(source: ^IconSource, pixbuf: ^pixbuf.Pixbuf) ---
		icon_source_set_size :: proc(source: ^IconSource, size_p: IconSize) ---
		icon_source_set_size_wildcarded :: proc(source: ^IconSource, setting: glib.boolean) ---
		icon_source_set_state :: proc(source: ^IconSource, state: StateType) ---
		icon_source_set_state_wildcarded :: proc(source: ^IconSource, setting: glib.boolean) ---
		icon_theme_add_builtin_icon :: proc(icon_name: cstring, size_p: glib.int_, pixbuf: ^pixbuf.Pixbuf) ---
		icon_theme_add_resource_path :: proc(icon_theme: ^IconTheme, path: cstring) ---
		icon_theme_append_search_path :: proc(icon_theme: ^IconTheme, path: cstring) ---
		icon_theme_choose_icon :: proc(icon_theme: ^IconTheme, icon_names: [^]cstring, size_p: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_choose_icon_for_scale :: proc(icon_theme: ^IconTheme, icon_names: [^]cstring, size_p: glib.int_, scale: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_error_get_type :: proc() -> gobj.Type ---
		icon_theme_error_quark :: proc() -> glib.Quark ---
		icon_theme_get_default :: proc() -> ^IconTheme ---
		icon_theme_get_example_icon_name :: proc(icon_theme: ^IconTheme) -> cstring ---
		icon_theme_get_for_screen :: proc(screen: ^GdkScreen) -> ^IconTheme ---
		icon_theme_get_icon_sizes :: proc(icon_theme: ^IconTheme, icon_name: cstring) -> ^glib.int_ ---
		icon_theme_get_search_path :: proc(icon_theme: ^IconTheme, path: [^]^cstring, n_elements: ^glib.int_) ---
		icon_theme_get_type :: proc() -> gobj.Type ---
		icon_theme_has_icon :: proc(icon_theme: ^IconTheme, icon_name: cstring) -> glib.boolean ---
		icon_theme_list_contexts :: proc(icon_theme: ^IconTheme) -> ^glib.List ---
		icon_theme_list_icons :: proc(icon_theme: ^IconTheme, context_p: cstring) -> ^glib.List ---
		icon_theme_load_icon :: proc(icon_theme: ^IconTheme, icon_name: cstring, size_p: glib.int_, flags: IconLookupFlags, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_theme_load_icon_for_scale :: proc(icon_theme: ^IconTheme, icon_name: cstring, size_p: glib.int_, scale: glib.int_, flags: IconLookupFlags, error: ^^glib.Error) -> ^pixbuf.Pixbuf ---
		icon_theme_load_surface :: proc(icon_theme: ^IconTheme, icon_name: cstring, size_p: glib.int_, scale: glib.int_, for_window: ^GdkWindow, flags: IconLookupFlags, error: ^^glib.Error) -> ^cairo.surface_t ---
		icon_theme_lookup_by_gicon :: proc(icon_theme: ^IconTheme, icon: ^gio.Icon, size_p: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_lookup_by_gicon_for_scale :: proc(icon_theme: ^IconTheme, icon: ^gio.Icon, size_p: glib.int_, scale: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_lookup_icon :: proc(icon_theme: ^IconTheme, icon_name: cstring, size_p: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_lookup_icon_for_scale :: proc(icon_theme: ^IconTheme, icon_name: cstring, size_p: glib.int_, scale: glib.int_, flags: IconLookupFlags) -> ^IconInfo ---
		icon_theme_new :: proc() -> ^IconTheme ---
		icon_theme_prepend_search_path :: proc(icon_theme: ^IconTheme, path: cstring) ---
		icon_theme_rescan_if_needed :: proc(icon_theme: ^IconTheme) -> glib.boolean ---
		icon_theme_set_custom_theme :: proc(icon_theme: ^IconTheme, theme_name: cstring) ---
		icon_theme_set_screen :: proc(icon_theme: ^IconTheme, screen: ^GdkScreen) ---
		icon_theme_set_search_path :: proc(icon_theme: ^IconTheme, path: [^]cstring, n_elements: glib.int_) ---
		icon_view_convert_widget_to_bin_window_coords :: proc(icon_view: ^IconView, wx: glib.int_, wy: glib.int_, bx: ^glib.int_, by: ^glib.int_) ---
		icon_view_create_drag_icon :: proc(icon_view: ^IconView, path: ^TreePath) -> ^cairo.surface_t ---
		icon_view_drop_position_get_type :: proc() -> gobj.Type ---
		icon_view_enable_model_drag_dest :: proc(icon_view: ^IconView, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		icon_view_enable_model_drag_source :: proc(icon_view: ^IconView, start_button_mask: GdkModifierType, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		icon_view_get_activate_on_single_click :: proc(icon_view: ^IconView) -> glib.boolean ---
		icon_view_get_cell_rect :: proc(icon_view: ^IconView, path: ^TreePath, cell: ^CellRenderer, rect: ^GdkRectangle) -> glib.boolean ---
		icon_view_get_column_spacing :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_columns :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_cursor :: proc(icon_view: ^IconView, path: ^^TreePath, cell: ^^CellRenderer) -> glib.boolean ---
		icon_view_get_dest_item_at_pos :: proc(icon_view: ^IconView, drag_x: glib.int_, drag_y: glib.int_, path: ^^TreePath, pos: ^IconViewDropPosition) -> glib.boolean ---
		icon_view_get_drag_dest_item :: proc(icon_view: ^IconView, path: ^^TreePath, pos: ^IconViewDropPosition) ---
		icon_view_get_item_at_pos :: proc(icon_view: ^IconView, x: glib.int_, y: glib.int_, path: ^^TreePath, cell: ^^CellRenderer) -> glib.boolean ---
		icon_view_get_item_column :: proc(icon_view: ^IconView, path: ^TreePath) -> glib.int_ ---
		icon_view_get_item_orientation :: proc(icon_view: ^IconView) -> Orientation ---
		icon_view_get_item_padding :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_item_row :: proc(icon_view: ^IconView, path: ^TreePath) -> glib.int_ ---
		icon_view_get_item_width :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_margin :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_markup_column :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_model :: proc(icon_view: ^IconView) -> ^TreeModel ---
		icon_view_get_path_at_pos :: proc(icon_view: ^IconView, x: glib.int_, y: glib.int_) -> ^TreePath ---
		icon_view_get_pixbuf_column :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_reorderable :: proc(icon_view: ^IconView) -> glib.boolean ---
		icon_view_get_row_spacing :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_selected_items :: proc(icon_view: ^IconView) -> ^glib.List ---
		icon_view_get_selection_mode :: proc(icon_view: ^IconView) -> SelectionMode ---
		icon_view_get_spacing :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_text_column :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_tooltip_column :: proc(icon_view: ^IconView) -> glib.int_ ---
		icon_view_get_tooltip_context :: proc(icon_view: ^IconView, x: ^glib.int_, y: ^glib.int_, keyboard_tip: glib.boolean, model: ^^TreeModel, path: ^^TreePath, iter: ^TreeIter) -> glib.boolean ---
		icon_view_get_type :: proc() -> gobj.Type ---
		icon_view_get_visible_range :: proc(icon_view: ^IconView, start_path: ^^TreePath, end_path: ^^TreePath) -> glib.boolean ---
		icon_view_item_activated :: proc(icon_view: ^IconView, path: ^TreePath) ---
		icon_view_new :: proc() -> ^Widget ---
		icon_view_new_with_area :: proc(area: ^CellArea) -> ^Widget ---
		icon_view_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---
		icon_view_path_is_selected :: proc(icon_view: ^IconView, path: ^TreePath) -> glib.boolean ---
		icon_view_scroll_to_path :: proc(icon_view: ^IconView, path: ^TreePath, use_align: glib.boolean, row_align: glib.float, col_align: glib.float) ---
		icon_view_select_all :: proc(icon_view: ^IconView) ---
		icon_view_select_path :: proc(icon_view: ^IconView, path: ^TreePath) ---
		icon_view_selected_foreach :: proc(icon_view: ^IconView, func: IconViewForeachFunc, data: glib.pointer) ---
		icon_view_set_activate_on_single_click :: proc(icon_view: ^IconView, single: glib.boolean) ---
		icon_view_set_column_spacing :: proc(icon_view: ^IconView, column_spacing: glib.int_) ---
		icon_view_set_columns :: proc(icon_view: ^IconView, columns: glib.int_) ---
		icon_view_set_cursor :: proc(icon_view: ^IconView, path: ^TreePath, cell: ^CellRenderer, start_editing: glib.boolean) ---
		icon_view_set_drag_dest_item :: proc(icon_view: ^IconView, path: ^TreePath, pos: IconViewDropPosition) ---
		icon_view_set_item_orientation :: proc(icon_view: ^IconView, orientation: Orientation) ---
		icon_view_set_item_padding :: proc(icon_view: ^IconView, item_padding: glib.int_) ---
		icon_view_set_item_width :: proc(icon_view: ^IconView, item_width: glib.int_) ---
		icon_view_set_margin :: proc(icon_view: ^IconView, margin: glib.int_) ---
		icon_view_set_markup_column :: proc(icon_view: ^IconView, column: glib.int_) ---
		icon_view_set_model :: proc(icon_view: ^IconView, model: ^TreeModel) ---
		icon_view_set_pixbuf_column :: proc(icon_view: ^IconView, column: glib.int_) ---
		icon_view_set_reorderable :: proc(icon_view: ^IconView, reorderable: glib.boolean) ---
		icon_view_set_row_spacing :: proc(icon_view: ^IconView, row_spacing: glib.int_) ---
		icon_view_set_selection_mode :: proc(icon_view: ^IconView, mode: SelectionMode) ---
		icon_view_set_spacing :: proc(icon_view: ^IconView, spacing: glib.int_) ---
		icon_view_set_text_column :: proc(icon_view: ^IconView, column: glib.int_) ---
		icon_view_set_tooltip_cell :: proc(icon_view: ^IconView, tooltip: ^Tooltip, path: ^TreePath, cell: ^CellRenderer) ---
		icon_view_set_tooltip_column :: proc(icon_view: ^IconView, column: glib.int_) ---
		icon_view_set_tooltip_item :: proc(icon_view: ^IconView, tooltip: ^Tooltip, path: ^TreePath) ---
		icon_view_unselect_all :: proc(icon_view: ^IconView) ---
		icon_view_unselect_path :: proc(icon_view: ^IconView, path: ^TreePath) ---
		icon_view_unset_model_drag_dest :: proc(icon_view: ^IconView) ---
		icon_view_unset_model_drag_source :: proc(icon_view: ^IconView) ---
		im_context_delete_surrounding :: proc(context_p: ^IMContext, offset: glib.int_, n_chars: glib.int_) -> glib.boolean ---
		im_context_filter_keypress :: proc(context_p: ^IMContext, event: ^GdkEventKey) -> glib.boolean ---
		im_context_focus_in :: proc(context_p: ^IMContext) ---
		im_context_focus_out :: proc(context_p: ^IMContext) ---
		im_context_get_preedit_string :: proc(context_p: ^IMContext, str: ^cstring, attrs: ^^pango.AttrList, cursor_pos: ^glib.int_) ---
		im_context_get_surrounding :: proc(context_p: ^IMContext, text: ^cstring, cursor_index: ^glib.int_) -> glib.boolean ---
		im_context_get_type :: proc() -> gobj.Type ---
		im_context_reset :: proc(context_p: ^IMContext) ---
		im_context_set_client_window :: proc(context_p: ^IMContext, window: ^GdkWindow) ---
		im_context_set_cursor_location :: proc(context_p: ^IMContext, area: ^GdkRectangle) ---
		im_context_set_surrounding :: proc(context_p: ^IMContext, text: cstring, len: glib.int_, cursor_index: glib.int_) ---
		im_context_set_use_preedit :: proc(context_p: ^IMContext, use_preedit: glib.boolean) ---
		im_context_simple_add_compose_file :: proc(context_simple: ^IMContextSimple, compose_file: cstring) ---
		im_context_simple_add_table :: proc(context_simple: ^IMContextSimple, data: ^glib.uint16, max_seq_len: glib.int_, n_seqs: glib.int_) ---
		im_context_simple_get_type :: proc() -> gobj.Type ---
		im_context_simple_new :: proc() -> ^IMContext ---
		im_multicontext_append_menuitems :: proc(context_p: ^IMMulticontext, menushell: ^MenuShell) ---
		im_multicontext_get_context_id :: proc(context_p: ^IMMulticontext) -> cstring ---
		im_multicontext_get_type :: proc() -> gobj.Type ---
		im_multicontext_new :: proc() -> ^IMContext ---
		im_multicontext_set_context_id :: proc(context_p: ^IMMulticontext, context_id: cstring) ---
		im_preedit_style_get_type :: proc() -> gobj.Type ---
		im_status_style_get_type :: proc() -> gobj.Type ---
		image_clear :: proc(image: ^Image) ---
		image_get_animation :: proc(image: ^Image) -> ^pixbuf.PixbufAnimation ---
		image_get_gicon :: proc(image: ^Image, gicon: ^^gio.Icon, size_p: ^IconSize) ---
		image_get_icon_name :: proc(image: ^Image, icon_name: ^cstring, size_p: ^IconSize) ---
		image_get_icon_set :: proc(image: ^Image, icon_set: ^^IconSet, size_p: ^IconSize) ---
		image_get_pixbuf :: proc(image: ^Image) -> ^pixbuf.Pixbuf ---
		image_get_pixel_size :: proc(image: ^Image) -> glib.int_ ---
		image_get_stock :: proc(image: ^Image, stock_id: ^cstring, size_p: ^IconSize) ---
		image_get_storage_type :: proc(image: ^Image) -> ImageType ---
		image_get_type :: proc() -> gobj.Type ---
		image_menu_item_get_always_show_image :: proc(image_menu_item: ^ImageMenuItem) -> glib.boolean ---
		image_menu_item_get_image :: proc(image_menu_item: ^ImageMenuItem) -> ^Widget ---
		image_menu_item_get_type :: proc() -> gobj.Type ---
		image_menu_item_get_use_stock :: proc(image_menu_item: ^ImageMenuItem) -> glib.boolean ---
		image_menu_item_new :: proc() -> ^Widget ---
		image_menu_item_new_from_stock :: proc(stock_id: cstring, accel_group: ^AccelGroup) -> ^Widget ---
		image_menu_item_new_with_label :: proc(label: cstring) -> ^Widget ---
		image_menu_item_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		image_menu_item_set_accel_group :: proc(image_menu_item: ^ImageMenuItem, accel_group: ^AccelGroup) ---
		image_menu_item_set_always_show_image :: proc(image_menu_item: ^ImageMenuItem, always_show: glib.boolean) ---
		image_menu_item_set_image :: proc(image_menu_item: ^ImageMenuItem, image: ^Widget) ---
		image_menu_item_set_use_stock :: proc(image_menu_item: ^ImageMenuItem, use_stock: glib.boolean) ---
		image_new :: proc() -> ^Widget ---
		image_new_from_animation :: proc(animation: ^pixbuf.PixbufAnimation) -> ^Widget ---
		image_new_from_file :: proc(filename: cstring) -> ^Widget ---
		image_new_from_gicon :: proc(icon: ^gio.Icon, size_p: IconSize) -> ^Widget ---
		image_new_from_icon_name :: proc(icon_name: cstring, size_p: IconSize) -> ^Widget ---
		image_new_from_icon_set :: proc(icon_set: ^IconSet, size_p: IconSize) -> ^Widget ---
		image_new_from_pixbuf :: proc(pixbuf: ^pixbuf.Pixbuf) -> ^Widget ---
		image_new_from_resource :: proc(resource_path: cstring) -> ^Widget ---
		image_new_from_stock :: proc(stock_id: cstring, size_p: IconSize) -> ^Widget ---
		image_new_from_surface :: proc(surface: ^cairo.surface_t) -> ^Widget ---
		image_set_from_animation :: proc(image: ^Image, animation: ^pixbuf.PixbufAnimation) ---
		image_set_from_file :: proc(image: ^Image, filename: cstring) ---
		image_set_from_gicon :: proc(image: ^Image, icon: ^gio.Icon, size_p: IconSize) ---
		image_set_from_icon_name :: proc(image: ^Image, icon_name: cstring, size_p: IconSize) ---
		image_set_from_icon_set :: proc(image: ^Image, icon_set: ^IconSet, size_p: IconSize) ---
		image_set_from_pixbuf :: proc(image: ^Image, pixbuf: ^pixbuf.Pixbuf) ---
		image_set_from_resource :: proc(image: ^Image, resource_path: cstring) ---
		image_set_from_stock :: proc(image: ^Image, stock_id: cstring, size_p: IconSize) ---
		image_set_from_surface :: proc(image: ^Image, surface: ^cairo.surface_t) ---
		image_set_pixel_size :: proc(image: ^Image, pixel_size: glib.int_) ---
		image_type_get_type :: proc() -> gobj.Type ---
		info_bar_add_action_widget :: proc(info_bar: ^InfoBar, child: ^Widget, response_id: glib.int_) ---
		info_bar_add_button :: proc(info_bar: ^InfoBar, button_text: cstring, response_id: glib.int_) -> ^Widget ---
		info_bar_add_buttons :: proc(info_bar: ^InfoBar, first_button_text: cstring, #c_vararg var_args: ..any) ---
		info_bar_get_action_area :: proc(info_bar: ^InfoBar) -> ^Widget ---
		info_bar_get_content_area :: proc(info_bar: ^InfoBar) -> ^Widget ---
		info_bar_get_message_type :: proc(info_bar: ^InfoBar) -> MessageType ---
		info_bar_get_revealed :: proc(info_bar: ^InfoBar) -> glib.boolean ---
		info_bar_get_show_close_button :: proc(info_bar: ^InfoBar) -> glib.boolean ---
		info_bar_get_type :: proc() -> gobj.Type ---
		info_bar_new :: proc() -> ^Widget ---
		info_bar_new_with_buttons :: proc(first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		info_bar_response :: proc(info_bar: ^InfoBar, response_id: glib.int_) ---
		info_bar_set_default_response :: proc(info_bar: ^InfoBar, response_id: glib.int_) ---
		info_bar_set_message_type :: proc(info_bar: ^InfoBar, message_type: MessageType) ---
		info_bar_set_response_sensitive :: proc(info_bar: ^InfoBar, response_id: glib.int_, setting: glib.boolean) ---
		info_bar_set_revealed :: proc(info_bar: ^InfoBar, revealed: glib.boolean) ---
		info_bar_set_show_close_button :: proc(info_bar: ^InfoBar, setting: glib.boolean) ---
		init :: proc(argc: ^i32, argv: ^^cstring) ---
		init_check :: proc(argc: ^i32, argv: ^^cstring) -> glib.boolean ---
		init_with_args :: proc(argc: ^glib.int_, argv: ^^cstring, parameter_string: cstring, entries: [^]glib.OptionEntry, translation_domain: cstring, error: ^^glib.Error) -> glib.boolean ---
		input_hints_get_type :: proc() -> gobj.Type ---
		input_purpose_get_type :: proc() -> gobj.Type ---
		invisible_get_screen :: proc(invisible: ^Invisible) -> ^GdkScreen ---
		invisible_get_type :: proc() -> gobj.Type ---
		invisible_new :: proc() -> ^Widget ---
		invisible_new_for_screen :: proc(screen: ^GdkScreen) -> ^Widget ---
		invisible_set_screen :: proc(invisible: ^Invisible, screen: ^GdkScreen) ---
		junction_sides_get_type :: proc() -> gobj.Type ---
		justification_get_type :: proc() -> gobj.Type ---
		key_snooper_install :: proc(snooper: KeySnoopFunc, func_data: glib.pointer) -> glib.uint_ ---
		key_snooper_remove :: proc(snooper_handler_id: glib.uint_) ---
		label_get_angle :: proc(label: ^Label) -> glib.double ---
		label_get_attributes :: proc(label: ^Label) -> ^pango.AttrList ---
		label_get_current_uri :: proc(label: ^Label) -> cstring ---
		label_get_ellipsize :: proc(label: ^Label) -> pango.EllipsizeMode ---
		label_get_justify :: proc(label: ^Label) -> Justification ---
		label_get_label :: proc(label: ^Label) -> cstring ---
		label_get_layout :: proc(label: ^Label) -> ^pango.Layout ---
		label_get_layout_offsets :: proc(label: ^Label, x: ^glib.int_, y: ^glib.int_) ---
		label_get_line_wrap :: proc(label: ^Label) -> glib.boolean ---
		label_get_line_wrap_mode :: proc(label: ^Label) -> pango.WrapMode ---
		label_get_lines :: proc(label: ^Label) -> glib.int_ ---
		label_get_max_width_chars :: proc(label: ^Label) -> glib.int_ ---
		label_get_mnemonic_keyval :: proc(label: ^Label) -> glib.uint_ ---
		label_get_mnemonic_widget :: proc(label: ^Label) -> ^Widget ---
		label_get_selectable :: proc(label: ^Label) -> glib.boolean ---
		label_get_selection_bounds :: proc(label: ^Label, start: ^glib.int_, end: ^glib.int_) -> glib.boolean ---
		label_get_single_line_mode :: proc(label: ^Label) -> glib.boolean ---
		label_get_text :: proc(label: ^Label) -> cstring ---
		label_get_track_visited_links :: proc(label: ^Label) -> glib.boolean ---
		label_get_type :: proc() -> gobj.Type ---
		label_get_use_markup :: proc(label: ^Label) -> glib.boolean ---
		label_get_use_underline :: proc(label: ^Label) -> glib.boolean ---
		label_get_width_chars :: proc(label: ^Label) -> glib.int_ ---
		label_get_xalign :: proc(label: ^Label) -> glib.float ---
		label_get_yalign :: proc(label: ^Label) -> glib.float ---
		label_new :: proc(str: cstring) -> ^Widget ---
		label_new_with_mnemonic :: proc(str: cstring) -> ^Widget ---
		label_select_region :: proc(label: ^Label, start_offset: glib.int_, end_offset: glib.int_) ---
		label_set_angle :: proc(label: ^Label, angle: glib.double) ---
		label_set_attributes :: proc(label: ^Label, attrs: ^pango.AttrList) ---
		label_set_ellipsize :: proc(label: ^Label, mode: pango.EllipsizeMode) ---
		label_set_justify :: proc(label: ^Label, jtype: Justification) ---
		label_set_label :: proc(label: ^Label, str: cstring) ---
		label_set_line_wrap :: proc(label: ^Label, wrap: glib.boolean) ---
		label_set_line_wrap_mode :: proc(label: ^Label, wrap_mode: pango.WrapMode) ---
		label_set_lines :: proc(label: ^Label, lines: glib.int_) ---
		label_set_markup :: proc(label: ^Label, str: cstring) ---
		label_set_markup_with_mnemonic :: proc(label: ^Label, str: cstring) ---
		label_set_max_width_chars :: proc(label: ^Label, n_chars: glib.int_) ---
		label_set_mnemonic_widget :: proc(label: ^Label, widget: ^Widget) ---
		label_set_pattern :: proc(label: ^Label, pattern: cstring) ---
		label_set_selectable :: proc(label: ^Label, setting: glib.boolean) ---
		label_set_single_line_mode :: proc(label: ^Label, single_line_mode: glib.boolean) ---
		label_set_text :: proc(label: ^Label, str: cstring) ---
		label_set_text_with_mnemonic :: proc(label: ^Label, str: cstring) ---
		label_set_track_visited_links :: proc(label: ^Label, track_links: glib.boolean) ---
		label_set_use_markup :: proc(label: ^Label, setting: glib.boolean) ---
		label_set_use_underline :: proc(label: ^Label, setting: glib.boolean) ---
		label_set_width_chars :: proc(label: ^Label, n_chars: glib.int_) ---
		label_set_xalign :: proc(label: ^Label, xalign: glib.float) ---
		label_set_yalign :: proc(label: ^Label, yalign: glib.float) ---
		layout_get_bin_window :: proc(layout: ^Layout) -> ^GdkWindow ---
		layout_get_hadjustment :: proc(layout: ^Layout) -> ^Adjustment ---
		layout_get_size :: proc(layout: ^Layout, width: ^glib.uint_, height: ^glib.uint_) ---
		layout_get_type :: proc() -> gobj.Type ---
		layout_get_vadjustment :: proc(layout: ^Layout) -> ^Adjustment ---
		layout_move :: proc(layout: ^Layout, child_widget: ^Widget, x: glib.int_, y: glib.int_) ---
		layout_new :: proc(hadjustment: ^Adjustment, vadjustment: ^Adjustment) -> ^Widget ---
		layout_put :: proc(layout: ^Layout, child_widget: ^Widget, x: glib.int_, y: glib.int_) ---
		layout_set_hadjustment :: proc(layout: ^Layout, adjustment: ^Adjustment) ---
		layout_set_size :: proc(layout: ^Layout, width: glib.uint_, height: glib.uint_) ---
		layout_set_vadjustment :: proc(layout: ^Layout, adjustment: ^Adjustment) ---
		level_bar_add_offset_value :: proc(self: ^LevelBar, name: cstring, value: glib.double) ---
		level_bar_get_inverted :: proc(self: ^LevelBar) -> glib.boolean ---
		level_bar_get_max_value :: proc(self: ^LevelBar) -> glib.double ---
		level_bar_get_min_value :: proc(self: ^LevelBar) -> glib.double ---
		level_bar_get_mode :: proc(self: ^LevelBar) -> LevelBarMode ---
		level_bar_get_offset_value :: proc(self: ^LevelBar, name: cstring, value: ^glib.double) -> glib.boolean ---
		level_bar_get_type :: proc() -> gobj.Type ---
		level_bar_get_value :: proc(self: ^LevelBar) -> glib.double ---
		level_bar_mode_get_type :: proc() -> gobj.Type ---
		level_bar_new :: proc() -> ^Widget ---
		level_bar_new_for_interval :: proc(min_value: glib.double, max_value: glib.double) -> ^Widget ---
		level_bar_remove_offset_value :: proc(self: ^LevelBar, name: cstring) ---
		level_bar_set_inverted :: proc(self: ^LevelBar, inverted: glib.boolean) ---
		level_bar_set_max_value :: proc(self: ^LevelBar, value: glib.double) ---
		level_bar_set_min_value :: proc(self: ^LevelBar, value: glib.double) ---
		level_bar_set_mode :: proc(self: ^LevelBar, mode: LevelBarMode) ---
		level_bar_set_value :: proc(self: ^LevelBar, value: glib.double) ---
		license_get_type :: proc() -> gobj.Type ---
		link_button_get_type :: proc() -> gobj.Type ---
		link_button_get_uri :: proc(link_button: ^LinkButton) -> cstring ---
		link_button_get_visited :: proc(link_button: ^LinkButton) -> glib.boolean ---
		link_button_new :: proc(uri: cstring) -> ^Widget ---
		link_button_new_with_label :: proc(uri: cstring, label: cstring) -> ^Widget ---
		link_button_set_uri :: proc(link_button: ^LinkButton, uri: cstring) ---
		link_button_set_visited :: proc(link_button: ^LinkButton, visited: glib.boolean) ---
		list_box_bind_model :: proc(box: ^ListBox, model: ^gio.ListModel, create_widget_func: ListBoxCreateWidgetFunc, user_data: glib.pointer, user_data_free_func: glib.DestroyNotify) ---
		list_box_drag_highlight_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---
		list_box_drag_unhighlight_row :: proc(box: ^ListBox) ---
		list_box_get_activate_on_single_click :: proc(box: ^ListBox) -> glib.boolean ---
		list_box_get_adjustment :: proc(box: ^ListBox) -> ^Adjustment ---
		list_box_get_row_at_index :: proc(box: ^ListBox, index_: glib.int_) -> ^ListBoxRow ---
		list_box_get_row_at_y :: proc(box: ^ListBox, y: glib.int_) -> ^ListBoxRow ---
		list_box_get_selected_row :: proc(box: ^ListBox) -> ^ListBoxRow ---
		list_box_get_selected_rows :: proc(box: ^ListBox) -> ^glib.List ---
		list_box_get_selection_mode :: proc(box: ^ListBox) -> SelectionMode ---
		list_box_get_type :: proc() -> gobj.Type ---
		list_box_insert :: proc(box: ^ListBox, child: ^Widget, position: glib.int_) ---
		list_box_invalidate_filter :: proc(box: ^ListBox) ---
		list_box_invalidate_headers :: proc(box: ^ListBox) ---
		list_box_invalidate_sort :: proc(box: ^ListBox) ---
		list_box_new :: proc() -> ^Widget ---
		list_box_prepend :: proc(box: ^ListBox, child: ^Widget) ---
		list_box_row_changed :: proc(row: ^ListBoxRow) ---
		list_box_row_get_activatable :: proc(row: ^ListBoxRow) -> glib.boolean ---
		list_box_row_get_header :: proc(row: ^ListBoxRow) -> ^Widget ---
		list_box_row_get_index :: proc(row: ^ListBoxRow) -> glib.int_ ---
		list_box_row_get_selectable :: proc(row: ^ListBoxRow) -> glib.boolean ---
		list_box_row_get_type :: proc() -> gobj.Type ---
		list_box_row_is_selected :: proc(row: ^ListBoxRow) -> glib.boolean ---
		list_box_row_new :: proc() -> ^Widget ---
		list_box_row_set_activatable :: proc(row: ^ListBoxRow, activatable: glib.boolean) ---
		list_box_row_set_header :: proc(row: ^ListBoxRow, header: ^Widget) ---
		list_box_row_set_selectable :: proc(row: ^ListBoxRow, selectable: glib.boolean) ---
		list_box_select_all :: proc(box: ^ListBox) ---
		list_box_select_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---
		list_box_selected_foreach :: proc(box: ^ListBox, func: ListBoxForeachFunc, data: glib.pointer) ---
		list_box_set_activate_on_single_click :: proc(box: ^ListBox, single: glib.boolean) ---
		list_box_set_adjustment :: proc(box: ^ListBox, adjustment: ^Adjustment) ---
		list_box_set_filter_func :: proc(box: ^ListBox, filter_func: ListBoxFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		list_box_set_header_func :: proc(box: ^ListBox, update_header: ListBoxUpdateHeaderFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		list_box_set_placeholder :: proc(box: ^ListBox, placeholder: ^Widget) ---
		list_box_set_selection_mode :: proc(box: ^ListBox, mode: SelectionMode) ---
		list_box_set_sort_func :: proc(box: ^ListBox, sort_func: ListBoxSortFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		list_box_unselect_all :: proc(box: ^ListBox) ---
		list_box_unselect_row :: proc(box: ^ListBox, row: ^ListBoxRow) ---
		list_store_append :: proc(list_store: ^ListStore, iter: ^TreeIter) ---
		list_store_clear :: proc(list_store: ^ListStore) ---
		list_store_get_type :: proc() -> gobj.Type ---
		list_store_insert :: proc(list_store: ^ListStore, iter: ^TreeIter, position: glib.int_) ---
		list_store_insert_after :: proc(list_store: ^ListStore, iter: ^TreeIter, sibling: ^TreeIter) ---
		list_store_insert_before :: proc(list_store: ^ListStore, iter: ^TreeIter, sibling: ^TreeIter) ---
		list_store_insert_with_values :: proc(list_store: ^ListStore, iter: ^TreeIter, position: glib.int_, #c_vararg var_args: ..any) ---
		list_store_insert_with_valuesv :: proc(list_store: ^ListStore, iter: ^TreeIter, position: glib.int_, columns: [^]glib.int_, values: [^]gobj.Value, n_values: glib.int_) ---
		list_store_iter_is_valid :: proc(list_store: ^ListStore, iter: ^TreeIter) -> glib.boolean ---
		list_store_move_after :: proc(store: ^ListStore, iter: ^TreeIter, position: ^TreeIter) ---
		list_store_move_before :: proc(store: ^ListStore, iter: ^TreeIter, position: ^TreeIter) ---
		list_store_new :: proc(n_columns: glib.int_, #c_vararg var_args: ..any) -> ^ListStore ---
		list_store_newv :: proc(n_columns: glib.int_, types: [^]gobj.Type) -> ^ListStore ---
		list_store_prepend :: proc(list_store: ^ListStore, iter: ^TreeIter) ---
		list_store_remove :: proc(list_store: ^ListStore, iter: ^TreeIter) -> glib.boolean ---
		list_store_reorder :: proc(store: ^ListStore, new_order: ^glib.int_) ---
		list_store_set :: proc(list_store: ^ListStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---
		list_store_set_column_types :: proc(list_store: ^ListStore, n_columns: glib.int_, types: [^]gobj.Type) ---
		list_store_set_value :: proc(list_store: ^ListStore, iter: ^TreeIter, column: glib.int_, value: ^gobj.Value) ---
		list_store_set_valuesv :: proc(list_store: ^ListStore, iter: ^TreeIter, columns: [^]glib.int_, values: [^]gobj.Value, n_values: glib.int_) ---
		list_store_swap :: proc(store: ^ListStore, a: ^TreeIter, b: ^TreeIter) ---
		lock_button_get_permission :: proc(button: ^LockButton) -> ^gio.Permission ---
		lock_button_get_type :: proc() -> gobj.Type ---
		lock_button_new :: proc(permission: ^gio.Permission) -> ^Widget ---
		lock_button_set_permission :: proc(button: ^LockButton, permission: ^gio.Permission) ---
		main_do_event :: proc(event: ^GdkEvent) ---
		main_iteration :: proc() -> glib.boolean ---
		main_iteration_do :: proc(blocking: glib.boolean) -> glib.boolean ---
		main_level :: proc() -> glib.uint_ ---
		main_quit :: proc() ---
		menu_attach :: proc(menu: ^Menu, child: ^Widget, left_attach: glib.uint_, right_attach: glib.uint_, top_attach: glib.uint_, bottom_attach: glib.uint_) ---
		menu_attach_to_widget :: proc(menu: ^Menu, attach_widget: ^Widget, detacher: MenuDetachFunc) ---
		menu_bar_get_child_pack_direction :: proc(menubar: ^MenuBar) -> PackDirection ---
		menu_bar_get_pack_direction :: proc(menubar: ^MenuBar) -> PackDirection ---
		menu_bar_get_type :: proc() -> gobj.Type ---
		menu_bar_new :: proc() -> ^Widget ---
		menu_bar_new_from_model :: proc(model: ^gio.MenuModel) -> ^Widget ---
		menu_bar_set_child_pack_direction :: proc(menubar: ^MenuBar, child_pack_dir: PackDirection) ---
		menu_bar_set_pack_direction :: proc(menubar: ^MenuBar, pack_dir: PackDirection) ---
		menu_button_get_align_widget :: proc(menu_button: ^MenuButton) -> ^Widget ---
		menu_button_get_direction :: proc(menu_button: ^MenuButton) -> ArrowType ---
		menu_button_get_menu_model :: proc(menu_button: ^MenuButton) -> ^gio.MenuModel ---
		menu_button_get_popover :: proc(menu_button: ^MenuButton) -> ^Popover ---
		menu_button_get_popup :: proc(menu_button: ^MenuButton) -> ^Menu ---
		menu_button_get_type :: proc() -> gobj.Type ---
		menu_button_get_use_popover :: proc(menu_button: ^MenuButton) -> glib.boolean ---
		menu_button_new :: proc() -> ^Widget ---
		menu_button_set_align_widget :: proc(menu_button: ^MenuButton, align_widget: ^Widget) ---
		menu_button_set_direction :: proc(menu_button: ^MenuButton, direction: ArrowType) ---
		menu_button_set_menu_model :: proc(menu_button: ^MenuButton, menu_model: ^gio.MenuModel) ---
		menu_button_set_popover :: proc(menu_button: ^MenuButton, popover: ^Widget) ---
		menu_button_set_popup :: proc(menu_button: ^MenuButton, menu: ^Widget) ---
		menu_button_set_use_popover :: proc(menu_button: ^MenuButton, use_popover: glib.boolean) ---
		menu_detach :: proc(menu: ^Menu) ---
		menu_direction_type_get_type :: proc() -> gobj.Type ---
		menu_get_accel_group :: proc(menu: ^Menu) -> ^AccelGroup ---
		menu_get_accel_path :: proc(menu: ^Menu) -> cstring ---
		menu_get_active :: proc(menu: ^Menu) -> ^Widget ---
		menu_get_attach_widget :: proc(menu: ^Menu) -> ^Widget ---
		menu_get_for_attach_widget :: proc(widget: ^Widget) -> ^glib.List ---
		menu_get_monitor :: proc(menu: ^Menu) -> glib.int_ ---
		menu_get_reserve_toggle_size :: proc(menu: ^Menu) -> glib.boolean ---
		menu_get_tearoff_state :: proc(menu: ^Menu) -> glib.boolean ---
		menu_get_title :: proc(menu: ^Menu) -> cstring ---
		menu_get_type :: proc() -> gobj.Type ---
		menu_item_activate :: proc(menu_item: ^MenuItem) ---
		menu_item_deselect :: proc(menu_item: ^MenuItem) ---
		menu_item_get_accel_path :: proc(menu_item: ^MenuItem) -> cstring ---
		menu_item_get_label :: proc(menu_item: ^MenuItem) -> cstring ---
		menu_item_get_reserve_indicator :: proc(menu_item: ^MenuItem) -> glib.boolean ---
		menu_item_get_right_justified :: proc(menu_item: ^MenuItem) -> glib.boolean ---
		menu_item_get_submenu :: proc(menu_item: ^MenuItem) -> ^Widget ---
		menu_item_get_type :: proc() -> gobj.Type ---
		menu_item_get_use_underline :: proc(menu_item: ^MenuItem) -> glib.boolean ---
		menu_item_new :: proc() -> ^Widget ---
		menu_item_new_with_label :: proc(label: cstring) -> ^Widget ---
		menu_item_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		menu_item_select :: proc(menu_item: ^MenuItem) ---
		menu_item_set_accel_path :: proc(menu_item: ^MenuItem, accel_path: cstring) ---
		menu_item_set_label :: proc(menu_item: ^MenuItem, label: cstring) ---
		menu_item_set_reserve_indicator :: proc(menu_item: ^MenuItem, reserve: glib.boolean) ---
		menu_item_set_right_justified :: proc(menu_item: ^MenuItem, right_justified: glib.boolean) ---
		menu_item_set_submenu :: proc(menu_item: ^MenuItem, submenu: ^Widget) ---
		menu_item_set_use_underline :: proc(menu_item: ^MenuItem, setting: glib.boolean) ---
		menu_item_toggle_size_allocate :: proc(menu_item: ^MenuItem, allocation: glib.int_) ---
		menu_item_toggle_size_request :: proc(menu_item: ^MenuItem, requisition: ^glib.int_) ---
		menu_new :: proc() -> ^Widget ---
		menu_new_from_model :: proc(model: ^gio.MenuModel) -> ^Widget ---
		menu_place_on_monitor :: proc(menu: ^Menu, monitor: ^GdkMonitor) ---
		menu_popdown :: proc(menu: ^Menu) ---
		menu_popup :: proc(menu: ^Menu, parent_menu_shell: ^Widget, parent_menu_item: ^Widget, func: MenuPositionFunc, data: glib.pointer, button: glib.uint_, activate_time: glib.uint32) ---
		menu_popup_at_pointer :: proc(menu: ^Menu, trigger_event: ^GdkEvent) ---
		menu_popup_at_rect :: proc(menu: ^Menu, rect_window: ^GdkWindow, rect: ^GdkRectangle, rect_anchor: GdkGravity, menu_anchor: GdkGravity, trigger_event: ^GdkEvent) ---
		menu_popup_at_widget :: proc(menu: ^Menu, widget: ^Widget, widget_anchor: GdkGravity, menu_anchor: GdkGravity, trigger_event: ^GdkEvent) ---
		menu_popup_for_device :: proc(menu: ^Menu, device: ^GdkDevice, parent_menu_shell: ^Widget, parent_menu_item: ^Widget, func: MenuPositionFunc, data: glib.pointer, destroy: glib.DestroyNotify, button: glib.uint_, activate_time: glib.uint32) ---
		menu_reorder_child :: proc(menu: ^Menu, child: ^Widget, position: glib.int_) ---
		menu_reposition :: proc(menu: ^Menu) ---
		menu_set_accel_group :: proc(menu: ^Menu, accel_group: ^AccelGroup) ---
		menu_set_accel_path :: proc(menu: ^Menu, accel_path: cstring) ---
		menu_set_active :: proc(menu: ^Menu, index: glib.uint_) ---
		menu_set_monitor :: proc(menu: ^Menu, monitor_num: glib.int_) ---
		menu_set_reserve_toggle_size :: proc(menu: ^Menu, reserve_toggle_size: glib.boolean) ---
		menu_set_screen :: proc(menu: ^Menu, screen: ^GdkScreen) ---
		menu_set_tearoff_state :: proc(menu: ^Menu, torn_off: glib.boolean) ---
		menu_set_title :: proc(menu: ^Menu, title: cstring) ---
		menu_shell_activate_item :: proc(menu_shell: ^MenuShell, menu_item: ^Widget, force_deactivate: glib.boolean) ---
		menu_shell_append :: proc(menu_shell: ^MenuShell, child: ^Widget) ---
		menu_shell_bind_model :: proc(menu_shell: ^MenuShell, model: ^gio.MenuModel, action_namespace: cstring, with_separators: glib.boolean) ---
		menu_shell_cancel :: proc(menu_shell: ^MenuShell) ---
		menu_shell_deactivate :: proc(menu_shell: ^MenuShell) ---
		menu_shell_deselect :: proc(menu_shell: ^MenuShell) ---
		menu_shell_get_parent_shell :: proc(menu_shell: ^MenuShell) -> ^Widget ---
		menu_shell_get_selected_item :: proc(menu_shell: ^MenuShell) -> ^Widget ---
		menu_shell_get_take_focus :: proc(menu_shell: ^MenuShell) -> glib.boolean ---
		menu_shell_get_type :: proc() -> gobj.Type ---
		menu_shell_insert :: proc(menu_shell: ^MenuShell, child: ^Widget, position: glib.int_) ---
		menu_shell_prepend :: proc(menu_shell: ^MenuShell, child: ^Widget) ---
		menu_shell_select_first :: proc(menu_shell: ^MenuShell, search_sensitive: glib.boolean) ---
		menu_shell_select_item :: proc(menu_shell: ^MenuShell, menu_item: ^Widget) ---
		menu_shell_set_take_focus :: proc(menu_shell: ^MenuShell, take_focus: glib.boolean) ---
		menu_tool_button_get_menu :: proc(button: ^MenuToolButton) -> ^Widget ---
		menu_tool_button_get_type :: proc() -> gobj.Type ---
		menu_tool_button_new :: proc(icon_widget: ^Widget, label: cstring) -> ^ToolItem ---
		menu_tool_button_new_from_stock :: proc(stock_id: cstring) -> ^ToolItem ---
		menu_tool_button_set_arrow_tooltip_markup :: proc(button: ^MenuToolButton, markup: cstring) ---
		menu_tool_button_set_arrow_tooltip_text :: proc(button: ^MenuToolButton, text: cstring) ---
		menu_tool_button_set_menu :: proc(button: ^MenuToolButton, menu: ^Widget) ---
		message_dialog_format_secondary_markup :: proc(message_dialog: ^MessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---
		message_dialog_format_secondary_text :: proc(message_dialog: ^MessageDialog, message_format: cstring, #c_vararg var_args: ..any) ---
		message_dialog_get_image :: proc(dialog: ^MessageDialog) -> ^Widget ---
		message_dialog_get_message_area :: proc(message_dialog: ^MessageDialog) -> ^Widget ---
		message_dialog_get_type :: proc() -> gobj.Type ---
		message_dialog_new :: proc(parent: ^Window, flags: DialogFlags, type: MessageType, buttons: ButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		message_dialog_new_with_markup :: proc(parent: ^Window, flags: DialogFlags, type: MessageType, buttons: ButtonsType, message_format: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		message_dialog_set_image :: proc(dialog: ^MessageDialog, image: ^Widget) ---
		message_dialog_set_markup :: proc(message_dialog: ^MessageDialog, str: cstring) ---
		message_type_get_type :: proc() -> gobj.Type ---
		misc_get_alignment :: proc(misc: ^Misc, xalign: ^glib.float, yalign: ^glib.float) ---
		misc_get_padding :: proc(misc: ^Misc, xpad: ^glib.int_, ypad: ^glib.int_) ---
		misc_get_type :: proc() -> gobj.Type ---
		misc_set_alignment :: proc(misc: ^Misc, xalign: glib.float, yalign: glib.float) ---
		misc_set_padding :: proc(misc: ^Misc, xpad: glib.int_, ypad: glib.int_) ---
		model_button_get_type :: proc() -> gobj.Type ---
		model_button_new :: proc() -> ^Widget ---
		mount_operation_get_parent :: proc(op: ^MountOperation) -> ^Window ---
		mount_operation_get_screen :: proc(op: ^MountOperation) -> ^GdkScreen ---
		mount_operation_get_type :: proc() -> gobj.Type ---
		mount_operation_is_showing :: proc(op: ^MountOperation) -> glib.boolean ---
		mount_operation_new :: proc(parent: ^Window) -> ^gio.MountOperation ---
		mount_operation_set_parent :: proc(op: ^MountOperation, parent: ^Window) ---
		mount_operation_set_screen :: proc(op: ^MountOperation, screen: ^GdkScreen) ---
		movement_step_get_type :: proc() -> gobj.Type ---
		native_dialog_destroy :: proc(self: ^NativeDialog) ---
		native_dialog_get_modal :: proc(self: ^NativeDialog) -> glib.boolean ---
		native_dialog_get_title :: proc(self: ^NativeDialog) -> cstring ---
		native_dialog_get_transient_for :: proc(self: ^NativeDialog) -> ^Window ---
		native_dialog_get_type :: proc() -> gobj.Type ---
		native_dialog_get_visible :: proc(self: ^NativeDialog) -> glib.boolean ---
		native_dialog_hide :: proc(self: ^NativeDialog) ---
		native_dialog_run :: proc(self: ^NativeDialog) -> glib.int_ ---
		native_dialog_set_modal :: proc(self: ^NativeDialog, modal: glib.boolean) ---
		native_dialog_set_title :: proc(self: ^NativeDialog, title: cstring) ---
		native_dialog_set_transient_for :: proc(self: ^NativeDialog, parent: ^Window) ---
		native_dialog_show :: proc(self: ^NativeDialog) ---
		notebook_append_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) -> glib.int_ ---
		notebook_append_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget) -> glib.int_ ---
		notebook_detach_tab :: proc(notebook: ^Notebook, child: ^Widget) ---
		notebook_get_action_widget :: proc(notebook: ^Notebook, pack_type: PackType) -> ^Widget ---
		notebook_get_current_page :: proc(notebook: ^Notebook) -> glib.int_ ---
		notebook_get_group_name :: proc(notebook: ^Notebook) -> cstring ---
		notebook_get_menu_label :: proc(notebook: ^Notebook, child: ^Widget) -> ^Widget ---
		notebook_get_menu_label_text :: proc(notebook: ^Notebook, child: ^Widget) -> cstring ---
		notebook_get_n_pages :: proc(notebook: ^Notebook) -> glib.int_ ---
		notebook_get_nth_page :: proc(notebook: ^Notebook, page_num: glib.int_) -> ^Widget ---
		notebook_get_scrollable :: proc(notebook: ^Notebook) -> glib.boolean ---
		notebook_get_show_border :: proc(notebook: ^Notebook) -> glib.boolean ---
		notebook_get_show_tabs :: proc(notebook: ^Notebook) -> glib.boolean ---
		notebook_get_tab_detachable :: proc(notebook: ^Notebook, child: ^Widget) -> glib.boolean ---
		notebook_get_tab_hborder :: proc(notebook: ^Notebook) -> glib.uint16 ---
		notebook_get_tab_label :: proc(notebook: ^Notebook, child: ^Widget) -> ^Widget ---
		notebook_get_tab_label_text :: proc(notebook: ^Notebook, child: ^Widget) -> cstring ---
		notebook_get_tab_pos :: proc(notebook: ^Notebook) -> PositionType ---
		notebook_get_tab_reorderable :: proc(notebook: ^Notebook, child: ^Widget) -> glib.boolean ---
		notebook_get_tab_vborder :: proc(notebook: ^Notebook) -> glib.uint16 ---
		notebook_get_type :: proc() -> gobj.Type ---
		notebook_insert_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, position: glib.int_) -> glib.int_ ---
		notebook_insert_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget, position: glib.int_) -> glib.int_ ---
		notebook_new :: proc() -> ^Widget ---
		notebook_next_page :: proc(notebook: ^Notebook) ---
		notebook_page_num :: proc(notebook: ^Notebook, child: ^Widget) -> glib.int_ ---
		notebook_popup_disable :: proc(notebook: ^Notebook) ---
		notebook_popup_enable :: proc(notebook: ^Notebook) ---
		notebook_prepend_page :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) -> glib.int_ ---
		notebook_prepend_page_menu :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget) -> glib.int_ ---
		notebook_prev_page :: proc(notebook: ^Notebook) ---
		notebook_remove_page :: proc(notebook: ^Notebook, page_num: glib.int_) ---
		notebook_reorder_child :: proc(notebook: ^Notebook, child: ^Widget, position: glib.int_) ---
		notebook_set_action_widget :: proc(notebook: ^Notebook, widget: ^Widget, pack_type: PackType) ---
		notebook_set_current_page :: proc(notebook: ^Notebook, page_num: glib.int_) ---
		notebook_set_group_name :: proc(notebook: ^Notebook, group_name: cstring) ---
		notebook_set_menu_label :: proc(notebook: ^Notebook, child: ^Widget, menu_label: ^Widget) ---
		notebook_set_menu_label_text :: proc(notebook: ^Notebook, child: ^Widget, menu_text: cstring) ---
		notebook_set_scrollable :: proc(notebook: ^Notebook, scrollable: glib.boolean) ---
		notebook_set_show_border :: proc(notebook: ^Notebook, show_border: glib.boolean) ---
		notebook_set_show_tabs :: proc(notebook: ^Notebook, show_tabs: glib.boolean) ---
		notebook_set_tab_detachable :: proc(notebook: ^Notebook, child: ^Widget, detachable: glib.boolean) ---
		notebook_set_tab_label :: proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget) ---
		notebook_set_tab_label_text :: proc(notebook: ^Notebook, child: ^Widget, tab_text: cstring) ---
		notebook_set_tab_pos :: proc(notebook: ^Notebook, pos: PositionType) ---
		notebook_set_tab_reorderable :: proc(notebook: ^Notebook, child: ^Widget, reorderable: glib.boolean) ---
		notebook_tab_get_type :: proc() -> gobj.Type ---
		number_up_layout_get_type :: proc() -> gobj.Type ---
		numerable_icon_get_background_gicon :: proc(self: ^NumerableIcon) -> ^gio.Icon ---
		numerable_icon_get_background_icon_name :: proc(self: ^NumerableIcon) -> cstring ---
		numerable_icon_get_count :: proc(self: ^NumerableIcon) -> glib.int_ ---
		numerable_icon_get_label :: proc(self: ^NumerableIcon) -> cstring ---
		numerable_icon_get_style_context :: proc(self: ^NumerableIcon) -> ^StyleContext ---
		numerable_icon_get_type :: proc() -> gobj.Type ---
		numerable_icon_new :: proc(base_icon: ^gio.Icon) -> ^gio.Icon ---
		numerable_icon_new_with_style_context :: proc(base_icon: ^gio.Icon, context_p: ^StyleContext) -> ^gio.Icon ---
		numerable_icon_set_background_gicon :: proc(self: ^NumerableIcon, icon: ^gio.Icon) ---
		numerable_icon_set_background_icon_name :: proc(self: ^NumerableIcon, icon_name: cstring) ---
		numerable_icon_set_count :: proc(self: ^NumerableIcon, count: glib.int_) ---
		numerable_icon_set_label :: proc(self: ^NumerableIcon, label: cstring) ---
		numerable_icon_set_style_context :: proc(self: ^NumerableIcon, style: ^StyleContext) ---
		offscreen_window_get_pixbuf :: proc(offscreen: ^OffscreenWindow) -> ^pixbuf.Pixbuf ---
		offscreen_window_get_surface :: proc(offscreen: ^OffscreenWindow) -> ^cairo.surface_t ---
		offscreen_window_get_type :: proc() -> gobj.Type ---
		offscreen_window_new :: proc() -> ^Widget ---
		orientable_get_orientation :: proc(orientable: ^Orientable) -> Orientation ---
		orientable_get_type :: proc() -> gobj.Type ---
		orientable_set_orientation :: proc(orientable: ^Orientable, orientation: Orientation) ---
		orientation_get_type :: proc() -> gobj.Type ---
		overlay_add_overlay :: proc(overlay: ^Overlay, widget: ^Widget) ---
		overlay_get_overlay_pass_through :: proc(overlay: ^Overlay, widget: ^Widget) -> glib.boolean ---
		overlay_get_type :: proc() -> gobj.Type ---
		overlay_new :: proc() -> ^Widget ---
		overlay_reorder_overlay :: proc(overlay: ^Overlay, child: ^Widget, index_: i32) ---
		overlay_set_overlay_pass_through :: proc(overlay: ^Overlay, widget: ^Widget, pass_through: glib.boolean) ---
		pack_direction_get_type :: proc() -> gobj.Type ---
		pack_type_get_type :: proc() -> gobj.Type ---
		pad_action_type_get_type :: proc() -> gobj.Type ---
		pad_controller_get_type :: proc() -> gobj.Type ---
		pad_controller_new :: proc(window: ^Window, group: ^gio.ActionGroup, pad: ^GdkDevice) -> ^PadController ---
		pad_controller_set_action :: proc(controller: ^PadController, type: PadActionType, index: glib.int_, mode: glib.int_, label: cstring, action_name: cstring) ---
		pad_controller_set_action_entries :: proc(controller: ^PadController, entries: [^]PadActionEntry, n_entries: glib.int_) ---
		page_orientation_get_type :: proc() -> gobj.Type ---
		page_set_get_type :: proc() -> gobj.Type ---
		page_setup_copy :: proc(other: ^PageSetup) -> ^PageSetup ---
		page_setup_get_bottom_margin :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_left_margin :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_orientation :: proc(setup: ^PageSetup) -> PageOrientation ---
		page_setup_get_page_height :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_page_width :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_paper_height :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_paper_size :: proc(setup: ^PageSetup) -> ^PaperSize ---
		page_setup_get_paper_width :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_right_margin :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_top_margin :: proc(setup: ^PageSetup, unit: Unit) -> glib.double ---
		page_setup_get_type :: proc() -> gobj.Type ---
		page_setup_load_file :: proc(setup: ^PageSetup, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		page_setup_load_key_file :: proc(setup: ^PageSetup, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		page_setup_new :: proc() -> ^PageSetup ---
		page_setup_new_from_file :: proc(file_name: cstring, error: ^^glib.Error) -> ^PageSetup ---
		page_setup_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PageSetup ---
		page_setup_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PageSetup ---
		page_setup_set_bottom_margin :: proc(setup: ^PageSetup, margin: glib.double, unit: Unit) ---
		page_setup_set_left_margin :: proc(setup: ^PageSetup, margin: glib.double, unit: Unit) ---
		page_setup_set_orientation :: proc(setup: ^PageSetup, orientation: PageOrientation) ---
		page_setup_set_paper_size :: proc(setup: ^PageSetup, size_p: ^PaperSize) ---
		page_setup_set_paper_size_and_default_margins :: proc(setup: ^PageSetup, size_p: ^PaperSize) ---
		page_setup_set_right_margin :: proc(setup: ^PageSetup, margin: glib.double, unit: Unit) ---
		page_setup_set_top_margin :: proc(setup: ^PageSetup, margin: glib.double, unit: Unit) ---
		page_setup_to_file :: proc(setup: ^PageSetup, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		page_setup_to_gvariant :: proc(setup: ^PageSetup) -> ^glib.Variant ---
		page_setup_to_key_file :: proc(setup: ^PageSetup, key_file: ^glib.KeyFile, group_name: cstring) ---
		paint_arrow :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, arrow_type: ArrowType, fill: glib.boolean, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_box :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_box_gap :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType, gap_x: glib.int_, gap_width: glib.int_) ---
		paint_check :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_diamond :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_expander :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, expander_style: ExpanderStyle) ---
		paint_extension :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType) ---
		paint_flat_box :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_focus :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_handle :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, orientation: Orientation) ---
		paint_hline :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x1: glib.int_, x2: glib.int_, y: glib.int_) ---
		paint_layout :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, use_text: glib.boolean, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, layout: ^pango.Layout) ---
		paint_option :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_resize_grip :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, edge: GdkWindowEdge, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_shadow :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_shadow_gap :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType, gap_x: glib.int_, gap_width: glib.int_) ---
		paint_slider :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, orientation: Orientation) ---
		paint_spinner :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, step: glib.uint_, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_tab :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		paint_vline :: proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, y1_: glib.int_, y2_: glib.int_, x: glib.int_) ---
		pan_direction_get_type :: proc() -> gobj.Type ---
		paned_add1 :: proc(paned: ^Paned, child: ^Widget) ---
		paned_add2 :: proc(paned: ^Paned, child: ^Widget) ---
		paned_get_child1 :: proc(paned: ^Paned) -> ^Widget ---
		paned_get_child2 :: proc(paned: ^Paned) -> ^Widget ---
		paned_get_handle_window :: proc(paned: ^Paned) -> ^GdkWindow ---
		paned_get_position :: proc(paned: ^Paned) -> glib.int_ ---
		paned_get_type :: proc() -> gobj.Type ---
		paned_get_wide_handle :: proc(paned: ^Paned) -> glib.boolean ---
		paned_new :: proc(orientation: Orientation) -> ^Widget ---
		paned_pack1 :: proc(paned: ^Paned, child: ^Widget, resize: glib.boolean, shrink: glib.boolean) ---
		paned_pack2 :: proc(paned: ^Paned, child: ^Widget, resize: glib.boolean, shrink: glib.boolean) ---
		paned_set_position :: proc(paned: ^Paned, position: glib.int_) ---
		paned_set_wide_handle :: proc(paned: ^Paned, wide: glib.boolean) ---
		paper_size_copy :: proc(other: ^PaperSize) -> ^PaperSize ---
		paper_size_free :: proc(size_p: ^PaperSize) ---
		paper_size_get_default :: proc() -> cstring ---
		paper_size_get_default_bottom_margin :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_get_default_left_margin :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_get_default_right_margin :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_get_default_top_margin :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_get_display_name :: proc(size_p: ^PaperSize) -> cstring ---
		paper_size_get_height :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_get_name :: proc(size_p: ^PaperSize) -> cstring ---
		paper_size_get_paper_sizes :: proc(include_custom: glib.boolean) -> ^glib.List ---
		paper_size_get_ppd_name :: proc(size_p: ^PaperSize) -> cstring ---
		paper_size_get_type :: proc() -> gobj.Type ---
		paper_size_get_width :: proc(size_p: ^PaperSize, unit: Unit) -> glib.double ---
		paper_size_is_custom :: proc(size_p: ^PaperSize) -> glib.boolean ---
		paper_size_is_equal :: proc(size1: ^PaperSize, size2: ^PaperSize) -> glib.boolean ---
		paper_size_is_ipp :: proc(size_p: ^PaperSize) -> glib.boolean ---
		paper_size_new :: proc(name: cstring) -> ^PaperSize ---
		paper_size_new_custom :: proc(name: cstring, display_name: cstring, width: glib.double, height: glib.double, unit: Unit) -> ^PaperSize ---
		paper_size_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PaperSize ---
		paper_size_new_from_ipp :: proc(ipp_name: cstring, width: glib.double, height: glib.double) -> ^PaperSize ---
		paper_size_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PaperSize ---
		paper_size_new_from_ppd :: proc(ppd_name: cstring, ppd_display_name: cstring, width: glib.double, height: glib.double) -> ^PaperSize ---
		paper_size_set_size :: proc(size_p: ^PaperSize, width: glib.double, height: glib.double, unit: Unit) ---
		paper_size_to_gvariant :: proc(paper_size: ^PaperSize) -> ^glib.Variant ---
		paper_size_to_key_file :: proc(size_p: ^PaperSize, key_file: ^glib.KeyFile, group_name: cstring) ---
		parse_args :: proc(argc: ^i32, argv: ^^cstring) -> glib.boolean ---
		path_priority_type_get_type :: proc() -> gobj.Type ---
		path_type_get_type :: proc() -> gobj.Type ---
		places_open_flags_get_type :: proc() -> gobj.Type ---
		places_sidebar_add_shortcut :: proc(sidebar: ^PlacesSidebar, location: ^gio.File) ---
		places_sidebar_get_local_only :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_location :: proc(sidebar: ^PlacesSidebar) -> ^gio.File ---
		places_sidebar_get_nth_bookmark :: proc(sidebar: ^PlacesSidebar, n: glib.int_) -> ^gio.File ---
		places_sidebar_get_open_flags :: proc(sidebar: ^PlacesSidebar) -> PlacesOpenFlags ---
		places_sidebar_get_show_connect_to_server :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_desktop :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_enter_location :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_other_locations :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_recent :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_starred_location :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_show_trash :: proc(sidebar: ^PlacesSidebar) -> glib.boolean ---
		places_sidebar_get_type :: proc() -> gobj.Type ---
		places_sidebar_list_shortcuts :: proc(sidebar: ^PlacesSidebar) -> ^glib.SList ---
		places_sidebar_new :: proc() -> ^Widget ---
		places_sidebar_remove_shortcut :: proc(sidebar: ^PlacesSidebar, location: ^gio.File) ---
		places_sidebar_set_drop_targets_visible :: proc(sidebar: ^PlacesSidebar, visible: glib.boolean, context_p: ^GdkDragContext) ---
		places_sidebar_set_local_only :: proc(sidebar: ^PlacesSidebar, local_only: glib.boolean) ---
		places_sidebar_set_location :: proc(sidebar: ^PlacesSidebar, location: ^gio.File) ---
		places_sidebar_set_open_flags :: proc(sidebar: ^PlacesSidebar, flags: PlacesOpenFlags) ---
		places_sidebar_set_show_connect_to_server :: proc(sidebar: ^PlacesSidebar, show_connect_to_server: glib.boolean) ---
		places_sidebar_set_show_desktop :: proc(sidebar: ^PlacesSidebar, show_desktop: glib.boolean) ---
		places_sidebar_set_show_enter_location :: proc(sidebar: ^PlacesSidebar, show_enter_location: glib.boolean) ---
		places_sidebar_set_show_other_locations :: proc(sidebar: ^PlacesSidebar, show_other_locations: glib.boolean) ---
		places_sidebar_set_show_recent :: proc(sidebar: ^PlacesSidebar, show_recent: glib.boolean) ---
		places_sidebar_set_show_starred_location :: proc(sidebar: ^PlacesSidebar, show_starred_location: glib.boolean) ---
		places_sidebar_set_show_trash :: proc(sidebar: ^PlacesSidebar, show_trash: glib.boolean) ---
		policy_type_get_type :: proc() -> gobj.Type ---
		popover_bind_model :: proc(popover: ^Popover, model: ^gio.MenuModel, action_namespace: cstring) ---
		popover_constraint_get_type :: proc() -> gobj.Type ---
		popover_get_constrain_to :: proc(popover: ^Popover) -> PopoverConstraint ---
		popover_get_default_widget :: proc(popover: ^Popover) -> ^Widget ---
		popover_get_modal :: proc(popover: ^Popover) -> glib.boolean ---
		popover_get_pointing_to :: proc(popover: ^Popover, rect: ^GdkRectangle) -> glib.boolean ---
		popover_get_position :: proc(popover: ^Popover) -> PositionType ---
		popover_get_relative_to :: proc(popover: ^Popover) -> ^Widget ---
		popover_get_transitions_enabled :: proc(popover: ^Popover) -> glib.boolean ---
		popover_get_type :: proc() -> gobj.Type ---
		popover_menu_get_type :: proc() -> gobj.Type ---
		popover_menu_new :: proc() -> ^Widget ---
		popover_menu_open_submenu :: proc(popover: ^PopoverMenu, name: cstring) ---
		popover_new :: proc(relative_to: ^Widget) -> ^Widget ---
		popover_new_from_model :: proc(relative_to: ^Widget, model: ^gio.MenuModel) -> ^Widget ---
		popover_popdown :: proc(popover: ^Popover) ---
		popover_popup :: proc(popover: ^Popover) ---
		popover_set_constrain_to :: proc(popover: ^Popover, constraint: PopoverConstraint) ---
		popover_set_default_widget :: proc(popover: ^Popover, widget: ^Widget) ---
		popover_set_modal :: proc(popover: ^Popover, modal: glib.boolean) ---
		popover_set_pointing_to :: proc(popover: ^Popover, rect: ^GdkRectangle) ---
		popover_set_position :: proc(popover: ^Popover, position: PositionType) ---
		popover_set_relative_to :: proc(popover: ^Popover, relative_to: ^Widget) ---
		popover_set_transitions_enabled :: proc(popover: ^Popover, transitions_enabled: glib.boolean) ---
		position_type_get_type :: proc() -> gobj.Type ---
		print_context_create_pango_context :: proc(context_p: ^PrintContext) -> ^pango.Context ---
		print_context_create_pango_layout :: proc(context_p: ^PrintContext) -> ^pango.Layout ---
		print_context_get_cairo_context :: proc(context_p: ^PrintContext) -> ^cairo.context_t ---
		print_context_get_dpi_x :: proc(context_p: ^PrintContext) -> glib.double ---
		print_context_get_dpi_y :: proc(context_p: ^PrintContext) -> glib.double ---
		print_context_get_hard_margins :: proc(context_p: ^PrintContext, top: ^glib.double, bottom: ^glib.double, left: ^glib.double, right: ^glib.double) -> glib.boolean ---
		print_context_get_height :: proc(context_p: ^PrintContext) -> glib.double ---
		print_context_get_page_setup :: proc(context_p: ^PrintContext) -> ^PageSetup ---
		print_context_get_pango_fontmap :: proc(context_p: ^PrintContext) -> ^pango.FontMap ---
		print_context_get_type :: proc() -> gobj.Type ---
		print_context_get_width :: proc(context_p: ^PrintContext) -> glib.double ---
		print_context_set_cairo_context :: proc(context_p: ^PrintContext, cr: ^cairo.context_t, dpi_x: f64, dpi_y: f64) ---
		print_duplex_get_type :: proc() -> gobj.Type ---
		print_error_get_type :: proc() -> gobj.Type ---
		print_error_quark :: proc() -> glib.Quark ---
		print_operation_action_get_type :: proc() -> gobj.Type ---
		print_operation_cancel :: proc(op: ^PrintOperation) ---
		print_operation_draw_page_finish :: proc(op: ^PrintOperation) ---
		print_operation_get_default_page_setup :: proc(op: ^PrintOperation) -> ^PageSetup ---
		print_operation_get_embed_page_setup :: proc(op: ^PrintOperation) -> glib.boolean ---
		print_operation_get_error :: proc(op: ^PrintOperation, error: ^^glib.Error) ---
		print_operation_get_has_selection :: proc(op: ^PrintOperation) -> glib.boolean ---
		print_operation_get_n_pages_to_print :: proc(op: ^PrintOperation) -> glib.int_ ---
		print_operation_get_print_settings :: proc(op: ^PrintOperation) -> ^PrintSettings ---
		print_operation_get_status :: proc(op: ^PrintOperation) -> PrintStatus ---
		print_operation_get_status_string :: proc(op: ^PrintOperation) -> cstring ---
		print_operation_get_support_selection :: proc(op: ^PrintOperation) -> glib.boolean ---
		print_operation_get_type :: proc() -> gobj.Type ---
		print_operation_is_finished :: proc(op: ^PrintOperation) -> glib.boolean ---
		print_operation_new :: proc() -> ^PrintOperation ---
		print_operation_preview_end_preview :: proc(preview: ^PrintOperationPreview) ---
		print_operation_preview_get_type :: proc() -> gobj.Type ---
		print_operation_preview_is_selected :: proc(preview: ^PrintOperationPreview, page_nr: glib.int_) -> glib.boolean ---
		print_operation_preview_render_page :: proc(preview: ^PrintOperationPreview, page_nr: glib.int_) ---
		print_operation_result_get_type :: proc() -> gobj.Type ---
		print_operation_run :: proc(op: ^PrintOperation, action: PrintOperationAction, parent: ^Window, error: ^^glib.Error) -> PrintOperationResult ---
		print_operation_set_allow_async :: proc(op: ^PrintOperation, allow_async: glib.boolean) ---
		print_operation_set_current_page :: proc(op: ^PrintOperation, current_page: glib.int_) ---
		print_operation_set_custom_tab_label :: proc(op: ^PrintOperation, label: cstring) ---
		print_operation_set_default_page_setup :: proc(op: ^PrintOperation, default_page_setup: ^PageSetup) ---
		print_operation_set_defer_drawing :: proc(op: ^PrintOperation) ---
		print_operation_set_embed_page_setup :: proc(op: ^PrintOperation, embed: glib.boolean) ---
		print_operation_set_export_filename :: proc(op: ^PrintOperation, filename: cstring) ---
		print_operation_set_has_selection :: proc(op: ^PrintOperation, has_selection: glib.boolean) ---
		print_operation_set_job_name :: proc(op: ^PrintOperation, job_name: cstring) ---
		print_operation_set_n_pages :: proc(op: ^PrintOperation, n_pages: glib.int_) ---
		print_operation_set_print_settings :: proc(op: ^PrintOperation, print_settings: ^PrintSettings) ---
		print_operation_set_show_progress :: proc(op: ^PrintOperation, show_progress: glib.boolean) ---
		print_operation_set_support_selection :: proc(op: ^PrintOperation, support_selection: glib.boolean) ---
		print_operation_set_track_print_status :: proc(op: ^PrintOperation, track_status: glib.boolean) ---
		print_operation_set_unit :: proc(op: ^PrintOperation, unit: Unit) ---
		print_operation_set_use_full_page :: proc(op: ^PrintOperation, full_page: glib.boolean) ---
		print_pages_get_type :: proc() -> gobj.Type ---
		print_quality_get_type :: proc() -> gobj.Type ---
		print_run_page_setup_dialog :: proc(parent: ^Window, page_setup: ^PageSetup, settings: ^PrintSettings) -> ^PageSetup ---
		print_run_page_setup_dialog_async :: proc(parent: ^Window, page_setup: ^PageSetup, settings: ^PrintSettings, done_cb: PageSetupDoneFunc, data: glib.pointer) ---
		print_settings_copy :: proc(other: ^PrintSettings) -> ^PrintSettings ---
		print_settings_foreach :: proc(settings: ^PrintSettings, func: PrintSettingsFunc, user_data: glib.pointer) ---
		print_settings_get :: proc(settings: ^PrintSettings, key: cstring) -> cstring ---
		print_settings_get_bool :: proc(settings: ^PrintSettings, key: cstring) -> glib.boolean ---
		print_settings_get_collate :: proc(settings: ^PrintSettings) -> glib.boolean ---
		print_settings_get_default_source :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_dither :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_double :: proc(settings: ^PrintSettings, key: cstring) -> glib.double ---
		print_settings_get_double_with_default :: proc(settings: ^PrintSettings, key: cstring, def: glib.double) -> glib.double ---
		print_settings_get_duplex :: proc(settings: ^PrintSettings) -> PrintDuplex ---
		print_settings_get_finishings :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_int :: proc(settings: ^PrintSettings, key: cstring) -> glib.int_ ---
		print_settings_get_int_with_default :: proc(settings: ^PrintSettings, key: cstring, def: glib.int_) -> glib.int_ ---
		print_settings_get_length :: proc(settings: ^PrintSettings, key: cstring, unit: Unit) -> glib.double ---
		print_settings_get_media_type :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_n_copies :: proc(settings: ^PrintSettings) -> glib.int_ ---
		print_settings_get_number_up :: proc(settings: ^PrintSettings) -> glib.int_ ---
		print_settings_get_number_up_layout :: proc(settings: ^PrintSettings) -> NumberUpLayout ---
		print_settings_get_orientation :: proc(settings: ^PrintSettings) -> PageOrientation ---
		print_settings_get_output_bin :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_page_ranges :: proc(settings: ^PrintSettings, num_ranges: ^glib.int_) -> ^PageRange ---
		print_settings_get_page_set :: proc(settings: ^PrintSettings) -> PageSet ---
		print_settings_get_paper_height :: proc(settings: ^PrintSettings, unit: Unit) -> glib.double ---
		print_settings_get_paper_size :: proc(settings: ^PrintSettings) -> ^PaperSize ---
		print_settings_get_paper_width :: proc(settings: ^PrintSettings, unit: Unit) -> glib.double ---
		print_settings_get_print_pages :: proc(settings: ^PrintSettings) -> PrintPages ---
		print_settings_get_printer :: proc(settings: ^PrintSettings) -> cstring ---
		print_settings_get_printer_lpi :: proc(settings: ^PrintSettings) -> glib.double ---
		print_settings_get_quality :: proc(settings: ^PrintSettings) -> PrintQuality ---
		print_settings_get_resolution :: proc(settings: ^PrintSettings) -> glib.int_ ---
		print_settings_get_resolution_x :: proc(settings: ^PrintSettings) -> glib.int_ ---
		print_settings_get_resolution_y :: proc(settings: ^PrintSettings) -> glib.int_ ---
		print_settings_get_reverse :: proc(settings: ^PrintSettings) -> glib.boolean ---
		print_settings_get_scale :: proc(settings: ^PrintSettings) -> glib.double ---
		print_settings_get_type :: proc() -> gobj.Type ---
		print_settings_get_use_color :: proc(settings: ^PrintSettings) -> glib.boolean ---
		print_settings_has_key :: proc(settings: ^PrintSettings, key: cstring) -> glib.boolean ---
		print_settings_load_file :: proc(settings: ^PrintSettings, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		print_settings_load_key_file :: proc(settings: ^PrintSettings, key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		print_settings_new :: proc() -> ^PrintSettings ---
		print_settings_new_from_file :: proc(file_name: cstring, error: ^^glib.Error) -> ^PrintSettings ---
		print_settings_new_from_gvariant :: proc(variant: ^glib.Variant) -> ^PrintSettings ---
		print_settings_new_from_key_file :: proc(key_file: ^glib.KeyFile, group_name: cstring, error: ^^glib.Error) -> ^PrintSettings ---
		print_settings_set :: proc(settings: ^PrintSettings, key: cstring, value: cstring) ---
		print_settings_set_bool :: proc(settings: ^PrintSettings, key: cstring, value: glib.boolean) ---
		print_settings_set_collate :: proc(settings: ^PrintSettings, collate: glib.boolean) ---
		print_settings_set_default_source :: proc(settings: ^PrintSettings, default_source: cstring) ---
		print_settings_set_dither :: proc(settings: ^PrintSettings, dither: cstring) ---
		print_settings_set_double :: proc(settings: ^PrintSettings, key: cstring, value: glib.double) ---
		print_settings_set_duplex :: proc(settings: ^PrintSettings, duplex: PrintDuplex) ---
		print_settings_set_finishings :: proc(settings: ^PrintSettings, finishings: cstring) ---
		print_settings_set_int :: proc(settings: ^PrintSettings, key: cstring, value: glib.int_) ---
		print_settings_set_length :: proc(settings: ^PrintSettings, key: cstring, value: glib.double, unit: Unit) ---
		print_settings_set_media_type :: proc(settings: ^PrintSettings, media_type: cstring) ---
		print_settings_set_n_copies :: proc(settings: ^PrintSettings, num_copies: glib.int_) ---
		print_settings_set_number_up :: proc(settings: ^PrintSettings, number_up: glib.int_) ---
		print_settings_set_number_up_layout :: proc(settings: ^PrintSettings, number_up_layout: NumberUpLayout) ---
		print_settings_set_orientation :: proc(settings: ^PrintSettings, orientation: PageOrientation) ---
		print_settings_set_output_bin :: proc(settings: ^PrintSettings, output_bin: cstring) ---
		print_settings_set_page_ranges :: proc(settings: ^PrintSettings, page_ranges: [^]PageRange, num_ranges: glib.int_) ---
		print_settings_set_page_set :: proc(settings: ^PrintSettings, page_set: PageSet) ---
		print_settings_set_paper_height :: proc(settings: ^PrintSettings, height: glib.double, unit: Unit) ---
		print_settings_set_paper_size :: proc(settings: ^PrintSettings, paper_size: ^PaperSize) ---
		print_settings_set_paper_width :: proc(settings: ^PrintSettings, width: glib.double, unit: Unit) ---
		print_settings_set_print_pages :: proc(settings: ^PrintSettings, pages: PrintPages) ---
		print_settings_set_printer :: proc(settings: ^PrintSettings, printer: cstring) ---
		print_settings_set_printer_lpi :: proc(settings: ^PrintSettings, lpi: glib.double) ---
		print_settings_set_quality :: proc(settings: ^PrintSettings, quality: PrintQuality) ---
		print_settings_set_resolution :: proc(settings: ^PrintSettings, resolution: glib.int_) ---
		print_settings_set_resolution_xy :: proc(settings: ^PrintSettings, resolution_x: glib.int_, resolution_y: glib.int_) ---
		print_settings_set_reverse :: proc(settings: ^PrintSettings, reverse: glib.boolean) ---
		print_settings_set_scale :: proc(settings: ^PrintSettings, scale: glib.double) ---
		print_settings_set_use_color :: proc(settings: ^PrintSettings, use_color: glib.boolean) ---
		print_settings_to_file :: proc(settings: ^PrintSettings, file_name: cstring, error: ^^glib.Error) -> glib.boolean ---
		print_settings_to_gvariant :: proc(settings: ^PrintSettings) -> ^glib.Variant ---
		print_settings_to_key_file :: proc(settings: ^PrintSettings, key_file: ^glib.KeyFile, group_name: cstring) ---
		print_settings_unset :: proc(settings: ^PrintSettings, key: cstring) ---
		print_status_get_type :: proc() -> gobj.Type ---
		progress_bar_get_ellipsize :: proc(pbar: ^ProgressBar) -> pango.EllipsizeMode ---
		progress_bar_get_fraction :: proc(pbar: ^ProgressBar) -> glib.double ---
		progress_bar_get_inverted :: proc(pbar: ^ProgressBar) -> glib.boolean ---
		progress_bar_get_pulse_step :: proc(pbar: ^ProgressBar) -> glib.double ---
		progress_bar_get_show_text :: proc(pbar: ^ProgressBar) -> glib.boolean ---
		progress_bar_get_text :: proc(pbar: ^ProgressBar) -> cstring ---
		progress_bar_get_type :: proc() -> gobj.Type ---
		progress_bar_new :: proc() -> ^Widget ---
		progress_bar_pulse :: proc(pbar: ^ProgressBar) ---
		progress_bar_set_ellipsize :: proc(pbar: ^ProgressBar, mode: pango.EllipsizeMode) ---
		progress_bar_set_fraction :: proc(pbar: ^ProgressBar, fraction: glib.double) ---
		progress_bar_set_inverted :: proc(pbar: ^ProgressBar, inverted: glib.boolean) ---
		progress_bar_set_pulse_step :: proc(pbar: ^ProgressBar, fraction: glib.double) ---
		progress_bar_set_show_text :: proc(pbar: ^ProgressBar, show_text: glib.boolean) ---
		progress_bar_set_text :: proc(pbar: ^ProgressBar, text: cstring) ---
		propagate_event :: proc(widget: ^Widget, event: ^GdkEvent) ---
		propagation_phase_get_type :: proc() -> gobj.Type ---
		radio_action_get_current_value :: proc(action: ^RadioAction) -> glib.int_ ---
		radio_action_get_group :: proc(action: ^RadioAction) -> ^glib.SList ---
		radio_action_get_type :: proc() -> gobj.Type ---
		radio_action_join_group :: proc(action: ^RadioAction, group_source: ^RadioAction) ---
		radio_action_new :: proc(name: cstring, label: cstring, tooltip: cstring, stock_id: cstring, value: glib.int_) -> ^RadioAction ---
		radio_action_set_current_value :: proc(action: ^RadioAction, current_value: glib.int_) ---
		radio_action_set_group :: proc(action: ^RadioAction, group: ^glib.SList) ---
		radio_button_get_group :: proc(radio_button: ^RadioButton) -> ^glib.SList ---
		radio_button_get_type :: proc() -> gobj.Type ---
		radio_button_join_group :: proc(radio_button: ^RadioButton, group_source: ^RadioButton) ---
		radio_button_new :: proc(group: ^glib.SList) -> ^Widget ---
		radio_button_new_from_widget :: proc(radio_group_member: ^RadioButton) -> ^Widget ---
		radio_button_new_with_label :: proc(group: ^glib.SList, label: cstring) -> ^Widget ---
		radio_button_new_with_label_from_widget :: proc(radio_group_member: ^RadioButton, label: cstring) -> ^Widget ---
		radio_button_new_with_mnemonic :: proc(group: ^glib.SList, label: cstring) -> ^Widget ---
		radio_button_new_with_mnemonic_from_widget :: proc(radio_group_member: ^RadioButton, label: cstring) -> ^Widget ---
		radio_button_set_group :: proc(radio_button: ^RadioButton, group: ^glib.SList) ---
		radio_menu_item_get_group :: proc(radio_menu_item: ^RadioMenuItem) -> ^glib.SList ---
		radio_menu_item_get_type :: proc() -> gobj.Type ---
		radio_menu_item_join_group :: proc(radio_menu_item: ^RadioMenuItem, group_source: ^RadioMenuItem) ---
		radio_menu_item_new :: proc(group: ^glib.SList) -> ^Widget ---
		radio_menu_item_new_from_widget :: proc(group: ^RadioMenuItem) -> ^Widget ---
		radio_menu_item_new_with_label :: proc(group: ^glib.SList, label: cstring) -> ^Widget ---
		radio_menu_item_new_with_label_from_widget :: proc(group: ^RadioMenuItem, label: cstring) -> ^Widget ---
		radio_menu_item_new_with_mnemonic :: proc(group: ^glib.SList, label: cstring) -> ^Widget ---
		radio_menu_item_new_with_mnemonic_from_widget :: proc(group: ^RadioMenuItem, label: cstring) -> ^Widget ---
		radio_menu_item_set_group :: proc(radio_menu_item: ^RadioMenuItem, group: ^glib.SList) ---
		radio_tool_button_get_group :: proc(button: ^RadioToolButton) -> ^glib.SList ---
		radio_tool_button_get_type :: proc() -> gobj.Type ---
		radio_tool_button_new :: proc(group: ^glib.SList) -> ^ToolItem ---
		radio_tool_button_new_from_stock :: proc(group: ^glib.SList, stock_id: cstring) -> ^ToolItem ---
		radio_tool_button_new_from_widget :: proc(group: ^RadioToolButton) -> ^ToolItem ---
		radio_tool_button_new_with_stock_from_widget :: proc(group: ^RadioToolButton, stock_id: cstring) -> ^ToolItem ---
		radio_tool_button_set_group :: proc(button: ^RadioToolButton, group: ^glib.SList) ---
		range_get_adjustment :: proc(range: ^Range) -> ^Adjustment ---
		range_get_fill_level :: proc(range: ^Range) -> glib.double ---
		range_get_flippable :: proc(range: ^Range) -> glib.boolean ---
		range_get_inverted :: proc(range: ^Range) -> glib.boolean ---
		range_get_lower_stepper_sensitivity :: proc(range: ^Range) -> SensitivityType ---
		range_get_min_slider_size :: proc(range: ^Range) -> glib.int_ ---
		range_get_range_rect :: proc(range: ^Range, range_rect: ^GdkRectangle) ---
		range_get_restrict_to_fill_level :: proc(range: ^Range) -> glib.boolean ---
		range_get_round_digits :: proc(range: ^Range) -> glib.int_ ---
		range_get_show_fill_level :: proc(range: ^Range) -> glib.boolean ---
		range_get_slider_range :: proc(range: ^Range, slider_start: ^glib.int_, slider_end: ^glib.int_) ---
		range_get_slider_size_fixed :: proc(range: ^Range) -> glib.boolean ---
		range_get_type :: proc() -> gobj.Type ---
		range_get_upper_stepper_sensitivity :: proc(range: ^Range) -> SensitivityType ---
		range_get_value :: proc(range: ^Range) -> glib.double ---
		range_set_adjustment :: proc(range: ^Range, adjustment: ^Adjustment) ---
		range_set_fill_level :: proc(range: ^Range, fill_level: glib.double) ---
		range_set_flippable :: proc(range: ^Range, flippable: glib.boolean) ---
		range_set_increments :: proc(range: ^Range, step: glib.double, page: glib.double) ---
		range_set_inverted :: proc(range: ^Range, setting: glib.boolean) ---
		range_set_lower_stepper_sensitivity :: proc(range: ^Range, sensitivity: SensitivityType) ---
		range_set_min_slider_size :: proc(range: ^Range, min_size: glib.int_) ---
		range_set_range :: proc(range: ^Range, min: glib.double, max: glib.double) ---
		range_set_restrict_to_fill_level :: proc(range: ^Range, restrict_to_fill_level: glib.boolean) ---
		range_set_round_digits :: proc(range: ^Range, round_digits: glib.int_) ---
		range_set_show_fill_level :: proc(range: ^Range, show_fill_level: glib.boolean) ---
		range_set_slider_size_fixed :: proc(range: ^Range, size_fixed: glib.boolean) ---
		range_set_upper_stepper_sensitivity :: proc(range: ^Range, sensitivity: SensitivityType) ---
		range_set_value :: proc(range: ^Range, value: glib.double) ---
		rc_add_default_file :: proc(filename: cstring) ---
		rc_find_module_in_path :: proc(module_file: cstring) -> cstring ---
		rc_find_pixmap_in_path :: proc(settings: ^Settings, scanner: ^glib.Scanner, pixmap_file: cstring) -> cstring ---
		rc_flags_get_type :: proc() -> gobj.Type ---
		rc_get_default_files :: proc() -> ^cstring ---
		rc_get_im_module_file :: proc() -> cstring ---
		rc_get_im_module_path :: proc() -> cstring ---
		rc_get_module_dir :: proc() -> cstring ---
		rc_get_style :: proc(widget: ^Widget) -> ^Style ---
		rc_get_style_by_paths :: proc(settings: ^Settings, widget_path: cstring, class_path: cstring, type: gobj.Type) -> ^Style ---
		rc_get_theme_dir :: proc() -> cstring ---
		rc_parse :: proc(filename: cstring) ---
		rc_parse_color :: proc(scanner: ^glib.Scanner, color: ^GdkColor) -> glib.uint_ ---
		rc_parse_color_full :: proc(scanner: ^glib.Scanner, style: ^RcStyle, color: ^GdkColor) -> glib.uint_ ---
		rc_parse_priority :: proc(scanner: ^glib.Scanner, priority: ^PathPriorityType) -> glib.uint_ ---
		rc_parse_state :: proc(scanner: ^glib.Scanner, state: ^StateType) -> glib.uint_ ---
		rc_parse_string :: proc(rc_string: cstring) ---
		rc_property_parse_border :: proc(pspec: ^gobj.ParamSpec, gstring: ^glib.String, property_value: ^gobj.Value) -> glib.boolean ---
		rc_property_parse_color :: proc(pspec: ^gobj.ParamSpec, gstring: ^glib.String, property_value: ^gobj.Value) -> glib.boolean ---
		rc_property_parse_enum :: proc(pspec: ^gobj.ParamSpec, gstring: ^glib.String, property_value: ^gobj.Value) -> glib.boolean ---
		rc_property_parse_flags :: proc(pspec: ^gobj.ParamSpec, gstring: ^glib.String, property_value: ^gobj.Value) -> glib.boolean ---
		rc_property_parse_requisition :: proc(pspec: ^gobj.ParamSpec, gstring: ^glib.String, property_value: ^gobj.Value) -> glib.boolean ---
		rc_reparse_all :: proc() -> glib.boolean ---
		rc_reparse_all_for_settings :: proc(settings: ^Settings, force_load: glib.boolean) -> glib.boolean ---
		rc_reset_styles :: proc(settings: ^Settings) ---
		rc_scanner_new :: proc() -> ^glib.Scanner ---
		rc_set_default_files :: proc(filenames: [^]cstring) ---
		rc_style_copy :: proc(orig: ^RcStyle) -> ^RcStyle ---
		rc_style_get_type :: proc() -> gobj.Type ---
		rc_style_new :: proc() -> ^RcStyle ---
		rc_token_type_get_type :: proc() -> gobj.Type ---
		recent_action_get_show_numbers :: proc(action: ^RecentAction) -> glib.boolean ---
		recent_action_get_type :: proc() -> gobj.Type ---
		recent_action_new :: proc(name: cstring, label: cstring, tooltip: cstring, stock_id: cstring) -> ^Action ---
		recent_action_new_for_manager :: proc(name: cstring, label: cstring, tooltip: cstring, stock_id: cstring, manager: ^RecentManager) -> ^Action ---
		recent_action_set_show_numbers :: proc(action: ^RecentAction, show_numbers: glib.boolean) ---
		recent_chooser_add_filter :: proc(chooser: ^RecentChooser, filter: ^RecentFilter) ---
		recent_chooser_dialog_get_type :: proc() -> gobj.Type ---
		recent_chooser_dialog_new :: proc(title: cstring, parent: ^Window, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		recent_chooser_dialog_new_for_manager :: proc(title: cstring, parent: ^Window, manager: ^RecentManager, first_button_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		recent_chooser_error_get_type :: proc() -> gobj.Type ---
		recent_chooser_error_quark :: proc() -> glib.Quark ---
		recent_chooser_get_current_item :: proc(chooser: ^RecentChooser) -> ^RecentInfo ---
		recent_chooser_get_current_uri :: proc(chooser: ^RecentChooser) -> cstring ---
		recent_chooser_get_filter :: proc(chooser: ^RecentChooser) -> ^RecentFilter ---
		recent_chooser_get_items :: proc(chooser: ^RecentChooser) -> ^glib.List ---
		recent_chooser_get_limit :: proc(chooser: ^RecentChooser) -> glib.int_ ---
		recent_chooser_get_local_only :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_select_multiple :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_show_icons :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_show_not_found :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_show_private :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_show_tips :: proc(chooser: ^RecentChooser) -> glib.boolean ---
		recent_chooser_get_sort_type :: proc(chooser: ^RecentChooser) -> RecentSortType ---
		recent_chooser_get_type :: proc() -> gobj.Type ---
		recent_chooser_get_uris :: proc(chooser: ^RecentChooser, length: ^glib.size) -> ^cstring ---
		recent_chooser_list_filters :: proc(chooser: ^RecentChooser) -> ^glib.SList ---
		recent_chooser_menu_get_show_numbers :: proc(menu: ^RecentChooserMenu) -> glib.boolean ---
		recent_chooser_menu_get_type :: proc() -> gobj.Type ---
		recent_chooser_menu_new :: proc() -> ^Widget ---
		recent_chooser_menu_new_for_manager :: proc(manager: ^RecentManager) -> ^Widget ---
		recent_chooser_menu_set_show_numbers :: proc(menu: ^RecentChooserMenu, show_numbers: glib.boolean) ---
		recent_chooser_remove_filter :: proc(chooser: ^RecentChooser, filter: ^RecentFilter) ---
		recent_chooser_select_all :: proc(chooser: ^RecentChooser) ---
		recent_chooser_select_uri :: proc(chooser: ^RecentChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		recent_chooser_set_current_uri :: proc(chooser: ^RecentChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		recent_chooser_set_filter :: proc(chooser: ^RecentChooser, filter: ^RecentFilter) ---
		recent_chooser_set_limit :: proc(chooser: ^RecentChooser, limit: glib.int_) ---
		recent_chooser_set_local_only :: proc(chooser: ^RecentChooser, local_only: glib.boolean) ---
		recent_chooser_set_select_multiple :: proc(chooser: ^RecentChooser, select_multiple: glib.boolean) ---
		recent_chooser_set_show_icons :: proc(chooser: ^RecentChooser, show_icons: glib.boolean) ---
		recent_chooser_set_show_not_found :: proc(chooser: ^RecentChooser, show_not_found: glib.boolean) ---
		recent_chooser_set_show_private :: proc(chooser: ^RecentChooser, show_private: glib.boolean) ---
		recent_chooser_set_show_tips :: proc(chooser: ^RecentChooser, show_tips: glib.boolean) ---
		recent_chooser_set_sort_func :: proc(chooser: ^RecentChooser, sort_func: RecentSortFunc, sort_data: glib.pointer, data_destroy: glib.DestroyNotify) ---
		recent_chooser_set_sort_type :: proc(chooser: ^RecentChooser, sort_type: RecentSortType) ---
		recent_chooser_unselect_all :: proc(chooser: ^RecentChooser) ---
		recent_chooser_unselect_uri :: proc(chooser: ^RecentChooser, uri: cstring) ---
		recent_chooser_widget_get_type :: proc() -> gobj.Type ---
		recent_chooser_widget_new :: proc() -> ^Widget ---
		recent_chooser_widget_new_for_manager :: proc(manager: ^RecentManager) -> ^Widget ---
		recent_filter_add_age :: proc(filter: ^RecentFilter, days: glib.int_) ---
		recent_filter_add_application :: proc(filter: ^RecentFilter, application: cstring) ---
		recent_filter_add_custom :: proc(filter: ^RecentFilter, needed: RecentFilterFlags, func: RecentFilterFunc, data: glib.pointer, data_destroy: glib.DestroyNotify) ---
		recent_filter_add_group :: proc(filter: ^RecentFilter, group: cstring) ---
		recent_filter_add_mime_type :: proc(filter: ^RecentFilter, mime_type: cstring) ---
		recent_filter_add_pattern :: proc(filter: ^RecentFilter, pattern: cstring) ---
		recent_filter_add_pixbuf_formats :: proc(filter: ^RecentFilter) ---
		recent_filter_filter :: proc(filter: ^RecentFilter, filter_info: ^RecentFilterInfo) -> glib.boolean ---
		recent_filter_flags_get_type :: proc() -> gobj.Type ---
		recent_filter_get_name :: proc(filter: ^RecentFilter) -> cstring ---
		recent_filter_get_needed :: proc(filter: ^RecentFilter) -> RecentFilterFlags ---
		recent_filter_get_type :: proc() -> gobj.Type ---
		recent_filter_new :: proc() -> ^RecentFilter ---
		recent_filter_set_name :: proc(filter: ^RecentFilter, name: cstring) ---
		recent_info_create_app_info :: proc(info: ^RecentInfo, app_name: cstring, error: ^^glib.Error) -> ^gio.AppInfo ---
		recent_info_exists :: proc(info: ^RecentInfo) -> glib.boolean ---
		recent_info_get_added :: proc(info: ^RecentInfo) -> time_t ---
		recent_info_get_age :: proc(info: ^RecentInfo) -> glib.int_ ---
		recent_info_get_application_info :: proc(info: ^RecentInfo, app_name: cstring, app_exec: ^cstring, count: ^glib.uint_, time_: ^time_t) -> glib.boolean ---
		recent_info_get_applications :: proc(info: ^RecentInfo, length: ^glib.size) -> ^cstring ---
		recent_info_get_description :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_display_name :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_gicon :: proc(info: ^RecentInfo) -> ^gio.Icon ---
		recent_info_get_groups :: proc(info: ^RecentInfo, length: ^glib.size) -> ^cstring ---
		recent_info_get_icon :: proc(info: ^RecentInfo, size_p: glib.int_) -> ^pixbuf.Pixbuf ---
		recent_info_get_mime_type :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_modified :: proc(info: ^RecentInfo) -> time_t ---
		recent_info_get_private_hint :: proc(info: ^RecentInfo) -> glib.boolean ---
		recent_info_get_short_name :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_type :: proc() -> gobj.Type ---
		recent_info_get_uri :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_uri_display :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_get_visited :: proc(info: ^RecentInfo) -> time_t ---
		recent_info_has_application :: proc(info: ^RecentInfo, app_name: cstring) -> glib.boolean ---
		recent_info_has_group :: proc(info: ^RecentInfo, group_name: cstring) -> glib.boolean ---
		recent_info_is_local :: proc(info: ^RecentInfo) -> glib.boolean ---
		recent_info_last_application :: proc(info: ^RecentInfo) -> cstring ---
		recent_info_match :: proc(info_a: ^RecentInfo, info_b: ^RecentInfo) -> glib.boolean ---
		recent_info_ref :: proc(info: ^RecentInfo) -> ^RecentInfo ---
		recent_info_unref :: proc(info: ^RecentInfo) ---
		recent_manager_add_full :: proc(manager: ^RecentManager, uri: cstring, recent_data: ^RecentData) -> glib.boolean ---
		recent_manager_add_item :: proc(manager: ^RecentManager, uri: cstring) -> glib.boolean ---
		recent_manager_error_get_type :: proc() -> gobj.Type ---
		recent_manager_error_quark :: proc() -> glib.Quark ---
		recent_manager_get_default :: proc() -> ^RecentManager ---
		recent_manager_get_items :: proc(manager: ^RecentManager) -> ^glib.List ---
		recent_manager_get_type :: proc() -> gobj.Type ---
		recent_manager_has_item :: proc(manager: ^RecentManager, uri: cstring) -> glib.boolean ---
		recent_manager_lookup_item :: proc(manager: ^RecentManager, uri: cstring, error: ^^glib.Error) -> ^RecentInfo ---
		recent_manager_move_item :: proc(manager: ^RecentManager, uri: cstring, new_uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		recent_manager_new :: proc() -> ^RecentManager ---
		recent_manager_purge_items :: proc(manager: ^RecentManager, error: ^^glib.Error) -> glib.int_ ---
		recent_manager_remove_item :: proc(manager: ^RecentManager, uri: cstring, error: ^^glib.Error) -> glib.boolean ---
		recent_sort_type_get_type :: proc() -> gobj.Type ---
		region_flags_get_type :: proc() -> gobj.Type ---
		relief_style_get_type :: proc() -> gobj.Type ---
		render_activity :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_arrow :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, angle: glib.double, x: glib.double, y: glib.double, size_p: glib.double) ---
		render_background :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_background_get_clip :: proc(context_p: ^StyleContext, x: glib.double, y: glib.double, width: glib.double, height: glib.double, out_clip: ^GdkRectangle) ---
		render_check :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_expander :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_extension :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, gap_side: PositionType) ---
		render_focus :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_frame :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_frame_gap :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, gap_side: PositionType, xy0_gap: glib.double, xy1_gap: glib.double) ---
		render_handle :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_icon :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, pixbuf: ^pixbuf.Pixbuf, x: glib.double, y: glib.double) ---
		render_icon_pixbuf :: proc(context_p: ^StyleContext, source: ^IconSource, size_p: IconSize) -> ^pixbuf.Pixbuf ---
		render_icon_surface :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, surface: ^cairo.surface_t, x: glib.double, y: glib.double) ---
		render_insertion_cursor :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, layout: ^pango.Layout, index: i32, direction: pango.Direction) ---
		render_layout :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, layout: ^pango.Layout) ---
		render_line :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x0: glib.double, y0: glib.double, x1: glib.double, y1: glib.double) ---
		render_option :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double) ---
		render_slider :: proc(context_p: ^StyleContext, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, orientation: Orientation) ---
		requisition_copy :: proc(requisition: ^Requisition) -> ^Requisition ---
		requisition_free :: proc(requisition: ^Requisition) ---
		requisition_get_type :: proc() -> gobj.Type ---
		requisition_new :: proc() -> ^Requisition ---
		resize_mode_get_type :: proc() -> gobj.Type ---
		response_type_get_type :: proc() -> gobj.Type ---
		revealer_get_child_revealed :: proc(revealer: ^Revealer) -> glib.boolean ---
		revealer_get_reveal_child :: proc(revealer: ^Revealer) -> glib.boolean ---
		revealer_get_transition_duration :: proc(revealer: ^Revealer) -> glib.uint_ ---
		revealer_get_transition_type :: proc(revealer: ^Revealer) -> RevealerTransitionType ---
		revealer_get_type :: proc() -> gobj.Type ---
		revealer_new :: proc() -> ^Widget ---
		revealer_set_reveal_child :: proc(revealer: ^Revealer, reveal_child: glib.boolean) ---
		revealer_set_transition_duration :: proc(revealer: ^Revealer, duration: glib.uint_) ---
		revealer_set_transition_type :: proc(revealer: ^Revealer, transition: RevealerTransitionType) ---
		revealer_transition_type_get_type :: proc() -> gobj.Type ---
		rgb_to_hsv :: proc(r: glib.double, g: glib.double, b: glib.double, h: ^glib.double, s: ^glib.double, v: ^glib.double) ---
		scale_add_mark :: proc(scale: ^Scale, value: glib.double, position: PositionType, markup: cstring) ---
		scale_button_get_adjustment :: proc(button: ^ScaleButton) -> ^Adjustment ---
		scale_button_get_minus_button :: proc(button: ^ScaleButton) -> ^Widget ---
		scale_button_get_plus_button :: proc(button: ^ScaleButton) -> ^Widget ---
		scale_button_get_popup :: proc(button: ^ScaleButton) -> ^Widget ---
		scale_button_get_type :: proc() -> gobj.Type ---
		scale_button_get_value :: proc(button: ^ScaleButton) -> glib.double ---
		scale_button_new :: proc(size_p: IconSize, min: glib.double, max: glib.double, step: glib.double, icons: [^]cstring) -> ^Widget ---
		scale_button_set_adjustment :: proc(button: ^ScaleButton, adjustment: ^Adjustment) ---
		scale_button_set_icons :: proc(button: ^ScaleButton, icons: [^]cstring) ---
		scale_button_set_value :: proc(button: ^ScaleButton, value: glib.double) ---
		scale_clear_marks :: proc(scale: ^Scale) ---
		scale_get_digits :: proc(scale: ^Scale) -> glib.int_ ---
		scale_get_draw_value :: proc(scale: ^Scale) -> glib.boolean ---
		scale_get_has_origin :: proc(scale: ^Scale) -> glib.boolean ---
		scale_get_layout :: proc(scale: ^Scale) -> ^pango.Layout ---
		scale_get_layout_offsets :: proc(scale: ^Scale, x: ^glib.int_, y: ^glib.int_) ---
		scale_get_type :: proc() -> gobj.Type ---
		scale_get_value_pos :: proc(scale: ^Scale) -> PositionType ---
		scale_new :: proc(orientation: Orientation, adjustment: ^Adjustment) -> ^Widget ---
		scale_new_with_range :: proc(orientation: Orientation, min: glib.double, max: glib.double, step: glib.double) -> ^Widget ---
		scale_set_digits :: proc(scale: ^Scale, digits: glib.int_) ---
		scale_set_draw_value :: proc(scale: ^Scale, draw_value: glib.boolean) ---
		scale_set_has_origin :: proc(scale: ^Scale, has_origin: glib.boolean) ---
		scale_set_value_pos :: proc(scale: ^Scale, pos: PositionType) ---
		scroll_step_get_type :: proc() -> gobj.Type ---
		scroll_type_get_type :: proc() -> gobj.Type ---
		scrollable_get_border :: proc(scrollable: ^Scrollable, border: ^Border) -> glib.boolean ---
		scrollable_get_hadjustment :: proc(scrollable: ^Scrollable) -> ^Adjustment ---
		scrollable_get_hscroll_policy :: proc(scrollable: ^Scrollable) -> ScrollablePolicy ---
		scrollable_get_type :: proc() -> gobj.Type ---
		scrollable_get_vadjustment :: proc(scrollable: ^Scrollable) -> ^Adjustment ---
		scrollable_get_vscroll_policy :: proc(scrollable: ^Scrollable) -> ScrollablePolicy ---
		scrollable_policy_get_type :: proc() -> gobj.Type ---
		scrollable_set_hadjustment :: proc(scrollable: ^Scrollable, hadjustment: ^Adjustment) ---
		scrollable_set_hscroll_policy :: proc(scrollable: ^Scrollable, policy: ScrollablePolicy) ---
		scrollable_set_vadjustment :: proc(scrollable: ^Scrollable, vadjustment: ^Adjustment) ---
		scrollable_set_vscroll_policy :: proc(scrollable: ^Scrollable, policy: ScrollablePolicy) ---
		scrollbar_get_type :: proc() -> gobj.Type ---
		scrollbar_new :: proc(orientation: Orientation, adjustment: ^Adjustment) -> ^Widget ---
		scrolled_window_add_with_viewport :: proc(scrolled_window: ^ScrolledWindow, child: ^Widget) ---
		scrolled_window_get_capture_button_press :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---
		scrolled_window_get_hadjustment :: proc(scrolled_window: ^ScrolledWindow) -> ^Adjustment ---
		scrolled_window_get_hscrollbar :: proc(scrolled_window: ^ScrolledWindow) -> ^Widget ---
		scrolled_window_get_kinetic_scrolling :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---
		scrolled_window_get_max_content_height :: proc(scrolled_window: ^ScrolledWindow) -> glib.int_ ---
		scrolled_window_get_max_content_width :: proc(scrolled_window: ^ScrolledWindow) -> glib.int_ ---
		scrolled_window_get_min_content_height :: proc(scrolled_window: ^ScrolledWindow) -> glib.int_ ---
		scrolled_window_get_min_content_width :: proc(scrolled_window: ^ScrolledWindow) -> glib.int_ ---
		scrolled_window_get_overlay_scrolling :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---
		scrolled_window_get_placement :: proc(scrolled_window: ^ScrolledWindow) -> CornerType ---
		scrolled_window_get_policy :: proc(scrolled_window: ^ScrolledWindow, hscrollbar_policy: ^PolicyType, vscrollbar_policy: ^PolicyType) ---
		scrolled_window_get_propagate_natural_height :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---
		scrolled_window_get_propagate_natural_width :: proc(scrolled_window: ^ScrolledWindow) -> glib.boolean ---
		scrolled_window_get_shadow_type :: proc(scrolled_window: ^ScrolledWindow) -> ShadowType ---
		scrolled_window_get_type :: proc() -> gobj.Type ---
		scrolled_window_get_vadjustment :: proc(scrolled_window: ^ScrolledWindow) -> ^Adjustment ---
		scrolled_window_get_vscrollbar :: proc(scrolled_window: ^ScrolledWindow) -> ^Widget ---
		scrolled_window_new :: proc(hadjustment: ^Adjustment, vadjustment: ^Adjustment) -> ^Widget ---
		scrolled_window_set_capture_button_press :: proc(scrolled_window: ^ScrolledWindow, capture_button_press: glib.boolean) ---
		scrolled_window_set_hadjustment :: proc(scrolled_window: ^ScrolledWindow, hadjustment: ^Adjustment) ---
		scrolled_window_set_kinetic_scrolling :: proc(scrolled_window: ^ScrolledWindow, kinetic_scrolling: glib.boolean) ---
		scrolled_window_set_max_content_height :: proc(scrolled_window: ^ScrolledWindow, height: glib.int_) ---
		scrolled_window_set_max_content_width :: proc(scrolled_window: ^ScrolledWindow, width: glib.int_) ---
		scrolled_window_set_min_content_height :: proc(scrolled_window: ^ScrolledWindow, height: glib.int_) ---
		scrolled_window_set_min_content_width :: proc(scrolled_window: ^ScrolledWindow, width: glib.int_) ---
		scrolled_window_set_overlay_scrolling :: proc(scrolled_window: ^ScrolledWindow, overlay_scrolling: glib.boolean) ---
		scrolled_window_set_placement :: proc(scrolled_window: ^ScrolledWindow, window_placement: CornerType) ---
		scrolled_window_set_policy :: proc(scrolled_window: ^ScrolledWindow, hscrollbar_policy: PolicyType, vscrollbar_policy: PolicyType) ---
		scrolled_window_set_propagate_natural_height :: proc(scrolled_window: ^ScrolledWindow, propagate: glib.boolean) ---
		scrolled_window_set_propagate_natural_width :: proc(scrolled_window: ^ScrolledWindow, propagate: glib.boolean) ---
		scrolled_window_set_shadow_type :: proc(scrolled_window: ^ScrolledWindow, type: ShadowType) ---
		scrolled_window_set_vadjustment :: proc(scrolled_window: ^ScrolledWindow, vadjustment: ^Adjustment) ---
		scrolled_window_unset_placement :: proc(scrolled_window: ^ScrolledWindow) ---
		search_bar_connect_entry :: proc(bar: ^SearchBar, entry: ^Entry) ---
		search_bar_get_search_mode :: proc(bar: ^SearchBar) -> glib.boolean ---
		search_bar_get_show_close_button :: proc(bar: ^SearchBar) -> glib.boolean ---
		search_bar_get_type :: proc() -> gobj.Type ---
		search_bar_handle_event :: proc(bar: ^SearchBar, event: ^GdkEvent) -> glib.boolean ---
		search_bar_new :: proc() -> ^Widget ---
		search_bar_set_search_mode :: proc(bar: ^SearchBar, search_mode: glib.boolean) ---
		search_bar_set_show_close_button :: proc(bar: ^SearchBar, visible: glib.boolean) ---
		search_entry_get_type :: proc() -> gobj.Type ---
		search_entry_handle_event :: proc(entry: ^SearchEntry, event: ^GdkEvent) -> glib.boolean ---
		search_entry_new :: proc() -> ^Widget ---
		selection_add_target :: proc(widget: ^Widget, selection: GdkAtom, target: GdkAtom, info: glib.uint_) ---
		selection_add_targets :: proc(widget: ^Widget, selection: GdkAtom, targets: [^]TargetEntry, ntargets: glib.uint_) ---
		selection_clear_targets :: proc(widget: ^Widget, selection: GdkAtom) ---
		selection_convert :: proc(widget: ^Widget, selection: GdkAtom, target: GdkAtom, time_: glib.uint32) -> glib.boolean ---
		selection_data_copy :: proc(data: ^SelectionData) -> ^SelectionData ---
		selection_data_free :: proc(data: ^SelectionData) ---
		selection_data_get_data :: proc(selection_data: ^SelectionData) -> ^glib.uchar ---
		selection_data_get_data_type :: proc(selection_data: ^SelectionData) -> GdkAtom ---
		selection_data_get_data_with_length :: proc(selection_data: ^SelectionData, length: ^glib.int_) -> ^glib.uchar ---
		selection_data_get_display :: proc(selection_data: ^SelectionData) -> ^GdkDisplay ---
		selection_data_get_format :: proc(selection_data: ^SelectionData) -> glib.int_ ---
		selection_data_get_length :: proc(selection_data: ^SelectionData) -> glib.int_ ---
		selection_data_get_pixbuf :: proc(selection_data: ^SelectionData) -> ^pixbuf.Pixbuf ---
		selection_data_get_selection :: proc(selection_data: ^SelectionData) -> GdkAtom ---
		selection_data_get_target :: proc(selection_data: ^SelectionData) -> GdkAtom ---
		selection_data_get_targets :: proc(selection_data: ^SelectionData, targets: [^]^GdkAtom, n_atoms: ^glib.int_) -> glib.boolean ---
		selection_data_get_text :: proc(selection_data: ^SelectionData) -> ^glib.uchar ---
		selection_data_get_type :: proc() -> gobj.Type ---
		selection_data_get_uris :: proc(selection_data: ^SelectionData) -> ^cstring ---
		selection_data_set :: proc(selection_data: ^SelectionData, type: GdkAtom, format: glib.int_, data: ^glib.uchar, length: glib.int_) ---
		selection_data_set_pixbuf :: proc(selection_data: ^SelectionData, pixbuf: ^pixbuf.Pixbuf) -> glib.boolean ---
		selection_data_set_text :: proc(selection_data: ^SelectionData, str: cstring, len: glib.int_) -> glib.boolean ---
		selection_data_set_uris :: proc(selection_data: ^SelectionData, uris: [^]cstring) -> glib.boolean ---
		selection_data_targets_include_image :: proc(selection_data: ^SelectionData, writable: glib.boolean) -> glib.boolean ---
		selection_data_targets_include_rich_text :: proc(selection_data: ^SelectionData, buffer: ^TextBuffer) -> glib.boolean ---
		selection_data_targets_include_text :: proc(selection_data: ^SelectionData) -> glib.boolean ---
		selection_data_targets_include_uri :: proc(selection_data: ^SelectionData) -> glib.boolean ---
		selection_mode_get_type :: proc() -> gobj.Type ---
		selection_owner_set :: proc(widget: ^Widget, selection: GdkAtom, time_: glib.uint32) -> glib.boolean ---
		selection_owner_set_for_display :: proc(display: ^GdkDisplay, widget: ^Widget, selection: GdkAtom, time_: glib.uint32) -> glib.boolean ---
		selection_remove_all :: proc(widget: ^Widget) ---
		sensitivity_type_get_type :: proc() -> gobj.Type ---
		separator_get_type :: proc() -> gobj.Type ---
		separator_menu_item_get_type :: proc() -> gobj.Type ---
		separator_menu_item_new :: proc() -> ^Widget ---
		separator_new :: proc(orientation: Orientation) -> ^Widget ---
		separator_tool_item_get_draw :: proc(item: ^SeparatorToolItem) -> glib.boolean ---
		separator_tool_item_get_type :: proc() -> gobj.Type ---
		separator_tool_item_new :: proc() -> ^ToolItem ---
		separator_tool_item_set_draw :: proc(item: ^SeparatorToolItem, draw: glib.boolean) ---
		set_debug_flags :: proc(flags: glib.uint_) ---
		settings_get_default :: proc() -> ^Settings ---
		settings_get_for_screen :: proc(screen: ^GdkScreen) -> ^Settings ---
		settings_get_type :: proc() -> gobj.Type ---
		settings_install_property :: proc(pspec: ^gobj.ParamSpec) ---
		settings_install_property_parser :: proc(pspec: ^gobj.ParamSpec, parser: RcPropertyParser) ---
		settings_reset_property :: proc(settings: ^Settings, name: cstring) ---
		settings_set_double_property :: proc(settings: ^Settings, name: cstring, v_double: glib.double, origin: cstring) ---
		settings_set_long_property :: proc(settings: ^Settings, name: cstring, v_long: glib.long, origin: cstring) ---
		settings_set_property_value :: proc(settings: ^Settings, name: cstring, svalue: ^SettingsValue) ---
		settings_set_string_property :: proc(settings: ^Settings, name: cstring, v_string: cstring, origin: cstring) ---
		shadow_type_get_type :: proc() -> gobj.Type ---
		shortcut_label_get_accelerator :: proc(self: ^ShortcutLabel) -> cstring ---
		shortcut_label_get_disabled_text :: proc(self: ^ShortcutLabel) -> cstring ---
		shortcut_label_get_type :: proc() -> gobj.Type ---
		shortcut_label_new :: proc(accelerator: cstring) -> ^Widget ---
		shortcut_label_set_accelerator :: proc(self: ^ShortcutLabel, accelerator: cstring) ---
		shortcut_label_set_disabled_text :: proc(self: ^ShortcutLabel, disabled_text: cstring) ---
		shortcut_type_get_type :: proc() -> gobj.Type ---
		shortcuts_group_get_type :: proc() -> gobj.Type ---
		shortcuts_section_get_type :: proc() -> gobj.Type ---
		shortcuts_shortcut_get_type :: proc() -> gobj.Type ---
		shortcuts_window_get_type :: proc() -> gobj.Type ---
		show_about_dialog :: proc(parent: ^Window, first_property_name: cstring, #c_vararg var_args: ..any) ---
		show_uri :: proc(screen: ^GdkScreen, uri: cstring, timestamp: glib.uint32, error: ^^glib.Error) -> glib.boolean ---
		show_uri_on_window :: proc(parent: ^Window, uri: cstring, timestamp: glib.uint32, error: ^^glib.Error) -> glib.boolean ---
		size_group_add_widget :: proc(size_group: ^SizeGroup, widget: ^Widget) ---
		size_group_get_ignore_hidden :: proc(size_group: ^SizeGroup) -> glib.boolean ---
		size_group_get_mode :: proc(size_group: ^SizeGroup) -> SizeGroupMode ---
		size_group_get_type :: proc() -> gobj.Type ---
		size_group_get_widgets :: proc(size_group: ^SizeGroup) -> ^glib.SList ---
		size_group_mode_get_type :: proc() -> gobj.Type ---
		size_group_new :: proc(mode: SizeGroupMode) -> ^SizeGroup ---
		size_group_remove_widget :: proc(size_group: ^SizeGroup, widget: ^Widget) ---
		size_group_set_ignore_hidden :: proc(size_group: ^SizeGroup, ignore_hidden: glib.boolean) ---
		size_group_set_mode :: proc(size_group: ^SizeGroup, mode: SizeGroupMode) ---
		size_request_mode_get_type :: proc() -> gobj.Type ---
		sort_type_get_type :: proc() -> gobj.Type ---
		spin_button_configure :: proc(spin_button: ^SpinButton, adjustment: ^Adjustment, climb_rate: glib.double, digits: glib.uint_) ---
		spin_button_get_adjustment :: proc(spin_button: ^SpinButton) -> ^Adjustment ---
		spin_button_get_digits :: proc(spin_button: ^SpinButton) -> glib.uint_ ---
		spin_button_get_increments :: proc(spin_button: ^SpinButton, step: ^glib.double, page: ^glib.double) ---
		spin_button_get_numeric :: proc(spin_button: ^SpinButton) -> glib.boolean ---
		spin_button_get_range :: proc(spin_button: ^SpinButton, min: ^glib.double, max: ^glib.double) ---
		spin_button_get_snap_to_ticks :: proc(spin_button: ^SpinButton) -> glib.boolean ---
		spin_button_get_type :: proc() -> gobj.Type ---
		spin_button_get_update_policy :: proc(spin_button: ^SpinButton) -> SpinButtonUpdatePolicy ---
		spin_button_get_value :: proc(spin_button: ^SpinButton) -> glib.double ---
		spin_button_get_value_as_int :: proc(spin_button: ^SpinButton) -> glib.int_ ---
		spin_button_get_wrap :: proc(spin_button: ^SpinButton) -> glib.boolean ---
		spin_button_new :: proc(adjustment: ^Adjustment, climb_rate: glib.double, digits: glib.uint_) -> ^Widget ---
		spin_button_new_with_range :: proc(min: glib.double, max: glib.double, step: glib.double) -> ^Widget ---
		spin_button_set_adjustment :: proc(spin_button: ^SpinButton, adjustment: ^Adjustment) ---
		spin_button_set_digits :: proc(spin_button: ^SpinButton, digits: glib.uint_) ---
		spin_button_set_increments :: proc(spin_button: ^SpinButton, step: glib.double, page: glib.double) ---
		spin_button_set_numeric :: proc(spin_button: ^SpinButton, numeric: glib.boolean) ---
		spin_button_set_range :: proc(spin_button: ^SpinButton, min: glib.double, max: glib.double) ---
		spin_button_set_snap_to_ticks :: proc(spin_button: ^SpinButton, snap_to_ticks: glib.boolean) ---
		spin_button_set_update_policy :: proc(spin_button: ^SpinButton, policy: SpinButtonUpdatePolicy) ---
		spin_button_set_value :: proc(spin_button: ^SpinButton, value: glib.double) ---
		spin_button_set_wrap :: proc(spin_button: ^SpinButton, wrap: glib.boolean) ---
		spin_button_spin :: proc(spin_button: ^SpinButton, direction: SpinType, increment: glib.double) ---
		spin_button_update :: proc(spin_button: ^SpinButton) ---
		spin_button_update_policy_get_type :: proc() -> gobj.Type ---
		spin_type_get_type :: proc() -> gobj.Type ---
		spinner_get_type :: proc() -> gobj.Type ---
		spinner_new :: proc() -> ^Widget ---
		spinner_start :: proc(spinner: ^Spinner) ---
		spinner_stop :: proc(spinner: ^Spinner) ---
		stack_add_named :: proc(stack: ^Stack, child: ^Widget, name: cstring) ---
		stack_add_titled :: proc(stack: ^Stack, child: ^Widget, name: cstring, title: cstring) ---
		stack_get_child_by_name :: proc(stack: ^Stack, name: cstring) -> ^Widget ---
		stack_get_hhomogeneous :: proc(stack: ^Stack) -> glib.boolean ---
		stack_get_homogeneous :: proc(stack: ^Stack) -> glib.boolean ---
		stack_get_interpolate_size :: proc(stack: ^Stack) -> glib.boolean ---
		stack_get_transition_duration :: proc(stack: ^Stack) -> glib.uint_ ---
		stack_get_transition_running :: proc(stack: ^Stack) -> glib.boolean ---
		stack_get_transition_type :: proc(stack: ^Stack) -> StackTransitionType ---
		stack_get_type :: proc() -> gobj.Type ---
		stack_get_vhomogeneous :: proc(stack: ^Stack) -> glib.boolean ---
		stack_get_visible_child :: proc(stack: ^Stack) -> ^Widget ---
		stack_get_visible_child_name :: proc(stack: ^Stack) -> cstring ---
		stack_new :: proc() -> ^Widget ---
		stack_set_hhomogeneous :: proc(stack: ^Stack, hhomogeneous: glib.boolean) ---
		stack_set_homogeneous :: proc(stack: ^Stack, homogeneous: glib.boolean) ---
		stack_set_interpolate_size :: proc(stack: ^Stack, interpolate_size: glib.boolean) ---
		stack_set_transition_duration :: proc(stack: ^Stack, duration: glib.uint_) ---
		stack_set_transition_type :: proc(stack: ^Stack, transition: StackTransitionType) ---
		stack_set_vhomogeneous :: proc(stack: ^Stack, vhomogeneous: glib.boolean) ---
		stack_set_visible_child :: proc(stack: ^Stack, child: ^Widget) ---
		stack_set_visible_child_full :: proc(stack: ^Stack, name: cstring, transition: StackTransitionType) ---
		stack_set_visible_child_name :: proc(stack: ^Stack, name: cstring) ---
		stack_sidebar_get_stack :: proc(sidebar: ^StackSidebar) -> ^Stack ---
		stack_sidebar_get_type :: proc() -> gobj.Type ---
		stack_sidebar_new :: proc() -> ^Widget ---
		stack_sidebar_set_stack :: proc(sidebar: ^StackSidebar, stack: ^Stack) ---
		stack_switcher_get_stack :: proc(switcher: ^StackSwitcher) -> ^Stack ---
		stack_switcher_get_type :: proc() -> gobj.Type ---
		stack_switcher_new :: proc() -> ^Widget ---
		stack_switcher_set_stack :: proc(switcher: ^StackSwitcher, stack: ^Stack) ---
		stack_transition_type_get_type :: proc() -> gobj.Type ---
		state_flags_get_type :: proc() -> gobj.Type ---
		state_type_get_type :: proc() -> gobj.Type ---
		status_icon_get_geometry :: proc(status_icon: ^StatusIcon, screen: ^^GdkScreen, area: ^GdkRectangle, orientation: ^Orientation) -> glib.boolean ---
		status_icon_get_gicon :: proc(status_icon: ^StatusIcon) -> ^gio.Icon ---
		status_icon_get_has_tooltip :: proc(status_icon: ^StatusIcon) -> glib.boolean ---
		status_icon_get_icon_name :: proc(status_icon: ^StatusIcon) -> cstring ---
		status_icon_get_pixbuf :: proc(status_icon: ^StatusIcon) -> ^pixbuf.Pixbuf ---
		status_icon_get_screen :: proc(status_icon: ^StatusIcon) -> ^GdkScreen ---
		status_icon_get_size :: proc(status_icon: ^StatusIcon) -> glib.int_ ---
		status_icon_get_stock :: proc(status_icon: ^StatusIcon) -> cstring ---
		status_icon_get_storage_type :: proc(status_icon: ^StatusIcon) -> ImageType ---
		status_icon_get_title :: proc(status_icon: ^StatusIcon) -> cstring ---
		status_icon_get_tooltip_markup :: proc(status_icon: ^StatusIcon) -> cstring ---
		status_icon_get_tooltip_text :: proc(status_icon: ^StatusIcon) -> cstring ---
		status_icon_get_type :: proc() -> gobj.Type ---
		status_icon_get_visible :: proc(status_icon: ^StatusIcon) -> glib.boolean ---
		status_icon_get_x11_window_id :: proc(status_icon: ^StatusIcon) -> glib.uint32 ---
		status_icon_is_embedded :: proc(status_icon: ^StatusIcon) -> glib.boolean ---
		status_icon_new :: proc() -> ^StatusIcon ---
		status_icon_new_from_file :: proc(filename: cstring) -> ^StatusIcon ---
		status_icon_new_from_gicon :: proc(icon: ^gio.Icon) -> ^StatusIcon ---
		status_icon_new_from_icon_name :: proc(icon_name: cstring) -> ^StatusIcon ---
		status_icon_new_from_pixbuf :: proc(pixbuf: ^pixbuf.Pixbuf) -> ^StatusIcon ---
		status_icon_new_from_stock :: proc(stock_id: cstring) -> ^StatusIcon ---
		status_icon_position_menu :: proc(menu: ^Menu, x: ^glib.int_, y: ^glib.int_, push_in: ^glib.boolean, user_data: glib.pointer) ---
		status_icon_set_from_file :: proc(status_icon: ^StatusIcon, filename: cstring) ---
		status_icon_set_from_gicon :: proc(status_icon: ^StatusIcon, icon: ^gio.Icon) ---
		status_icon_set_from_icon_name :: proc(status_icon: ^StatusIcon, icon_name: cstring) ---
		status_icon_set_from_pixbuf :: proc(status_icon: ^StatusIcon, pixbuf: ^pixbuf.Pixbuf) ---
		status_icon_set_from_stock :: proc(status_icon: ^StatusIcon, stock_id: cstring) ---
		status_icon_set_has_tooltip :: proc(status_icon: ^StatusIcon, has_tooltip: glib.boolean) ---
		status_icon_set_name :: proc(status_icon: ^StatusIcon, name: cstring) ---
		status_icon_set_screen :: proc(status_icon: ^StatusIcon, screen: ^GdkScreen) ---
		status_icon_set_title :: proc(status_icon: ^StatusIcon, title: cstring) ---
		status_icon_set_tooltip_markup :: proc(status_icon: ^StatusIcon, markup: cstring) ---
		status_icon_set_tooltip_text :: proc(status_icon: ^StatusIcon, text: cstring) ---
		status_icon_set_visible :: proc(status_icon: ^StatusIcon, visible: glib.boolean) ---
		statusbar_get_context_id :: proc(statusbar: ^Statusbar, context_description: cstring) -> glib.uint_ ---
		statusbar_get_message_area :: proc(statusbar: ^Statusbar) -> ^Widget ---
		statusbar_get_type :: proc() -> gobj.Type ---
		statusbar_new :: proc() -> ^Widget ---
		statusbar_pop :: proc(statusbar: ^Statusbar, context_id: glib.uint_) ---
		statusbar_push :: proc(statusbar: ^Statusbar, context_id: glib.uint_, text: cstring) -> glib.uint_ ---
		statusbar_remove :: proc(statusbar: ^Statusbar, context_id: glib.uint_, message_id: glib.uint_) ---
		statusbar_remove_all :: proc(statusbar: ^Statusbar, context_id: glib.uint_) ---
		stock_add :: proc(items: [^]StockItem, n_items: glib.uint_) ---
		stock_add_static :: proc(items: [^]StockItem, n_items: glib.uint_) ---
		stock_item_copy :: proc(item: ^StockItem) -> ^StockItem ---
		stock_item_free :: proc(item: ^StockItem) ---
		stock_list_ids :: proc() -> ^glib.SList ---
		stock_lookup :: proc(stock_id: cstring, item: ^StockItem) -> glib.boolean ---
		stock_set_translate_func :: proc(domain: cstring, func: TranslateFunc, data: glib.pointer, notify: glib.DestroyNotify) ---
		style_apply_default_background :: proc(style: ^Style, cr: ^cairo.context_t, window: ^GdkWindow, state_type: StateType, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		style_attach :: proc(style: ^Style, window: ^GdkWindow) -> ^Style ---
		style_context_add_class :: proc(context_p: ^StyleContext, class_name: cstring) ---
		style_context_add_provider :: proc(context_p: ^StyleContext, provider: ^StyleProvider, priority: glib.uint_) ---
		style_context_add_provider_for_screen :: proc(screen: ^GdkScreen, provider: ^StyleProvider, priority: glib.uint_) ---
		style_context_add_region :: proc(context_p: ^StyleContext, region_name: cstring, flags: RegionFlags) ---
		style_context_cancel_animations :: proc(context_p: ^StyleContext, region_id: glib.pointer) ---
		style_context_get :: proc(context_p: ^StyleContext, state: StateFlags, #c_vararg var_args: ..any) ---
		style_context_get_background_color :: proc(context_p: ^StyleContext, state: StateFlags, color: ^GdkRGBA) ---
		style_context_get_border :: proc(context_p: ^StyleContext, state: StateFlags, border: ^Border) ---
		style_context_get_border_color :: proc(context_p: ^StyleContext, state: StateFlags, color: ^GdkRGBA) ---
		style_context_get_color :: proc(context_p: ^StyleContext, state: StateFlags, color: ^GdkRGBA) ---
		style_context_get_direction :: proc(context_p: ^StyleContext) -> TextDirection ---
		style_context_get_font :: proc(context_p: ^StyleContext, state: StateFlags) -> ^pango.FontDescription ---
		style_context_get_frame_clock :: proc(context_p: ^StyleContext) -> ^GdkFrameClock ---
		style_context_get_junction_sides :: proc(context_p: ^StyleContext) -> JunctionSides ---
		style_context_get_margin :: proc(context_p: ^StyleContext, state: StateFlags, margin: ^Border) ---
		style_context_get_padding :: proc(context_p: ^StyleContext, state: StateFlags, padding: ^Border) ---
		style_context_get_parent :: proc(context_p: ^StyleContext) -> ^StyleContext ---
		style_context_get_path :: proc(context_p: ^StyleContext) -> ^WidgetPath ---
		style_context_get_property :: proc(context_p: ^StyleContext, property: cstring, state: StateFlags, value: ^gobj.Value) ---
		style_context_get_scale :: proc(context_p: ^StyleContext) -> glib.int_ ---
		style_context_get_screen :: proc(context_p: ^StyleContext) -> ^GdkScreen ---
		style_context_get_section :: proc(context_p: ^StyleContext, property: cstring) -> ^CssSection ---
		style_context_get_state :: proc(context_p: ^StyleContext) -> StateFlags ---
		style_context_get_style :: proc(context_p: ^StyleContext, #c_vararg var_args: ..any) ---
		style_context_get_style_property :: proc(context_p: ^StyleContext, property_name: cstring, value: ^gobj.Value) ---
		style_context_get_type :: proc() -> gobj.Type ---
		style_context_has_class :: proc(context_p: ^StyleContext, class_name: cstring) -> glib.boolean ---
		style_context_has_region :: proc(context_p: ^StyleContext, region_name: cstring, flags_return: ^RegionFlags) -> glib.boolean ---
		style_context_invalidate :: proc(context_p: ^StyleContext) ---
		style_context_list_classes :: proc(context_p: ^StyleContext) -> ^glib.List ---
		style_context_list_regions :: proc(context_p: ^StyleContext) -> ^glib.List ---
		style_context_lookup_color :: proc(context_p: ^StyleContext, color_name: cstring, color: ^GdkRGBA) -> glib.boolean ---
		style_context_lookup_icon_set :: proc(context_p: ^StyleContext, stock_id: cstring) -> ^IconSet ---
		style_context_new :: proc() -> ^StyleContext ---
		style_context_notify_state_change :: proc(context_p: ^StyleContext, window: ^GdkWindow, region_id: glib.pointer, state: StateType, state_value: glib.boolean) ---
		style_context_pop_animatable_region :: proc(context_p: ^StyleContext) ---
		style_context_print_flags_get_type :: proc() -> gobj.Type ---
		style_context_push_animatable_region :: proc(context_p: ^StyleContext, region_id: glib.pointer) ---
		style_context_remove_class :: proc(context_p: ^StyleContext, class_name: cstring) ---
		style_context_remove_provider :: proc(context_p: ^StyleContext, provider: ^StyleProvider) ---
		style_context_remove_provider_for_screen :: proc(screen: ^GdkScreen, provider: ^StyleProvider) ---
		style_context_remove_region :: proc(context_p: ^StyleContext, region_name: cstring) ---
		style_context_reset_widgets :: proc(screen: ^GdkScreen) ---
		style_context_restore :: proc(context_p: ^StyleContext) ---
		style_context_save :: proc(context_p: ^StyleContext) ---
		style_context_scroll_animations :: proc(context_p: ^StyleContext, window: ^GdkWindow, dx: glib.int_, dy: glib.int_) ---
		style_context_set_background :: proc(context_p: ^StyleContext, window: ^GdkWindow) ---
		style_context_set_direction :: proc(context_p: ^StyleContext, direction: TextDirection) ---
		style_context_set_frame_clock :: proc(context_p: ^StyleContext, frame_clock: ^GdkFrameClock) ---
		style_context_set_junction_sides :: proc(context_p: ^StyleContext, sides: JunctionSides) ---
		style_context_set_parent :: proc(context_p: ^StyleContext, parent: ^StyleContext) ---
		style_context_set_path :: proc(context_p: ^StyleContext, path: ^WidgetPath) ---
		style_context_set_scale :: proc(context_p: ^StyleContext, scale: glib.int_) ---
		style_context_set_screen :: proc(context_p: ^StyleContext, screen: ^GdkScreen) ---
		style_context_set_state :: proc(context_p: ^StyleContext, flags: StateFlags) ---
		style_context_state_is_running :: proc(context_p: ^StyleContext, state: StateType, progress: ^glib.double) -> glib.boolean ---
		style_context_to_string :: proc(context_p: ^StyleContext, flags: StyleContextPrintFlags) -> cstring ---
		style_copy :: proc(style: ^Style) -> ^Style ---
		style_detach :: proc(style: ^Style) ---
		style_get :: proc(style: ^Style, widget_type: gobj.Type, first_property_name: cstring, #c_vararg var_args: ..any) ---
		style_get_style_property :: proc(style: ^Style, widget_type: gobj.Type, property_name: cstring, value: ^gobj.Value) ---
		style_get_type :: proc() -> gobj.Type ---
		style_has_context :: proc(style: ^Style) -> glib.boolean ---
		style_lookup_color :: proc(style: ^Style, color_name: cstring, color: ^GdkColor) -> glib.boolean ---
		style_lookup_icon_set :: proc(style: ^Style, stock_id: cstring) -> ^IconSet ---
		style_new :: proc() -> ^Style ---
		style_properties_clear :: proc(props: ^StyleProperties) ---
		style_properties_get :: proc(props: ^StyleProperties, state: StateFlags, #c_vararg var_args: ..any) ---
		style_properties_get_property :: proc(props: ^StyleProperties, property: cstring, state: StateFlags, value: ^gobj.Value) -> glib.boolean ---
		style_properties_get_type :: proc() -> gobj.Type ---
		style_properties_lookup_color :: proc(props: ^StyleProperties, name: cstring) -> ^SymbolicColor ---
		style_properties_lookup_property :: proc(property_name: cstring, parse_func: ^StylePropertyParser, pspec: ^^gobj.ParamSpec) -> glib.boolean ---
		style_properties_map_color :: proc(props: ^StyleProperties, name: cstring, color: ^SymbolicColor) ---
		style_properties_merge :: proc(props: ^StyleProperties, props_to_merge: ^StyleProperties, replace: glib.boolean) ---
		style_properties_new :: proc() -> ^StyleProperties ---
		style_properties_register_property :: proc(parse_func: StylePropertyParser, pspec: ^gobj.ParamSpec) ---
		style_properties_set :: proc(props: ^StyleProperties, state: StateFlags, #c_vararg var_args: ..any) ---
		style_properties_set_property :: proc(props: ^StyleProperties, property: cstring, state: StateFlags, value: ^gobj.Value) ---
		style_properties_unset_property :: proc(props: ^StyleProperties, property: cstring, state: StateFlags) ---
		style_provider_get_icon_factory :: proc(provider: ^StyleProvider, path: ^WidgetPath) -> ^IconFactory ---
		style_provider_get_style :: proc(provider: ^StyleProvider, path: ^WidgetPath) -> ^StyleProperties ---
		style_provider_get_style_property :: proc(provider: ^StyleProvider, path: ^WidgetPath, state: StateFlags, pspec: ^gobj.ParamSpec, value: ^gobj.Value) -> glib.boolean ---
		style_provider_get_type :: proc() -> gobj.Type ---
		style_render_icon :: proc(style: ^Style, source: ^IconSource, direction: TextDirection, state: StateType, size_p: IconSize, widget: ^Widget, detail: cstring) -> ^pixbuf.Pixbuf ---
		style_set_background :: proc(style: ^Style, window: ^GdkWindow, state_type: StateType) ---
		switch_get_active :: proc(sw: ^Switch) -> glib.boolean ---
		switch_get_state :: proc(sw: ^Switch) -> glib.boolean ---
		switch_get_type :: proc() -> gobj.Type ---
		switch_new :: proc() -> ^Widget ---
		switch_set_active :: proc(sw: ^Switch, is_active: glib.boolean) ---
		switch_set_state :: proc(sw: ^Switch, state: glib.boolean) ---
		symbolic_color_get_type :: proc() -> gobj.Type ---
		symbolic_color_new_alpha :: proc(color: ^SymbolicColor, factor: glib.double) -> ^SymbolicColor ---
		symbolic_color_new_literal :: proc(color: ^GdkRGBA) -> ^SymbolicColor ---
		symbolic_color_new_mix :: proc(color1: ^SymbolicColor, color2: ^SymbolicColor, factor: glib.double) -> ^SymbolicColor ---
		symbolic_color_new_name :: proc(name: cstring) -> ^SymbolicColor ---
		symbolic_color_new_shade :: proc(color: ^SymbolicColor, factor: glib.double) -> ^SymbolicColor ---
		symbolic_color_new_win32 :: proc(theme_class: cstring, id: glib.int_) -> ^SymbolicColor ---
		symbolic_color_ref :: proc(color: ^SymbolicColor) -> ^SymbolicColor ---
		symbolic_color_resolve :: proc(color: ^SymbolicColor, props: ^StyleProperties, resolved_color: ^GdkRGBA) -> glib.boolean ---
		symbolic_color_to_string :: proc(color: ^SymbolicColor) -> cstring ---
		symbolic_color_unref :: proc(color: ^SymbolicColor) ---
		table_attach :: proc(table: ^Table, child: ^Widget, left_attach: glib.uint_, right_attach: glib.uint_, top_attach: glib.uint_, bottom_attach: glib.uint_, xoptions: AttachOptions, yoptions: AttachOptions, xpadding: glib.uint_, ypadding: glib.uint_) ---
		table_attach_defaults :: proc(table: ^Table, widget: ^Widget, left_attach: glib.uint_, right_attach: glib.uint_, top_attach: glib.uint_, bottom_attach: glib.uint_) ---
		table_get_col_spacing :: proc(table: ^Table, column: glib.uint_) -> glib.uint_ ---
		table_get_default_col_spacing :: proc(table: ^Table) -> glib.uint_ ---
		table_get_default_row_spacing :: proc(table: ^Table) -> glib.uint_ ---
		table_get_homogeneous :: proc(table: ^Table) -> glib.boolean ---
		table_get_row_spacing :: proc(table: ^Table, row: glib.uint_) -> glib.uint_ ---
		table_get_size :: proc(table: ^Table, rows: ^glib.uint_, columns: ^glib.uint_) ---
		table_get_type :: proc() -> gobj.Type ---
		table_new :: proc(rows: glib.uint_, columns: glib.uint_, homogeneous: glib.boolean) -> ^Widget ---
		table_resize :: proc(table: ^Table, rows: glib.uint_, columns: glib.uint_) ---
		table_set_col_spacing :: proc(table: ^Table, column: glib.uint_, spacing: glib.uint_) ---
		table_set_col_spacings :: proc(table: ^Table, spacing: glib.uint_) ---
		table_set_homogeneous :: proc(table: ^Table, homogeneous: glib.boolean) ---
		table_set_row_spacing :: proc(table: ^Table, row: glib.uint_, spacing: glib.uint_) ---
		table_set_row_spacings :: proc(table: ^Table, spacing: glib.uint_) ---
		target_entry_copy :: proc(data: ^TargetEntry) -> ^TargetEntry ---
		target_entry_free :: proc(data: ^TargetEntry) ---
		target_entry_get_type :: proc() -> gobj.Type ---
		target_entry_new :: proc(target: cstring, flags: glib.uint_, info: glib.uint_) -> ^TargetEntry ---
		target_flags_get_type :: proc() -> gobj.Type ---
		target_list_add :: proc(list: ^TargetList, target: GdkAtom, flags: glib.uint_, info: glib.uint_) ---
		target_list_add_image_targets :: proc(list: ^TargetList, info: glib.uint_, writable: glib.boolean) ---
		target_list_add_rich_text_targets :: proc(list: ^TargetList, info: glib.uint_, deserializable: glib.boolean, buffer: ^TextBuffer) ---
		target_list_add_table :: proc(list: ^TargetList, targets: [^]TargetEntry, ntargets: glib.uint_) ---
		target_list_add_text_targets :: proc(list: ^TargetList, info: glib.uint_) ---
		target_list_add_uri_targets :: proc(list: ^TargetList, info: glib.uint_) ---
		target_list_find :: proc(list: ^TargetList, target: GdkAtom, info: ^glib.uint_) -> glib.boolean ---
		target_list_get_type :: proc() -> gobj.Type ---
		target_list_new :: proc(targets: [^]TargetEntry, ntargets: glib.uint_) -> ^TargetList ---
		target_list_ref :: proc(list: ^TargetList) -> ^TargetList ---
		target_list_remove :: proc(list: ^TargetList, target: GdkAtom) ---
		target_list_unref :: proc(list: ^TargetList) ---
		target_table_free :: proc(targets: [^]TargetEntry, n_targets: glib.int_) ---
		target_table_new_from_list :: proc(list: ^TargetList, n_targets: ^glib.int_) -> ^TargetEntry ---
		targets_include_image :: proc(targets: [^]GdkAtom, n_targets: glib.int_, writable: glib.boolean) -> glib.boolean ---
		targets_include_rich_text :: proc(targets: [^]GdkAtom, n_targets: glib.int_, buffer: ^TextBuffer) -> glib.boolean ---
		targets_include_text :: proc(targets: [^]GdkAtom, n_targets: glib.int_) -> glib.boolean ---
		targets_include_uri :: proc(targets: [^]GdkAtom, n_targets: glib.int_) -> glib.boolean ---
		tearoff_menu_item_get_type :: proc() -> gobj.Type ---
		tearoff_menu_item_new :: proc() -> ^Widget ---
		test_create_simple_window :: proc(window_title: cstring, dialog_text: cstring) -> ^Widget ---
		test_create_widget :: proc(widget_type: gobj.Type, first_property_name: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		test_display_button_window :: proc(window_title: cstring, dialog_text: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		test_find_label :: proc(widget: ^Widget, label_pattern: cstring) -> ^Widget ---
		test_find_sibling :: proc(base_widget: ^Widget, widget_type: gobj.Type) -> ^Widget ---
		test_find_widget :: proc(widget: ^Widget, label_pattern: cstring, widget_type: gobj.Type) -> ^Widget ---
		test_init :: proc(argcp: ^i32, argvp: ^^cstring, #c_vararg var_args: ..any) ---
		test_list_all_types :: proc(n_types: ^glib.uint_) -> ^gobj.Type ---
		test_register_all_types :: proc() ---
		test_slider_get_value :: proc(widget: ^Widget) -> f64 ---
		test_slider_set_perc :: proc(widget: ^Widget, percentage: f64) ---
		test_spin_button_click :: proc(spinner: ^SpinButton, button: glib.uint_, upwards: glib.boolean) -> glib.boolean ---
		test_text_get :: proc(widget: ^Widget) -> cstring ---
		test_text_set :: proc(widget: ^Widget, string_p: cstring) ---
		test_widget_click :: proc(widget: ^Widget, button: glib.uint_, modifiers: GdkModifierType) -> glib.boolean ---
		test_widget_send_key :: proc(widget: ^Widget, keyval: glib.uint_, modifiers: GdkModifierType) -> glib.boolean ---
		test_widget_wait_for_draw :: proc(widget: ^Widget) ---
		text_attributes_copy :: proc(src: ^TextAttributes) -> ^TextAttributes ---
		text_attributes_copy_values :: proc(src: ^TextAttributes, dest: ^TextAttributes) ---
		text_attributes_get_type :: proc() -> gobj.Type ---
		text_attributes_new :: proc() -> ^TextAttributes ---
		text_attributes_ref :: proc(values: ^TextAttributes) -> ^TextAttributes ---
		text_attributes_unref :: proc(values: ^TextAttributes) ---
		text_buffer_add_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark, where_p: ^TextIter) ---
		text_buffer_add_selection_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---
		text_buffer_apply_tag :: proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter) ---
		text_buffer_apply_tag_by_name :: proc(buffer: ^TextBuffer, name: cstring, start: ^TextIter, end: ^TextIter) ---
		text_buffer_backspace :: proc(buffer: ^TextBuffer, iter: ^TextIter, interactive: glib.boolean, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_begin_user_action :: proc(buffer: ^TextBuffer) ---
		text_buffer_copy_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---
		text_buffer_create_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter) -> ^TextChildAnchor ---
		text_buffer_create_mark :: proc(buffer: ^TextBuffer, mark_name: cstring, where_p: ^TextIter, left_gravity: glib.boolean) -> ^TextMark ---
		text_buffer_create_tag :: proc(buffer: ^TextBuffer, tag_name: cstring, first_property_name: cstring, #c_vararg var_args: ..any) -> ^TextTag ---
		text_buffer_cut_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard, default_editable: glib.boolean) ---
		text_buffer_delete :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---
		text_buffer_delete_interactive :: proc(buffer: ^TextBuffer, start_iter: ^TextIter, end_iter: ^TextIter, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_delete_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark) ---
		text_buffer_delete_mark_by_name :: proc(buffer: ^TextBuffer, name: cstring) ---
		text_buffer_delete_selection :: proc(buffer: ^TextBuffer, interactive: glib.boolean, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_deserialize :: proc(register_buffer: ^TextBuffer, content_buffer: ^TextBuffer, format: GdkAtom, iter: ^TextIter, data: ^glib.uint8, length: glib.size, error: ^^glib.Error) -> glib.boolean ---
		text_buffer_deserialize_get_can_create_tags :: proc(buffer: ^TextBuffer, format: GdkAtom) -> glib.boolean ---
		text_buffer_deserialize_set_can_create_tags :: proc(buffer: ^TextBuffer, format: GdkAtom, can_create_tags: glib.boolean) ---
		text_buffer_end_user_action :: proc(buffer: ^TextBuffer) ---
		text_buffer_get_bounds :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---
		text_buffer_get_char_count :: proc(buffer: ^TextBuffer) -> glib.int_ ---
		text_buffer_get_copy_target_list :: proc(buffer: ^TextBuffer) -> ^TargetList ---
		text_buffer_get_deserialize_formats :: proc(buffer: ^TextBuffer, n_formats: ^glib.int_) -> ^GdkAtom ---
		text_buffer_get_end_iter :: proc(buffer: ^TextBuffer, iter: ^TextIter) ---
		text_buffer_get_has_selection :: proc(buffer: ^TextBuffer) -> glib.boolean ---
		text_buffer_get_insert :: proc(buffer: ^TextBuffer) -> ^TextMark ---
		text_buffer_get_iter_at_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor) ---
		text_buffer_get_iter_at_line :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: glib.int_) ---
		text_buffer_get_iter_at_line_index :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: glib.int_, byte_index: glib.int_) ---
		text_buffer_get_iter_at_line_offset :: proc(buffer: ^TextBuffer, iter: ^TextIter, line_number: glib.int_, char_offset: glib.int_) ---
		text_buffer_get_iter_at_mark :: proc(buffer: ^TextBuffer, iter: ^TextIter, mark: ^TextMark) ---
		text_buffer_get_iter_at_offset :: proc(buffer: ^TextBuffer, iter: ^TextIter, char_offset: glib.int_) ---
		text_buffer_get_line_count :: proc(buffer: ^TextBuffer) -> glib.int_ ---
		text_buffer_get_mark :: proc(buffer: ^TextBuffer, name: cstring) -> ^TextMark ---
		text_buffer_get_modified :: proc(buffer: ^TextBuffer) -> glib.boolean ---
		text_buffer_get_paste_target_list :: proc(buffer: ^TextBuffer) -> ^TargetList ---
		text_buffer_get_selection_bound :: proc(buffer: ^TextBuffer) -> ^TextMark ---
		text_buffer_get_selection_bounds :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) -> glib.boolean ---
		text_buffer_get_serialize_formats :: proc(buffer: ^TextBuffer, n_formats: ^glib.int_) -> ^GdkAtom ---
		text_buffer_get_slice :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter, include_hidden_chars: glib.boolean) -> cstring ---
		text_buffer_get_start_iter :: proc(buffer: ^TextBuffer, iter: ^TextIter) ---
		text_buffer_get_tag_table :: proc(buffer: ^TextBuffer) -> ^TextTagTable ---
		text_buffer_get_text :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter, include_hidden_chars: glib.boolean) -> cstring ---
		text_buffer_get_type :: proc() -> gobj.Type ---
		text_buffer_insert :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: glib.int_) ---
		text_buffer_insert_at_cursor :: proc(buffer: ^TextBuffer, text: cstring, len: glib.int_) ---
		text_buffer_insert_child_anchor :: proc(buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor) ---
		text_buffer_insert_interactive :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: glib.int_, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_insert_interactive_at_cursor :: proc(buffer: ^TextBuffer, text: cstring, len: glib.int_, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_insert_markup :: proc(buffer: ^TextBuffer, iter: ^TextIter, markup: cstring, len: glib.int_) ---
		text_buffer_insert_pixbuf :: proc(buffer: ^TextBuffer, iter: ^TextIter, pixbuf: ^pixbuf.Pixbuf) ---
		text_buffer_insert_range :: proc(buffer: ^TextBuffer, iter: ^TextIter, start: ^TextIter, end: ^TextIter) ---
		text_buffer_insert_range_interactive :: proc(buffer: ^TextBuffer, iter: ^TextIter, start: ^TextIter, end: ^TextIter, default_editable: glib.boolean) -> glib.boolean ---
		text_buffer_insert_with_tags :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: glib.int_, first_tag: ^TextTag, #c_vararg var_args: ..any) ---
		text_buffer_insert_with_tags_by_name :: proc(buffer: ^TextBuffer, iter: ^TextIter, text: cstring, len: glib.int_, first_tag_name: cstring, #c_vararg var_args: ..any) ---
		text_buffer_move_mark :: proc(buffer: ^TextBuffer, mark: ^TextMark, where_p: ^TextIter) ---
		text_buffer_move_mark_by_name :: proc(buffer: ^TextBuffer, name: cstring, where_p: ^TextIter) ---
		text_buffer_new :: proc(table: ^TextTagTable) -> ^TextBuffer ---
		text_buffer_paste_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard, override_location: ^TextIter, default_editable: glib.boolean) ---
		text_buffer_place_cursor :: proc(buffer: ^TextBuffer, where_p: ^TextIter) ---
		text_buffer_register_deserialize_format :: proc(buffer: ^TextBuffer, mime_type: cstring, function: TextBufferDeserializeFunc, user_data: glib.pointer, user_data_destroy: glib.DestroyNotify) -> GdkAtom ---
		text_buffer_register_deserialize_tagset :: proc(buffer: ^TextBuffer, tagset_name: cstring) -> GdkAtom ---
		text_buffer_register_serialize_format :: proc(buffer: ^TextBuffer, mime_type: cstring, function: TextBufferSerializeFunc, user_data: glib.pointer, user_data_destroy: glib.DestroyNotify) -> GdkAtom ---
		text_buffer_register_serialize_tagset :: proc(buffer: ^TextBuffer, tagset_name: cstring) -> GdkAtom ---
		text_buffer_remove_all_tags :: proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter) ---
		text_buffer_remove_selection_clipboard :: proc(buffer: ^TextBuffer, clipboard: ^Clipboard) ---
		text_buffer_remove_tag :: proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter) ---
		text_buffer_remove_tag_by_name :: proc(buffer: ^TextBuffer, name: cstring, start: ^TextIter, end: ^TextIter) ---
		text_buffer_select_range :: proc(buffer: ^TextBuffer, ins: ^TextIter, bound: ^TextIter) ---
		text_buffer_serialize :: proc(register_buffer: ^TextBuffer, content_buffer: ^TextBuffer, format: GdkAtom, start: ^TextIter, end: ^TextIter, length: ^glib.size) -> ^glib.uint8 ---
		text_buffer_set_modified :: proc(buffer: ^TextBuffer, setting: glib.boolean) ---
		text_buffer_set_text :: proc(buffer: ^TextBuffer, text: cstring, len: glib.int_) ---
		text_buffer_target_info_get_type :: proc() -> gobj.Type ---
		text_buffer_unregister_deserialize_format :: proc(buffer: ^TextBuffer, format: GdkAtom) ---
		text_buffer_unregister_serialize_format :: proc(buffer: ^TextBuffer, format: GdkAtom) ---
		text_child_anchor_get_deleted :: proc(anchor: ^TextChildAnchor) -> glib.boolean ---
		text_child_anchor_get_type :: proc() -> gobj.Type ---
		text_child_anchor_get_widgets :: proc(anchor: ^TextChildAnchor) -> ^glib.List ---
		text_child_anchor_new :: proc() -> ^TextChildAnchor ---
		text_direction_get_type :: proc() -> gobj.Type ---
		text_extend_selection_get_type :: proc() -> gobj.Type ---
		text_iter_assign :: proc(iter: ^TextIter, other: ^TextIter) ---
		text_iter_backward_char :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_chars :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_cursor_positions :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_find_char :: proc(iter: ^TextIter, pred: TextCharPredicate, user_data: glib.pointer, limit: ^TextIter) -> glib.boolean ---
		text_iter_backward_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_lines :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_search :: proc(iter: ^TextIter, str: cstring, flags: TextSearchFlags, match_start: ^TextIter, match_end: ^TextIter, limit: ^TextIter) -> glib.boolean ---
		text_iter_backward_sentence_start :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_sentence_starts :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_to_tag_toggle :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_backward_visible_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_visible_cursor_positions :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_visible_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_visible_lines :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_visible_word_start :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_visible_word_starts :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_backward_word_start :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_backward_word_starts :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_begins_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_can_insert :: proc(iter: ^TextIter, default_editability: glib.boolean) -> glib.boolean ---
		text_iter_compare :: proc(lhs: ^TextIter, rhs: ^TextIter) -> glib.int_ ---
		text_iter_copy :: proc(iter: ^TextIter) -> ^TextIter ---
		text_iter_editable :: proc(iter: ^TextIter, default_setting: glib.boolean) -> glib.boolean ---
		text_iter_ends_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_ends_sentence :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_ends_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_ends_word :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_equal :: proc(lhs: ^TextIter, rhs: ^TextIter) -> glib.boolean ---
		text_iter_forward_char :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_chars :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_cursor_positions :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_find_char :: proc(iter: ^TextIter, pred: TextCharPredicate, user_data: glib.pointer, limit: ^TextIter) -> glib.boolean ---
		text_iter_forward_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_lines :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_search :: proc(iter: ^TextIter, str: cstring, flags: TextSearchFlags, match_start: ^TextIter, match_end: ^TextIter, limit: ^TextIter) -> glib.boolean ---
		text_iter_forward_sentence_end :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_sentence_ends :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_to_end :: proc(iter: ^TextIter) ---
		text_iter_forward_to_line_end :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_to_tag_toggle :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_forward_visible_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_visible_cursor_positions :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_visible_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_visible_lines :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_visible_word_end :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_visible_word_ends :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_forward_word_end :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_forward_word_ends :: proc(iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_iter_free :: proc(iter: ^TextIter) ---
		text_iter_get_attributes :: proc(iter: ^TextIter, values: ^TextAttributes) -> glib.boolean ---
		text_iter_get_buffer :: proc(iter: ^TextIter) -> ^TextBuffer ---
		text_iter_get_bytes_in_line :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_char :: proc(iter: ^TextIter) -> glib.unichar ---
		text_iter_get_chars_in_line :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_child_anchor :: proc(iter: ^TextIter) -> ^TextChildAnchor ---
		text_iter_get_language :: proc(iter: ^TextIter) -> ^pango.Language ---
		text_iter_get_line :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_line_index :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_line_offset :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_marks :: proc(iter: ^TextIter) -> ^glib.SList ---
		text_iter_get_offset :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_pixbuf :: proc(iter: ^TextIter) -> ^pixbuf.Pixbuf ---
		text_iter_get_slice :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---
		text_iter_get_tags :: proc(iter: ^TextIter) -> ^glib.SList ---
		text_iter_get_text :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---
		text_iter_get_toggled_tags :: proc(iter: ^TextIter, toggled_on: glib.boolean) -> ^glib.SList ---
		text_iter_get_type :: proc() -> gobj.Type ---
		text_iter_get_visible_line_index :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_visible_line_offset :: proc(iter: ^TextIter) -> glib.int_ ---
		text_iter_get_visible_slice :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---
		text_iter_get_visible_text :: proc(start: ^TextIter, end: ^TextIter) -> cstring ---
		text_iter_has_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_in_range :: proc(iter: ^TextIter, start: ^TextIter, end: ^TextIter) -> glib.boolean ---
		text_iter_inside_sentence :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_inside_word :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_is_cursor_position :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_is_end :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_is_start :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_order :: proc(first: ^TextIter, second: ^TextIter) ---
		text_iter_set_line :: proc(iter: ^TextIter, line_number: glib.int_) ---
		text_iter_set_line_index :: proc(iter: ^TextIter, byte_on_line: glib.int_) ---
		text_iter_set_line_offset :: proc(iter: ^TextIter, char_on_line: glib.int_) ---
		text_iter_set_offset :: proc(iter: ^TextIter, char_offset: glib.int_) ---
		text_iter_set_visible_line_index :: proc(iter: ^TextIter, byte_on_line: glib.int_) ---
		text_iter_set_visible_line_offset :: proc(iter: ^TextIter, char_on_line: glib.int_) ---
		text_iter_starts_line :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_starts_sentence :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_starts_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_iter_starts_word :: proc(iter: ^TextIter) -> glib.boolean ---
		text_iter_toggles_tag :: proc(iter: ^TextIter, tag: ^TextTag) -> glib.boolean ---
		text_mark_get_buffer :: proc(mark: ^TextMark) -> ^TextBuffer ---
		text_mark_get_deleted :: proc(mark: ^TextMark) -> glib.boolean ---
		text_mark_get_left_gravity :: proc(mark: ^TextMark) -> glib.boolean ---
		text_mark_get_name :: proc(mark: ^TextMark) -> cstring ---
		text_mark_get_type :: proc() -> gobj.Type ---
		text_mark_get_visible :: proc(mark: ^TextMark) -> glib.boolean ---
		text_mark_new :: proc(name: cstring, left_gravity: glib.boolean) -> ^TextMark ---
		text_mark_set_visible :: proc(mark: ^TextMark, setting: glib.boolean) ---
		text_search_flags_get_type :: proc() -> gobj.Type ---
		text_tag_changed :: proc(tag: ^TextTag, size_changed: glib.boolean) ---
		text_tag_event :: proc(tag: ^TextTag, event_object: ^gobj.Object, event: ^GdkEvent, iter: ^TextIter) -> glib.boolean ---
		text_tag_get_priority :: proc(tag: ^TextTag) -> glib.int_ ---
		text_tag_get_type :: proc() -> gobj.Type ---
		text_tag_new :: proc(name: cstring) -> ^TextTag ---
		text_tag_set_priority :: proc(tag: ^TextTag, priority: glib.int_) ---
		text_tag_table_add :: proc(table: ^TextTagTable, tag: ^TextTag) -> glib.boolean ---
		text_tag_table_foreach :: proc(table: ^TextTagTable, func: TextTagTableForeach, data: glib.pointer) ---
		text_tag_table_get_size :: proc(table: ^TextTagTable) -> glib.int_ ---
		text_tag_table_get_type :: proc() -> gobj.Type ---
		text_tag_table_lookup :: proc(table: ^TextTagTable, name: cstring) -> ^TextTag ---
		text_tag_table_new :: proc() -> ^TextTagTable ---
		text_tag_table_remove :: proc(table: ^TextTagTable, tag: ^TextTag) ---
		text_view_add_child_at_anchor :: proc(text_view: ^TextView, child: ^Widget, anchor: ^TextChildAnchor) ---
		text_view_add_child_in_window :: proc(text_view: ^TextView, child: ^Widget, which_window: TextWindowType, xpos: glib.int_, ypos: glib.int_) ---
		text_view_backward_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---
		text_view_backward_display_line_start :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---
		text_view_buffer_to_window_coords :: proc(text_view: ^TextView, win: TextWindowType, buffer_x: glib.int_, buffer_y: glib.int_, window_x: ^glib.int_, window_y: ^glib.int_) ---
		text_view_forward_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---
		text_view_forward_display_line_end :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---
		text_view_get_accepts_tab :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_get_border_window_size :: proc(text_view: ^TextView, type: TextWindowType) -> glib.int_ ---
		text_view_get_bottom_margin :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_buffer :: proc(text_view: ^TextView) -> ^TextBuffer ---
		text_view_get_cursor_locations :: proc(text_view: ^TextView, iter: ^TextIter, strong: ^GdkRectangle, weak: ^GdkRectangle) ---
		text_view_get_cursor_visible :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_get_default_attributes :: proc(text_view: ^TextView) -> ^TextAttributes ---
		text_view_get_editable :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_get_hadjustment :: proc(text_view: ^TextView) -> ^Adjustment ---
		text_view_get_indent :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_input_hints :: proc(text_view: ^TextView) -> InputHints ---
		text_view_get_input_purpose :: proc(text_view: ^TextView) -> InputPurpose ---
		text_view_get_iter_at_location :: proc(text_view: ^TextView, iter: ^TextIter, x: glib.int_, y: glib.int_) -> glib.boolean ---
		text_view_get_iter_at_position :: proc(text_view: ^TextView, iter: ^TextIter, trailing: ^glib.int_, x: glib.int_, y: glib.int_) -> glib.boolean ---
		text_view_get_iter_location :: proc(text_view: ^TextView, iter: ^TextIter, location: ^GdkRectangle) ---
		text_view_get_justification :: proc(text_view: ^TextView) -> Justification ---
		text_view_get_left_margin :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_line_at_y :: proc(text_view: ^TextView, target_iter: ^TextIter, y: glib.int_, line_top: ^glib.int_) ---
		text_view_get_line_yrange :: proc(text_view: ^TextView, iter: ^TextIter, y: ^glib.int_, height: ^glib.int_) ---
		text_view_get_monospace :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_get_overwrite :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_get_pixels_above_lines :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_pixels_below_lines :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_pixels_inside_wrap :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_right_margin :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_tabs :: proc(text_view: ^TextView) -> ^pango.TabArray ---
		text_view_get_top_margin :: proc(text_view: ^TextView) -> glib.int_ ---
		text_view_get_type :: proc() -> gobj.Type ---
		text_view_get_vadjustment :: proc(text_view: ^TextView) -> ^Adjustment ---
		text_view_get_visible_rect :: proc(text_view: ^TextView, visible_rect: ^GdkRectangle) ---
		text_view_get_window :: proc(text_view: ^TextView, win: TextWindowType) -> ^GdkWindow ---
		text_view_get_window_type :: proc(text_view: ^TextView, window: ^GdkWindow) -> TextWindowType ---
		text_view_get_wrap_mode :: proc(text_view: ^TextView) -> WrapMode ---
		text_view_im_context_filter_keypress :: proc(text_view: ^TextView, event: ^GdkEventKey) -> glib.boolean ---
		text_view_layer_get_type :: proc() -> gobj.Type ---
		text_view_move_child :: proc(text_view: ^TextView, child: ^Widget, xpos: glib.int_, ypos: glib.int_) ---
		text_view_move_mark_onscreen :: proc(text_view: ^TextView, mark: ^TextMark) -> glib.boolean ---
		text_view_move_visually :: proc(text_view: ^TextView, iter: ^TextIter, count: glib.int_) -> glib.boolean ---
		text_view_new :: proc() -> ^Widget ---
		text_view_new_with_buffer :: proc(buffer: ^TextBuffer) -> ^Widget ---
		text_view_place_cursor_onscreen :: proc(text_view: ^TextView) -> glib.boolean ---
		text_view_reset_cursor_blink :: proc(text_view: ^TextView) ---
		text_view_reset_im_context :: proc(text_view: ^TextView) ---
		text_view_scroll_mark_onscreen :: proc(text_view: ^TextView, mark: ^TextMark) ---
		text_view_scroll_to_iter :: proc(text_view: ^TextView, iter: ^TextIter, within_margin: glib.double, use_align: glib.boolean, xalign: glib.double, yalign: glib.double) -> glib.boolean ---
		text_view_scroll_to_mark :: proc(text_view: ^TextView, mark: ^TextMark, within_margin: glib.double, use_align: glib.boolean, xalign: glib.double, yalign: glib.double) ---
		text_view_set_accepts_tab :: proc(text_view: ^TextView, accepts_tab: glib.boolean) ---
		text_view_set_border_window_size :: proc(text_view: ^TextView, type: TextWindowType, size_p: glib.int_) ---
		text_view_set_bottom_margin :: proc(text_view: ^TextView, bottom_margin: glib.int_) ---
		text_view_set_buffer :: proc(text_view: ^TextView, buffer: ^TextBuffer) ---
		text_view_set_cursor_visible :: proc(text_view: ^TextView, setting: glib.boolean) ---
		text_view_set_editable :: proc(text_view: ^TextView, setting: glib.boolean) ---
		text_view_set_indent :: proc(text_view: ^TextView, indent: glib.int_) ---
		text_view_set_input_hints :: proc(text_view: ^TextView, hints: InputHints) ---
		text_view_set_input_purpose :: proc(text_view: ^TextView, purpose: InputPurpose) ---
		text_view_set_justification :: proc(text_view: ^TextView, justification: Justification) ---
		text_view_set_left_margin :: proc(text_view: ^TextView, left_margin: glib.int_) ---
		text_view_set_monospace :: proc(text_view: ^TextView, monospace: glib.boolean) ---
		text_view_set_overwrite :: proc(text_view: ^TextView, overwrite: glib.boolean) ---
		text_view_set_pixels_above_lines :: proc(text_view: ^TextView, pixels_above_lines: glib.int_) ---
		text_view_set_pixels_below_lines :: proc(text_view: ^TextView, pixels_below_lines: glib.int_) ---
		text_view_set_pixels_inside_wrap :: proc(text_view: ^TextView, pixels_inside_wrap: glib.int_) ---
		text_view_set_right_margin :: proc(text_view: ^TextView, right_margin: glib.int_) ---
		text_view_set_tabs :: proc(text_view: ^TextView, tabs: ^pango.TabArray) ---
		text_view_set_top_margin :: proc(text_view: ^TextView, top_margin: glib.int_) ---
		text_view_set_wrap_mode :: proc(text_view: ^TextView, wrap_mode: WrapMode) ---
		text_view_starts_display_line :: proc(text_view: ^TextView, iter: ^TextIter) -> glib.boolean ---
		text_view_window_to_buffer_coords :: proc(text_view: ^TextView, win: TextWindowType, window_x: glib.int_, window_y: glib.int_, buffer_x: ^glib.int_, buffer_y: ^glib.int_) ---
		text_window_type_get_type :: proc() -> gobj.Type ---
		theming_engine_get :: proc(engine: ^ThemingEngine, state: StateFlags, #c_vararg var_args: ..any) ---
		theming_engine_get_background_color :: proc(engine: ^ThemingEngine, state: StateFlags, color: ^GdkRGBA) ---
		theming_engine_get_border :: proc(engine: ^ThemingEngine, state: StateFlags, border: ^Border) ---
		theming_engine_get_border_color :: proc(engine: ^ThemingEngine, state: StateFlags, color: ^GdkRGBA) ---
		theming_engine_get_color :: proc(engine: ^ThemingEngine, state: StateFlags, color: ^GdkRGBA) ---
		theming_engine_get_direction :: proc(engine: ^ThemingEngine) -> TextDirection ---
		theming_engine_get_font :: proc(engine: ^ThemingEngine, state: StateFlags) -> ^pango.FontDescription ---
		theming_engine_get_junction_sides :: proc(engine: ^ThemingEngine) -> JunctionSides ---
		theming_engine_get_margin :: proc(engine: ^ThemingEngine, state: StateFlags, margin: ^Border) ---
		theming_engine_get_padding :: proc(engine: ^ThemingEngine, state: StateFlags, padding: ^Border) ---
		theming_engine_get_path :: proc(engine: ^ThemingEngine) -> ^WidgetPath ---
		theming_engine_get_property :: proc(engine: ^ThemingEngine, property: cstring, state: StateFlags, value: ^gobj.Value) ---
		theming_engine_get_screen :: proc(engine: ^ThemingEngine) -> ^GdkScreen ---
		theming_engine_get_state :: proc(engine: ^ThemingEngine) -> StateFlags ---
		theming_engine_get_style :: proc(engine: ^ThemingEngine, #c_vararg var_args: ..any) ---
		theming_engine_get_style_property :: proc(engine: ^ThemingEngine, property_name: cstring, value: ^gobj.Value) ---
		theming_engine_get_type :: proc() -> gobj.Type ---
		theming_engine_has_class :: proc(engine: ^ThemingEngine, style_class: cstring) -> glib.boolean ---
		theming_engine_has_region :: proc(engine: ^ThemingEngine, style_region: cstring, flags: ^RegionFlags) -> glib.boolean ---
		theming_engine_load :: proc(name: cstring) -> ^ThemingEngine ---
		theming_engine_lookup_color :: proc(engine: ^ThemingEngine, color_name: cstring, color: ^GdkRGBA) -> glib.boolean ---
		theming_engine_register_property :: proc(name_space: cstring, parse_func: StylePropertyParser, pspec: ^gobj.ParamSpec) ---
		theming_engine_state_is_running :: proc(engine: ^ThemingEngine, state: StateType, progress: ^glib.double) -> glib.boolean ---
		toggle_action_get_active :: proc(action: ^ToggleAction) -> glib.boolean ---
		toggle_action_get_draw_as_radio :: proc(action: ^ToggleAction) -> glib.boolean ---
		toggle_action_get_type :: proc() -> gobj.Type ---
		toggle_action_new :: proc(name: cstring, label: cstring, tooltip: cstring, stock_id: cstring) -> ^ToggleAction ---
		toggle_action_set_active :: proc(action: ^ToggleAction, is_active: glib.boolean) ---
		toggle_action_set_draw_as_radio :: proc(action: ^ToggleAction, draw_as_radio: glib.boolean) ---
		toggle_action_toggled :: proc(action: ^ToggleAction) ---
		toggle_button_get_active :: proc(toggle_button: ^ToggleButton) -> glib.boolean ---
		toggle_button_get_inconsistent :: proc(toggle_button: ^ToggleButton) -> glib.boolean ---
		toggle_button_get_mode :: proc(toggle_button: ^ToggleButton) -> glib.boolean ---
		toggle_button_get_type :: proc() -> gobj.Type ---
		toggle_button_new :: proc() -> ^Widget ---
		toggle_button_new_with_label :: proc(label: cstring) -> ^Widget ---
		toggle_button_new_with_mnemonic :: proc(label: cstring) -> ^Widget ---
		toggle_button_set_active :: proc(toggle_button: ^ToggleButton, is_active: glib.boolean) ---
		toggle_button_set_inconsistent :: proc(toggle_button: ^ToggleButton, setting: glib.boolean) ---
		toggle_button_set_mode :: proc(toggle_button: ^ToggleButton, draw_indicator: glib.boolean) ---
		toggle_button_toggled :: proc(toggle_button: ^ToggleButton) ---
		toggle_tool_button_get_active :: proc(button: ^ToggleToolButton) -> glib.boolean ---
		toggle_tool_button_get_type :: proc() -> gobj.Type ---
		toggle_tool_button_new :: proc() -> ^ToolItem ---
		toggle_tool_button_new_from_stock :: proc(stock_id: cstring) -> ^ToolItem ---
		toggle_tool_button_set_active :: proc(button: ^ToggleToolButton, is_active: glib.boolean) ---
		tool_button_get_icon_name :: proc(button: ^ToolButton) -> cstring ---
		tool_button_get_icon_widget :: proc(button: ^ToolButton) -> ^Widget ---
		tool_button_get_label :: proc(button: ^ToolButton) -> cstring ---
		tool_button_get_label_widget :: proc(button: ^ToolButton) -> ^Widget ---
		tool_button_get_stock_id :: proc(button: ^ToolButton) -> cstring ---
		tool_button_get_type :: proc() -> gobj.Type ---
		tool_button_get_use_underline :: proc(button: ^ToolButton) -> glib.boolean ---
		tool_button_new :: proc(icon_widget: ^Widget, label: cstring) -> ^ToolItem ---
		tool_button_new_from_stock :: proc(stock_id: cstring) -> ^ToolItem ---
		tool_button_set_icon_name :: proc(button: ^ToolButton, icon_name: cstring) ---
		tool_button_set_icon_widget :: proc(button: ^ToolButton, icon_widget: ^Widget) ---
		tool_button_set_label :: proc(button: ^ToolButton, label: cstring) ---
		tool_button_set_label_widget :: proc(button: ^ToolButton, label_widget: ^Widget) ---
		tool_button_set_stock_id :: proc(button: ^ToolButton, stock_id: cstring) ---
		tool_button_set_use_underline :: proc(button: ^ToolButton, use_underline: glib.boolean) ---
		tool_item_get_ellipsize_mode :: proc(tool_item: ^ToolItem) -> pango.EllipsizeMode ---
		tool_item_get_expand :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_get_homogeneous :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_get_icon_size :: proc(tool_item: ^ToolItem) -> IconSize ---
		tool_item_get_is_important :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_get_orientation :: proc(tool_item: ^ToolItem) -> Orientation ---
		tool_item_get_proxy_menu_item :: proc(tool_item: ^ToolItem, menu_item_id: cstring) -> ^Widget ---
		tool_item_get_relief_style :: proc(tool_item: ^ToolItem) -> ReliefStyle ---
		tool_item_get_text_alignment :: proc(tool_item: ^ToolItem) -> glib.float ---
		tool_item_get_text_orientation :: proc(tool_item: ^ToolItem) -> Orientation ---
		tool_item_get_text_size_group :: proc(tool_item: ^ToolItem) -> ^SizeGroup ---
		tool_item_get_toolbar_style :: proc(tool_item: ^ToolItem) -> ToolbarStyle ---
		tool_item_get_type :: proc() -> gobj.Type ---
		tool_item_get_use_drag_window :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_get_visible_horizontal :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_get_visible_vertical :: proc(tool_item: ^ToolItem) -> glib.boolean ---
		tool_item_group_get_collapsed :: proc(group: ^ToolItemGroup) -> glib.boolean ---
		tool_item_group_get_drop_item :: proc(group: ^ToolItemGroup, x: glib.int_, y: glib.int_) -> ^ToolItem ---
		tool_item_group_get_ellipsize :: proc(group: ^ToolItemGroup) -> pango.EllipsizeMode ---
		tool_item_group_get_header_relief :: proc(group: ^ToolItemGroup) -> ReliefStyle ---
		tool_item_group_get_item_position :: proc(group: ^ToolItemGroup, item: ^ToolItem) -> glib.int_ ---
		tool_item_group_get_label :: proc(group: ^ToolItemGroup) -> cstring ---
		tool_item_group_get_label_widget :: proc(group: ^ToolItemGroup) -> ^Widget ---
		tool_item_group_get_n_items :: proc(group: ^ToolItemGroup) -> glib.uint_ ---
		tool_item_group_get_nth_item :: proc(group: ^ToolItemGroup, index: glib.uint_) -> ^ToolItem ---
		tool_item_group_get_type :: proc() -> gobj.Type ---
		tool_item_group_insert :: proc(group: ^ToolItemGroup, item: ^ToolItem, position: glib.int_) ---
		tool_item_group_new :: proc(label: cstring) -> ^Widget ---
		tool_item_group_set_collapsed :: proc(group: ^ToolItemGroup, collapsed: glib.boolean) ---
		tool_item_group_set_ellipsize :: proc(group: ^ToolItemGroup, ellipsize: pango.EllipsizeMode) ---
		tool_item_group_set_header_relief :: proc(group: ^ToolItemGroup, style: ReliefStyle) ---
		tool_item_group_set_item_position :: proc(group: ^ToolItemGroup, item: ^ToolItem, position: glib.int_) ---
		tool_item_group_set_label :: proc(group: ^ToolItemGroup, label: cstring) ---
		tool_item_group_set_label_widget :: proc(group: ^ToolItemGroup, label_widget: ^Widget) ---
		tool_item_new :: proc() -> ^ToolItem ---
		tool_item_rebuild_menu :: proc(tool_item: ^ToolItem) ---
		tool_item_retrieve_proxy_menu_item :: proc(tool_item: ^ToolItem) -> ^Widget ---
		tool_item_set_expand :: proc(tool_item: ^ToolItem, expand: glib.boolean) ---
		tool_item_set_homogeneous :: proc(tool_item: ^ToolItem, homogeneous: glib.boolean) ---
		tool_item_set_is_important :: proc(tool_item: ^ToolItem, is_important: glib.boolean) ---
		tool_item_set_proxy_menu_item :: proc(tool_item: ^ToolItem, menu_item_id: cstring, menu_item: ^Widget) ---
		tool_item_set_tooltip_markup :: proc(tool_item: ^ToolItem, markup: cstring) ---
		tool_item_set_tooltip_text :: proc(tool_item: ^ToolItem, text: cstring) ---
		tool_item_set_use_drag_window :: proc(tool_item: ^ToolItem, use_drag_window: glib.boolean) ---
		tool_item_set_visible_horizontal :: proc(tool_item: ^ToolItem, visible_horizontal: glib.boolean) ---
		tool_item_set_visible_vertical :: proc(tool_item: ^ToolItem, visible_vertical: glib.boolean) ---
		tool_item_toolbar_reconfigured :: proc(tool_item: ^ToolItem) ---
		tool_palette_add_drag_dest :: proc(palette: ^ToolPalette, widget: ^Widget, flags: DestDefaults, targets: ToolPaletteDragTargets, actions: GdkDragAction) ---
		tool_palette_drag_targets_get_type :: proc() -> gobj.Type ---
		tool_palette_get_drag_item :: proc(palette: ^ToolPalette, selection: ^SelectionData) -> ^Widget ---
		tool_palette_get_drag_target_group :: proc() -> ^TargetEntry ---
		tool_palette_get_drag_target_item :: proc() -> ^TargetEntry ---
		tool_palette_get_drop_group :: proc(palette: ^ToolPalette, x: glib.int_, y: glib.int_) -> ^ToolItemGroup ---
		tool_palette_get_drop_item :: proc(palette: ^ToolPalette, x: glib.int_, y: glib.int_) -> ^ToolItem ---
		tool_palette_get_exclusive :: proc(palette: ^ToolPalette, group: ^ToolItemGroup) -> glib.boolean ---
		tool_palette_get_expand :: proc(palette: ^ToolPalette, group: ^ToolItemGroup) -> glib.boolean ---
		tool_palette_get_group_position :: proc(palette: ^ToolPalette, group: ^ToolItemGroup) -> glib.int_ ---
		tool_palette_get_hadjustment :: proc(palette: ^ToolPalette) -> ^Adjustment ---
		tool_palette_get_icon_size :: proc(palette: ^ToolPalette) -> IconSize ---
		tool_palette_get_style :: proc(palette: ^ToolPalette) -> ToolbarStyle ---
		tool_palette_get_type :: proc() -> gobj.Type ---
		tool_palette_get_vadjustment :: proc(palette: ^ToolPalette) -> ^Adjustment ---
		tool_palette_new :: proc() -> ^Widget ---
		tool_palette_set_drag_source :: proc(palette: ^ToolPalette, targets: ToolPaletteDragTargets) ---
		tool_palette_set_exclusive :: proc(palette: ^ToolPalette, group: ^ToolItemGroup, exclusive: glib.boolean) ---
		tool_palette_set_expand :: proc(palette: ^ToolPalette, group: ^ToolItemGroup, expand: glib.boolean) ---
		tool_palette_set_group_position :: proc(palette: ^ToolPalette, group: ^ToolItemGroup, position: glib.int_) ---
		tool_palette_set_icon_size :: proc(palette: ^ToolPalette, icon_size: IconSize) ---
		tool_palette_set_style :: proc(palette: ^ToolPalette, style: ToolbarStyle) ---
		tool_palette_unset_icon_size :: proc(palette: ^ToolPalette) ---
		tool_palette_unset_style :: proc(palette: ^ToolPalette) ---
		tool_shell_get_ellipsize_mode :: proc(shell: ^ToolShell) -> pango.EllipsizeMode ---
		tool_shell_get_icon_size :: proc(shell: ^ToolShell) -> IconSize ---
		tool_shell_get_orientation :: proc(shell: ^ToolShell) -> Orientation ---
		tool_shell_get_relief_style :: proc(shell: ^ToolShell) -> ReliefStyle ---
		tool_shell_get_style :: proc(shell: ^ToolShell) -> ToolbarStyle ---
		tool_shell_get_text_alignment :: proc(shell: ^ToolShell) -> glib.float ---
		tool_shell_get_text_orientation :: proc(shell: ^ToolShell) -> Orientation ---
		tool_shell_get_text_size_group :: proc(shell: ^ToolShell) -> ^SizeGroup ---
		tool_shell_get_type :: proc() -> gobj.Type ---
		tool_shell_rebuild_menu :: proc(shell: ^ToolShell) ---
		toolbar_get_drop_index :: proc(toolbar: ^Toolbar, x: glib.int_, y: glib.int_) -> glib.int_ ---
		toolbar_get_icon_size :: proc(toolbar: ^Toolbar) -> IconSize ---
		toolbar_get_item_index :: proc(toolbar: ^Toolbar, item: ^ToolItem) -> glib.int_ ---
		toolbar_get_n_items :: proc(toolbar: ^Toolbar) -> glib.int_ ---
		toolbar_get_nth_item :: proc(toolbar: ^Toolbar, n: glib.int_) -> ^ToolItem ---
		toolbar_get_relief_style :: proc(toolbar: ^Toolbar) -> ReliefStyle ---
		toolbar_get_show_arrow :: proc(toolbar: ^Toolbar) -> glib.boolean ---
		toolbar_get_style :: proc(toolbar: ^Toolbar) -> ToolbarStyle ---
		toolbar_get_type :: proc() -> gobj.Type ---
		toolbar_insert :: proc(toolbar: ^Toolbar, item: ^ToolItem, pos: glib.int_) ---
		toolbar_new :: proc() -> ^Widget ---
		toolbar_set_drop_highlight_item :: proc(toolbar: ^Toolbar, tool_item: ^ToolItem, index_: glib.int_) ---
		toolbar_set_icon_size :: proc(toolbar: ^Toolbar, icon_size: IconSize) ---
		toolbar_set_show_arrow :: proc(toolbar: ^Toolbar, show_arrow: glib.boolean) ---
		toolbar_set_style :: proc(toolbar: ^Toolbar, style: ToolbarStyle) ---
		toolbar_space_style_get_type :: proc() -> gobj.Type ---
		toolbar_style_get_type :: proc() -> gobj.Type ---
		toolbar_unset_icon_size :: proc(toolbar: ^Toolbar) ---
		toolbar_unset_style :: proc(toolbar: ^Toolbar) ---
		tooltip_get_type :: proc() -> gobj.Type ---
		tooltip_set_custom :: proc(tooltip: ^Tooltip, custom_widget: ^Widget) ---
		tooltip_set_icon :: proc(tooltip: ^Tooltip, pixbuf: ^pixbuf.Pixbuf) ---
		tooltip_set_icon_from_gicon :: proc(tooltip: ^Tooltip, gicon: ^gio.Icon, size_p: IconSize) ---
		tooltip_set_icon_from_icon_name :: proc(tooltip: ^Tooltip, icon_name: cstring, size_p: IconSize) ---
		tooltip_set_icon_from_stock :: proc(tooltip: ^Tooltip, stock_id: cstring, size_p: IconSize) ---
		tooltip_set_markup :: proc(tooltip: ^Tooltip, markup: cstring) ---
		tooltip_set_text :: proc(tooltip: ^Tooltip, text: cstring) ---
		tooltip_set_tip_area :: proc(tooltip: ^Tooltip, rect: ^GdkRectangle) ---
		tooltip_trigger_tooltip_query :: proc(display: ^GdkDisplay) ---
		tree_drag_dest_drag_data_received :: proc(drag_dest: ^TreeDragDest, dest: ^TreePath, selection_data: ^SelectionData) -> glib.boolean ---
		tree_drag_dest_get_type :: proc() -> gobj.Type ---
		tree_drag_dest_row_drop_possible :: proc(drag_dest: ^TreeDragDest, dest_path: ^TreePath, selection_data: ^SelectionData) -> glib.boolean ---
		tree_drag_source_drag_data_delete :: proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean ---
		tree_drag_source_drag_data_get :: proc(drag_source: ^TreeDragSource, path: ^TreePath, selection_data: ^SelectionData) -> glib.boolean ---
		tree_drag_source_get_type :: proc() -> gobj.Type ---
		tree_drag_source_row_draggable :: proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean ---
		tree_get_row_drag_data :: proc(selection_data: ^SelectionData, tree_model: ^^TreeModel, path: ^^TreePath) -> glib.boolean ---
		tree_iter_copy :: proc(iter: ^TreeIter) -> ^TreeIter ---
		tree_iter_free :: proc(iter: ^TreeIter) ---
		tree_iter_get_type :: proc() -> gobj.Type ---
		tree_model_filter_clear_cache :: proc(filter: ^TreeModelFilter) ---
		tree_model_filter_convert_child_iter_to_iter :: proc(filter: ^TreeModelFilter, filter_iter: ^TreeIter, child_iter: ^TreeIter) -> glib.boolean ---
		tree_model_filter_convert_child_path_to_path :: proc(filter: ^TreeModelFilter, child_path: ^TreePath) -> ^TreePath ---
		tree_model_filter_convert_iter_to_child_iter :: proc(filter: ^TreeModelFilter, child_iter: ^TreeIter, filter_iter: ^TreeIter) ---
		tree_model_filter_convert_path_to_child_path :: proc(filter: ^TreeModelFilter, filter_path: ^TreePath) -> ^TreePath ---
		tree_model_filter_get_model :: proc(filter: ^TreeModelFilter) -> ^TreeModel ---
		tree_model_filter_get_type :: proc() -> gobj.Type ---
		tree_model_filter_new :: proc(child_model: ^TreeModel, root: ^TreePath) -> ^TreeModel ---
		tree_model_filter_refilter :: proc(filter: ^TreeModelFilter) ---
		tree_model_filter_set_modify_func :: proc(filter: ^TreeModelFilter, n_columns: glib.int_, types: [^]gobj.Type, func: TreeModelFilterModifyFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_model_filter_set_visible_column :: proc(filter: ^TreeModelFilter, column: glib.int_) ---
		tree_model_filter_set_visible_func :: proc(filter: ^TreeModelFilter, func: TreeModelFilterVisibleFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_model_flags_get_type :: proc() -> gobj.Type ---
		tree_model_foreach :: proc(model: ^TreeModel, func: TreeModelForeachFunc, user_data: glib.pointer) ---
		tree_model_get :: proc(tree_model: ^TreeModel, iter: ^TreeIter, #c_vararg var_args: ..any) ---
		tree_model_get_column_type :: proc(tree_model: ^TreeModel, index_: glib.int_) -> gobj.Type ---
		tree_model_get_flags :: proc(tree_model: ^TreeModel) -> TreeModelFlags ---
		tree_model_get_iter :: proc(tree_model: ^TreeModel, iter: ^TreeIter, path: ^TreePath) -> glib.boolean ---
		tree_model_get_iter_first :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---
		tree_model_get_iter_from_string :: proc(tree_model: ^TreeModel, iter: ^TreeIter, path_string: cstring) -> glib.boolean ---
		tree_model_get_n_columns :: proc(tree_model: ^TreeModel) -> glib.int_ ---
		tree_model_get_path :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> ^TreePath ---
		tree_model_get_string_from_iter :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> cstring ---
		tree_model_get_type :: proc() -> gobj.Type ---
		tree_model_get_value :: proc(tree_model: ^TreeModel, iter: ^TreeIter, column: glib.int_, value: ^gobj.Value) ---
		tree_model_iter_children :: proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter) -> glib.boolean ---
		tree_model_iter_has_child :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---
		tree_model_iter_n_children :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.int_ ---
		tree_model_iter_next :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---
		tree_model_iter_nth_child :: proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter, n: glib.int_) -> glib.boolean ---
		tree_model_iter_parent :: proc(tree_model: ^TreeModel, iter: ^TreeIter, child: ^TreeIter) -> glib.boolean ---
		tree_model_iter_previous :: proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean ---
		tree_model_ref_node :: proc(tree_model: ^TreeModel, iter: ^TreeIter) ---
		tree_model_row_changed :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---
		tree_model_row_deleted :: proc(tree_model: ^TreeModel, path: ^TreePath) ---
		tree_model_row_has_child_toggled :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---
		tree_model_row_inserted :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter) ---
		tree_model_rows_reordered :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^glib.int_) ---
		tree_model_rows_reordered_with_length :: proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^glib.int_, length: glib.int_) ---
		tree_model_sort_clear_cache :: proc(tree_model_sort: ^TreeModelSort) ---
		tree_model_sort_convert_child_iter_to_iter :: proc(tree_model_sort: ^TreeModelSort, sort_iter: ^TreeIter, child_iter: ^TreeIter) -> glib.boolean ---
		tree_model_sort_convert_child_path_to_path :: proc(tree_model_sort: ^TreeModelSort, child_path: ^TreePath) -> ^TreePath ---
		tree_model_sort_convert_iter_to_child_iter :: proc(tree_model_sort: ^TreeModelSort, child_iter: ^TreeIter, sorted_iter: ^TreeIter) ---
		tree_model_sort_convert_path_to_child_path :: proc(tree_model_sort: ^TreeModelSort, sorted_path: ^TreePath) -> ^TreePath ---
		tree_model_sort_get_model :: proc(tree_model: ^TreeModelSort) -> ^TreeModel ---
		tree_model_sort_get_type :: proc() -> gobj.Type ---
		tree_model_sort_iter_is_valid :: proc(tree_model_sort: ^TreeModelSort, iter: ^TreeIter) -> glib.boolean ---
		tree_model_sort_new_with_model :: proc(child_model: ^TreeModel) -> ^TreeModel ---
		tree_model_sort_reset_default_sort_func :: proc(tree_model_sort: ^TreeModelSort) ---
		tree_model_unref_node :: proc(tree_model: ^TreeModel, iter: ^TreeIter) ---
		tree_path_append_index :: proc(path: ^TreePath, index_: glib.int_) ---
		tree_path_compare :: proc(a: ^TreePath, b: ^TreePath) -> glib.int_ ---
		tree_path_copy :: proc(path: ^TreePath) -> ^TreePath ---
		tree_path_down :: proc(path: ^TreePath) ---
		tree_path_free :: proc(path: ^TreePath) ---
		tree_path_get_depth :: proc(path: ^TreePath) -> glib.int_ ---
		tree_path_get_indices :: proc(path: ^TreePath) -> ^glib.int_ ---
		tree_path_get_indices_with_depth :: proc(path: ^TreePath, depth: ^glib.int_) -> ^glib.int_ ---
		tree_path_get_type :: proc() -> gobj.Type ---
		tree_path_is_ancestor :: proc(path: ^TreePath, descendant: ^TreePath) -> glib.boolean ---
		tree_path_is_descendant :: proc(path: ^TreePath, ancestor: ^TreePath) -> glib.boolean ---
		tree_path_new :: proc() -> ^TreePath ---
		tree_path_new_first :: proc() -> ^TreePath ---
		tree_path_new_from_indices :: proc(first_index: glib.int_, #c_vararg var_args: ..any) -> ^TreePath ---
		tree_path_new_from_indicesv :: proc(indices: [^]glib.int_, length: glib.size) -> ^TreePath ---
		tree_path_new_from_string :: proc(path: cstring) -> ^TreePath ---
		tree_path_next :: proc(path: ^TreePath) ---
		tree_path_prepend_index :: proc(path: ^TreePath, index_: glib.int_) ---
		tree_path_prev :: proc(path: ^TreePath) -> glib.boolean ---
		tree_path_to_string :: proc(path: ^TreePath) -> cstring ---
		tree_path_up :: proc(path: ^TreePath) -> glib.boolean ---
		tree_row_reference_copy :: proc(reference: ^TreeRowReference) -> ^TreeRowReference ---
		tree_row_reference_deleted :: proc(proxy: ^gobj.Object, path: ^TreePath) ---
		tree_row_reference_free :: proc(reference: ^TreeRowReference) ---
		tree_row_reference_get_model :: proc(reference: ^TreeRowReference) -> ^TreeModel ---
		tree_row_reference_get_path :: proc(reference: ^TreeRowReference) -> ^TreePath ---
		tree_row_reference_get_type :: proc() -> gobj.Type ---
		tree_row_reference_inserted :: proc(proxy: ^gobj.Object, path: ^TreePath) ---
		tree_row_reference_new :: proc(model: ^TreeModel, path: ^TreePath) -> ^TreeRowReference ---
		tree_row_reference_new_proxy :: proc(proxy: ^gobj.Object, model: ^TreeModel, path: ^TreePath) -> ^TreeRowReference ---
		tree_row_reference_reordered :: proc(proxy: ^gobj.Object, path: ^TreePath, iter: ^TreeIter, new_order: ^glib.int_) ---
		tree_row_reference_valid :: proc(reference: ^TreeRowReference) -> glib.boolean ---
		tree_selection_count_selected_rows :: proc(selection: ^TreeSelection) -> glib.int_ ---
		tree_selection_get_mode :: proc(selection: ^TreeSelection) -> SelectionMode ---
		tree_selection_get_select_function :: proc(selection: ^TreeSelection) -> TreeSelectionFunc ---
		tree_selection_get_selected :: proc(selection: ^TreeSelection, model: ^^TreeModel, iter: ^TreeIter) -> glib.boolean ---
		tree_selection_get_selected_rows :: proc(selection: ^TreeSelection, model: ^^TreeModel) -> ^glib.List ---
		tree_selection_get_tree_view :: proc(selection: ^TreeSelection) -> ^TreeView ---
		tree_selection_get_type :: proc() -> gobj.Type ---
		tree_selection_get_user_data :: proc(selection: ^TreeSelection) -> glib.pointer ---
		tree_selection_iter_is_selected :: proc(selection: ^TreeSelection, iter: ^TreeIter) -> glib.boolean ---
		tree_selection_path_is_selected :: proc(selection: ^TreeSelection, path: ^TreePath) -> glib.boolean ---
		tree_selection_select_all :: proc(selection: ^TreeSelection) ---
		tree_selection_select_iter :: proc(selection: ^TreeSelection, iter: ^TreeIter) ---
		tree_selection_select_path :: proc(selection: ^TreeSelection, path: ^TreePath) ---
		tree_selection_select_range :: proc(selection: ^TreeSelection, start_path: ^TreePath, end_path: ^TreePath) ---
		tree_selection_selected_foreach :: proc(selection: ^TreeSelection, func: TreeSelectionForeachFunc, data: glib.pointer) ---
		tree_selection_set_mode :: proc(selection: ^TreeSelection, type: SelectionMode) ---
		tree_selection_set_select_function :: proc(selection: ^TreeSelection, func: TreeSelectionFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_selection_unselect_all :: proc(selection: ^TreeSelection) ---
		tree_selection_unselect_iter :: proc(selection: ^TreeSelection, iter: ^TreeIter) ---
		tree_selection_unselect_path :: proc(selection: ^TreeSelection, path: ^TreePath) ---
		tree_selection_unselect_range :: proc(selection: ^TreeSelection, start_path: ^TreePath, end_path: ^TreePath) ---
		tree_set_row_drag_data :: proc(selection_data: ^SelectionData, tree_model: ^TreeModel, path: ^TreePath) -> glib.boolean ---
		tree_sortable_get_sort_column_id :: proc(sortable: ^TreeSortable, sort_column_id: ^glib.int_, order: ^SortType) -> glib.boolean ---
		tree_sortable_get_type :: proc() -> gobj.Type ---
		tree_sortable_has_default_sort_func :: proc(sortable: ^TreeSortable) -> glib.boolean ---
		tree_sortable_set_default_sort_func :: proc(sortable: ^TreeSortable, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_sortable_set_sort_column_id :: proc(sortable: ^TreeSortable, sort_column_id: glib.int_, order: SortType) ---
		tree_sortable_set_sort_func :: proc(sortable: ^TreeSortable, sort_column_id: glib.int_, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_sortable_sort_column_changed :: proc(sortable: ^TreeSortable) ---
		tree_store_append :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter) ---
		tree_store_clear :: proc(tree_store: ^TreeStore) ---
		tree_store_get_type :: proc() -> gobj.Type ---
		tree_store_insert :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: glib.int_) ---
		tree_store_insert_after :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, sibling: ^TreeIter) ---
		tree_store_insert_before :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, sibling: ^TreeIter) ---
		tree_store_insert_with_values :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: glib.int_, #c_vararg var_args: ..any) ---
		tree_store_insert_with_valuesv :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter, position: glib.int_, columns: [^]glib.int_, values: [^]gobj.Value, n_values: glib.int_) ---
		tree_store_is_ancestor :: proc(tree_store: ^TreeStore, iter: ^TreeIter, descendant: ^TreeIter) -> glib.boolean ---
		tree_store_iter_depth :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> glib.int_ ---
		tree_store_iter_is_valid :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> glib.boolean ---
		tree_store_move_after :: proc(tree_store: ^TreeStore, iter: ^TreeIter, position: ^TreeIter) ---
		tree_store_move_before :: proc(tree_store: ^TreeStore, iter: ^TreeIter, position: ^TreeIter) ---
		tree_store_new :: proc(n_columns: glib.int_, #c_vararg var_args: ..any) -> ^TreeStore ---
		tree_store_newv :: proc(n_columns: glib.int_, types: [^]gobj.Type) -> ^TreeStore ---
		tree_store_prepend :: proc(tree_store: ^TreeStore, iter: ^TreeIter, parent: ^TreeIter) ---
		tree_store_remove :: proc(tree_store: ^TreeStore, iter: ^TreeIter) -> glib.boolean ---
		tree_store_reorder :: proc(tree_store: ^TreeStore, parent: ^TreeIter, new_order: ^glib.int_) ---
		tree_store_set :: proc(tree_store: ^TreeStore, iter: ^TreeIter, #c_vararg var_args: ..any) ---
		tree_store_set_column_types :: proc(tree_store: ^TreeStore, n_columns: glib.int_, types: [^]gobj.Type) ---
		tree_store_set_value :: proc(tree_store: ^TreeStore, iter: ^TreeIter, column: glib.int_, value: ^gobj.Value) ---
		tree_store_set_valuesv :: proc(tree_store: ^TreeStore, iter: ^TreeIter, columns: [^]glib.int_, values: [^]gobj.Value, n_values: glib.int_) ---
		tree_store_swap :: proc(tree_store: ^TreeStore, a: ^TreeIter, b: ^TreeIter) ---
		tree_view_append_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_collapse_all :: proc(tree_view: ^TreeView) ---
		tree_view_collapse_row :: proc(tree_view: ^TreeView, path: ^TreePath) -> glib.boolean ---
		tree_view_column_add_attribute :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, attribute: cstring, column: glib.int_) ---
		tree_view_column_cell_get_position :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, x_offset: ^glib.int_, width: ^glib.int_) -> glib.boolean ---
		tree_view_column_cell_get_size :: proc(tree_column: ^TreeViewColumn, cell_area: ^GdkRectangle, x_offset: ^glib.int_, y_offset: ^glib.int_, width: ^glib.int_, height: ^glib.int_) ---
		tree_view_column_cell_is_visible :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_cell_set_cell_data :: proc(tree_column: ^TreeViewColumn, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean) ---
		tree_view_column_clear :: proc(tree_column: ^TreeViewColumn) ---
		tree_view_column_clear_attributes :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer) ---
		tree_view_column_clicked :: proc(tree_column: ^TreeViewColumn) ---
		tree_view_column_focus_cell :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer) ---
		tree_view_column_get_alignment :: proc(tree_column: ^TreeViewColumn) -> glib.float ---
		tree_view_column_get_button :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---
		tree_view_column_get_clickable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_expand :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_fixed_width :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_max_width :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_min_width :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_reorderable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_resizable :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_sizing :: proc(tree_column: ^TreeViewColumn) -> TreeViewColumnSizing ---
		tree_view_column_get_sort_column_id :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_sort_indicator :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_sort_order :: proc(tree_column: ^TreeViewColumn) -> SortType ---
		tree_view_column_get_spacing :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_title :: proc(tree_column: ^TreeViewColumn) -> cstring ---
		tree_view_column_get_tree_view :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---
		tree_view_column_get_type :: proc() -> gobj.Type ---
		tree_view_column_get_visible :: proc(tree_column: ^TreeViewColumn) -> glib.boolean ---
		tree_view_column_get_widget :: proc(tree_column: ^TreeViewColumn) -> ^Widget ---
		tree_view_column_get_width :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_get_x_offset :: proc(tree_column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_column_new :: proc() -> ^TreeViewColumn ---
		tree_view_column_new_with_area :: proc(area: ^CellArea) -> ^TreeViewColumn ---
		tree_view_column_new_with_attributes :: proc(title: cstring, cell: ^CellRenderer, #c_vararg var_args: ..any) -> ^TreeViewColumn ---
		tree_view_column_pack_end :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer, expand: glib.boolean) ---
		tree_view_column_pack_start :: proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer, expand: glib.boolean) ---
		tree_view_column_queue_resize :: proc(tree_column: ^TreeViewColumn) ---
		tree_view_column_set_alignment :: proc(tree_column: ^TreeViewColumn, xalign: glib.float) ---
		tree_view_column_set_attributes :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, #c_vararg var_args: ..any) ---
		tree_view_column_set_cell_data_func :: proc(tree_column: ^TreeViewColumn, cell_renderer: ^CellRenderer, func: TreeCellDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_view_column_set_clickable :: proc(tree_column: ^TreeViewColumn, clickable: glib.boolean) ---
		tree_view_column_set_expand :: proc(tree_column: ^TreeViewColumn, expand: glib.boolean) ---
		tree_view_column_set_fixed_width :: proc(tree_column: ^TreeViewColumn, fixed_width: glib.int_) ---
		tree_view_column_set_max_width :: proc(tree_column: ^TreeViewColumn, max_width: glib.int_) ---
		tree_view_column_set_min_width :: proc(tree_column: ^TreeViewColumn, min_width: glib.int_) ---
		tree_view_column_set_reorderable :: proc(tree_column: ^TreeViewColumn, reorderable: glib.boolean) ---
		tree_view_column_set_resizable :: proc(tree_column: ^TreeViewColumn, resizable: glib.boolean) ---
		tree_view_column_set_sizing :: proc(tree_column: ^TreeViewColumn, type: TreeViewColumnSizing) ---
		tree_view_column_set_sort_column_id :: proc(tree_column: ^TreeViewColumn, sort_column_id: glib.int_) ---
		tree_view_column_set_sort_indicator :: proc(tree_column: ^TreeViewColumn, setting: glib.boolean) ---
		tree_view_column_set_sort_order :: proc(tree_column: ^TreeViewColumn, order: SortType) ---
		tree_view_column_set_spacing :: proc(tree_column: ^TreeViewColumn, spacing: glib.int_) ---
		tree_view_column_set_title :: proc(tree_column: ^TreeViewColumn, title: cstring) ---
		tree_view_column_set_visible :: proc(tree_column: ^TreeViewColumn, visible: glib.boolean) ---
		tree_view_column_set_widget :: proc(tree_column: ^TreeViewColumn, widget: ^Widget) ---
		tree_view_column_sizing_get_type :: proc() -> gobj.Type ---
		tree_view_columns_autosize :: proc(tree_view: ^TreeView) ---
		tree_view_convert_bin_window_to_tree_coords :: proc(tree_view: ^TreeView, bx: glib.int_, by: glib.int_, tx: ^glib.int_, ty: ^glib.int_) ---
		tree_view_convert_bin_window_to_widget_coords :: proc(tree_view: ^TreeView, bx: glib.int_, by: glib.int_, wx: ^glib.int_, wy: ^glib.int_) ---
		tree_view_convert_tree_to_bin_window_coords :: proc(tree_view: ^TreeView, tx: glib.int_, ty: glib.int_, bx: ^glib.int_, by: ^glib.int_) ---
		tree_view_convert_tree_to_widget_coords :: proc(tree_view: ^TreeView, tx: glib.int_, ty: glib.int_, wx: ^glib.int_, wy: ^glib.int_) ---
		tree_view_convert_widget_to_bin_window_coords :: proc(tree_view: ^TreeView, wx: glib.int_, wy: glib.int_, bx: ^glib.int_, by: ^glib.int_) ---
		tree_view_convert_widget_to_tree_coords :: proc(tree_view: ^TreeView, wx: glib.int_, wy: glib.int_, tx: ^glib.int_, ty: ^glib.int_) ---
		tree_view_create_row_drag_icon :: proc(tree_view: ^TreeView, path: ^TreePath) -> ^cairo.surface_t ---
		tree_view_drop_position_get_type :: proc() -> gobj.Type ---
		tree_view_enable_model_drag_dest :: proc(tree_view: ^TreeView, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		tree_view_enable_model_drag_source :: proc(tree_view: ^TreeView, start_button_mask: GdkModifierType, targets: [^]TargetEntry, n_targets: glib.int_, actions: GdkDragAction) ---
		tree_view_expand_all :: proc(tree_view: ^TreeView) ---
		tree_view_expand_row :: proc(tree_view: ^TreeView, path: ^TreePath, open_all: glib.boolean) -> glib.boolean ---
		tree_view_expand_to_path :: proc(tree_view: ^TreeView, path: ^TreePath) ---
		tree_view_get_activate_on_single_click :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_background_area :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, rect: ^GdkRectangle) ---
		tree_view_get_bin_window :: proc(tree_view: ^TreeView) -> ^GdkWindow ---
		tree_view_get_cell_area :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, rect: ^GdkRectangle) ---
		tree_view_get_column :: proc(tree_view: ^TreeView, n: glib.int_) -> ^TreeViewColumn ---
		tree_view_get_columns :: proc(tree_view: ^TreeView) -> ^glib.List ---
		tree_view_get_cursor :: proc(tree_view: ^TreeView, path: ^^TreePath, focus_column: ^^TreeViewColumn) ---
		tree_view_get_dest_row_at_pos :: proc(tree_view: ^TreeView, drag_x: glib.int_, drag_y: glib.int_, path: ^^TreePath, pos: ^TreeViewDropPosition) -> glib.boolean ---
		tree_view_get_drag_dest_row :: proc(tree_view: ^TreeView, path: ^^TreePath, pos: ^TreeViewDropPosition) ---
		tree_view_get_enable_search :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_enable_tree_lines :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_expander_column :: proc(tree_view: ^TreeView) -> ^TreeViewColumn ---
		tree_view_get_fixed_height_mode :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_grid_lines :: proc(tree_view: ^TreeView) -> TreeViewGridLines ---
		tree_view_get_hadjustment :: proc(tree_view: ^TreeView) -> ^Adjustment ---
		tree_view_get_headers_clickable :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_headers_visible :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_hover_expand :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_hover_selection :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_level_indentation :: proc(tree_view: ^TreeView) -> glib.int_ ---
		tree_view_get_model :: proc(tree_view: ^TreeView) -> ^TreeModel ---
		tree_view_get_n_columns :: proc(tree_view: ^TreeView) -> glib.uint_ ---
		tree_view_get_path_at_pos :: proc(tree_view: ^TreeView, x: glib.int_, y: glib.int_, path: ^^TreePath, column: ^^TreeViewColumn, cell_x: ^glib.int_, cell_y: ^glib.int_) -> glib.boolean ---
		tree_view_get_reorderable :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_row_separator_func :: proc(tree_view: ^TreeView) -> TreeViewRowSeparatorFunc ---
		tree_view_get_rubber_banding :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_rules_hint :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_search_column :: proc(tree_view: ^TreeView) -> glib.int_ ---
		tree_view_get_search_entry :: proc(tree_view: ^TreeView) -> ^Entry ---
		tree_view_get_search_equal_func :: proc(tree_view: ^TreeView) -> TreeViewSearchEqualFunc ---
		tree_view_get_search_position_func :: proc(tree_view: ^TreeView) -> TreeViewSearchPositionFunc ---
		tree_view_get_selection :: proc(tree_view: ^TreeView) -> ^TreeSelection ---
		tree_view_get_show_expanders :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_get_tooltip_column :: proc(tree_view: ^TreeView) -> glib.int_ ---
		tree_view_get_tooltip_context :: proc(tree_view: ^TreeView, x: ^glib.int_, y: ^glib.int_, keyboard_tip: glib.boolean, model: ^^TreeModel, path: ^^TreePath, iter: ^TreeIter) -> glib.boolean ---
		tree_view_get_type :: proc() -> gobj.Type ---
		tree_view_get_vadjustment :: proc(tree_view: ^TreeView) -> ^Adjustment ---
		tree_view_get_visible_range :: proc(tree_view: ^TreeView, start_path: ^^TreePath, end_path: ^^TreePath) -> glib.boolean ---
		tree_view_get_visible_rect :: proc(tree_view: ^TreeView, visible_rect: ^GdkRectangle) ---
		tree_view_grid_lines_get_type :: proc() -> gobj.Type ---
		tree_view_insert_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn, position: glib.int_) -> glib.int_ ---
		tree_view_insert_column_with_attributes :: proc(tree_view: ^TreeView, position: glib.int_, title: cstring, cell: ^CellRenderer, #c_vararg var_args: ..any) -> glib.int_ ---
		tree_view_insert_column_with_data_func :: proc(tree_view: ^TreeView, position: glib.int_, title: cstring, cell: ^CellRenderer, func: TreeCellDataFunc, data: glib.pointer, dnotify: glib.DestroyNotify) -> glib.int_ ---
		tree_view_is_blank_at_pos :: proc(tree_view: ^TreeView, x: glib.int_, y: glib.int_, path: ^^TreePath, column: ^^TreeViewColumn, cell_x: ^glib.int_, cell_y: ^glib.int_) -> glib.boolean ---
		tree_view_is_rubber_banding_active :: proc(tree_view: ^TreeView) -> glib.boolean ---
		tree_view_map_expanded_rows :: proc(tree_view: ^TreeView, func: TreeViewMappingFunc, data: glib.pointer) ---
		tree_view_move_column_after :: proc(tree_view: ^TreeView, column: ^TreeViewColumn, base_column: ^TreeViewColumn) ---
		tree_view_new :: proc() -> ^Widget ---
		tree_view_new_with_model :: proc(model: ^TreeModel) -> ^Widget ---
		tree_view_remove_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) -> glib.int_ ---
		tree_view_row_activated :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn) ---
		tree_view_row_expanded :: proc(tree_view: ^TreeView, path: ^TreePath) -> glib.boolean ---
		tree_view_scroll_to_cell :: proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn, use_align: glib.boolean, row_align: glib.float, col_align: glib.float) ---
		tree_view_scroll_to_point :: proc(tree_view: ^TreeView, tree_x: glib.int_, tree_y: glib.int_) ---
		tree_view_set_activate_on_single_click :: proc(tree_view: ^TreeView, single: glib.boolean) ---
		tree_view_set_column_drag_function :: proc(tree_view: ^TreeView, func: TreeViewColumnDropFunc, user_data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_view_set_cursor :: proc(tree_view: ^TreeView, path: ^TreePath, focus_column: ^TreeViewColumn, start_editing: glib.boolean) ---
		tree_view_set_cursor_on_cell :: proc(tree_view: ^TreeView, path: ^TreePath, focus_column: ^TreeViewColumn, focus_cell: ^CellRenderer, start_editing: glib.boolean) ---
		tree_view_set_destroy_count_func :: proc(tree_view: ^TreeView, func: TreeDestroyCountFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_view_set_drag_dest_row :: proc(tree_view: ^TreeView, path: ^TreePath, pos: TreeViewDropPosition) ---
		tree_view_set_enable_search :: proc(tree_view: ^TreeView, enable_search: glib.boolean) ---
		tree_view_set_enable_tree_lines :: proc(tree_view: ^TreeView, enabled: glib.boolean) ---
		tree_view_set_expander_column :: proc(tree_view: ^TreeView, column: ^TreeViewColumn) ---
		tree_view_set_fixed_height_mode :: proc(tree_view: ^TreeView, enable: glib.boolean) ---
		tree_view_set_grid_lines :: proc(tree_view: ^TreeView, grid_lines: TreeViewGridLines) ---
		tree_view_set_hadjustment :: proc(tree_view: ^TreeView, adjustment: ^Adjustment) ---
		tree_view_set_headers_clickable :: proc(tree_view: ^TreeView, setting: glib.boolean) ---
		tree_view_set_headers_visible :: proc(tree_view: ^TreeView, headers_visible: glib.boolean) ---
		tree_view_set_hover_expand :: proc(tree_view: ^TreeView, expand: glib.boolean) ---
		tree_view_set_hover_selection :: proc(tree_view: ^TreeView, hover: glib.boolean) ---
		tree_view_set_level_indentation :: proc(tree_view: ^TreeView, indentation: glib.int_) ---
		tree_view_set_model :: proc(tree_view: ^TreeView, model: ^TreeModel) ---
		tree_view_set_reorderable :: proc(tree_view: ^TreeView, reorderable: glib.boolean) ---
		tree_view_set_row_separator_func :: proc(tree_view: ^TreeView, func: TreeViewRowSeparatorFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_view_set_rubber_banding :: proc(tree_view: ^TreeView, enable: glib.boolean) ---
		tree_view_set_rules_hint :: proc(tree_view: ^TreeView, setting: glib.boolean) ---
		tree_view_set_search_column :: proc(tree_view: ^TreeView, column: glib.int_) ---
		tree_view_set_search_entry :: proc(tree_view: ^TreeView, entry: ^Entry) ---
		tree_view_set_search_equal_func :: proc(tree_view: ^TreeView, search_equal_func: TreeViewSearchEqualFunc, search_user_data: glib.pointer, search_destroy: glib.DestroyNotify) ---
		tree_view_set_search_position_func :: proc(tree_view: ^TreeView, func: TreeViewSearchPositionFunc, data: glib.pointer, destroy: glib.DestroyNotify) ---
		tree_view_set_show_expanders :: proc(tree_view: ^TreeView, enabled: glib.boolean) ---
		tree_view_set_tooltip_cell :: proc(tree_view: ^TreeView, tooltip: ^Tooltip, path: ^TreePath, column: ^TreeViewColumn, cell: ^CellRenderer) ---
		tree_view_set_tooltip_column :: proc(tree_view: ^TreeView, column: glib.int_) ---
		tree_view_set_tooltip_row :: proc(tree_view: ^TreeView, tooltip: ^Tooltip, path: ^TreePath) ---
		tree_view_set_vadjustment :: proc(tree_view: ^TreeView, adjustment: ^Adjustment) ---
		tree_view_unset_rows_drag_dest :: proc(tree_view: ^TreeView) ---
		tree_view_unset_rows_drag_source :: proc(tree_view: ^TreeView) ---
		ui_manager_add_ui :: proc(manager: ^UIManager, merge_id: glib.uint_, path: cstring, name: cstring, action: cstring, type: UIManagerItemType, top: glib.boolean) ---
		ui_manager_add_ui_from_file :: proc(manager: ^UIManager, filename: cstring, error: ^^glib.Error) -> glib.uint_ ---
		ui_manager_add_ui_from_resource :: proc(manager: ^UIManager, resource_path: cstring, error: ^^glib.Error) -> glib.uint_ ---
		ui_manager_add_ui_from_string :: proc(manager: ^UIManager, buffer: cstring, length: glib.ssize, error: ^^glib.Error) -> glib.uint_ ---
		ui_manager_ensure_update :: proc(manager: ^UIManager) ---
		ui_manager_get_accel_group :: proc(manager: ^UIManager) -> ^AccelGroup ---
		ui_manager_get_action :: proc(manager: ^UIManager, path: cstring) -> ^Action ---
		ui_manager_get_action_groups :: proc(manager: ^UIManager) -> ^glib.List ---
		ui_manager_get_add_tearoffs :: proc(manager: ^UIManager) -> glib.boolean ---
		ui_manager_get_toplevels :: proc(manager: ^UIManager, types: UIManagerItemType) -> ^glib.SList ---
		ui_manager_get_type :: proc() -> gobj.Type ---
		ui_manager_get_ui :: proc(manager: ^UIManager) -> cstring ---
		ui_manager_get_widget :: proc(manager: ^UIManager, path: cstring) -> ^Widget ---
		ui_manager_insert_action_group :: proc(manager: ^UIManager, action_group: ^ActionGroup, pos: glib.int_) ---
		ui_manager_item_type_get_type :: proc() -> gobj.Type ---
		ui_manager_new :: proc() -> ^UIManager ---
		ui_manager_new_merge_id :: proc(manager: ^UIManager) -> glib.uint_ ---
		ui_manager_remove_action_group :: proc(manager: ^UIManager, action_group: ^ActionGroup) ---
		ui_manager_remove_ui :: proc(manager: ^UIManager, merge_id: glib.uint_) ---
		ui_manager_set_add_tearoffs :: proc(manager: ^UIManager, add_tearoffs: glib.boolean) ---
		unit_get_type :: proc() -> gobj.Type ---
		vbox_get_type :: proc() -> gobj.Type ---
		vbox_new :: proc(homogeneous: glib.boolean, spacing: glib.int_) -> ^Widget ---
		vbutton_box_get_type :: proc() -> gobj.Type ---
		vbutton_box_new :: proc() -> ^Widget ---
		viewport_get_bin_window :: proc(viewport: ^Viewport) -> ^GdkWindow ---
		viewport_get_hadjustment :: proc(viewport: ^Viewport) -> ^Adjustment ---
		viewport_get_shadow_type :: proc(viewport: ^Viewport) -> ShadowType ---
		viewport_get_type :: proc() -> gobj.Type ---
		viewport_get_vadjustment :: proc(viewport: ^Viewport) -> ^Adjustment ---
		viewport_get_view_window :: proc(viewport: ^Viewport) -> ^GdkWindow ---
		viewport_new :: proc(hadjustment: ^Adjustment, vadjustment: ^Adjustment) -> ^Widget ---
		viewport_set_hadjustment :: proc(viewport: ^Viewport, adjustment: ^Adjustment) ---
		viewport_set_shadow_type :: proc(viewport: ^Viewport, type: ShadowType) ---
		viewport_set_vadjustment :: proc(viewport: ^Viewport, adjustment: ^Adjustment) ---
		volume_button_get_type :: proc() -> gobj.Type ---
		volume_button_new :: proc() -> ^Widget ---
		vpaned_get_type :: proc() -> gobj.Type ---
		vpaned_new :: proc() -> ^Widget ---
		vscale_get_type :: proc() -> gobj.Type ---
		vscale_new :: proc(adjustment: ^Adjustment) -> ^Widget ---
		vscale_new_with_range :: proc(min: glib.double, max: glib.double, step: glib.double) -> ^Widget ---
		vscrollbar_get_type :: proc() -> gobj.Type ---
		vscrollbar_new :: proc(adjustment: ^Adjustment) -> ^Widget ---
		vseparator_get_type :: proc() -> gobj.Type ---
		vseparator_new :: proc() -> ^Widget ---
		widget_activate :: proc(widget: ^Widget) -> glib.boolean ---
		widget_add_accelerator :: proc(widget: ^Widget, accel_signal: cstring, accel_group: ^AccelGroup, accel_key: glib.uint_, accel_mods: GdkModifierType, accel_flags: AccelFlags) ---
		widget_add_device_events :: proc(widget: ^Widget, device: ^GdkDevice, events: GdkEventMask) ---
		widget_add_events :: proc(widget: ^Widget, events: glib.int_) ---
		widget_add_mnemonic_label :: proc(widget: ^Widget, label: ^Widget) ---
		widget_add_tick_callback :: proc(widget: ^Widget, callback: TickCallback, user_data: glib.pointer, notify: glib.DestroyNotify) -> glib.uint_ ---
		widget_can_activate_accel :: proc(widget: ^Widget, signal_id: glib.uint_) -> glib.boolean ---
		widget_child_focus :: proc(widget: ^Widget, direction: DirectionType) -> glib.boolean ---
		widget_child_notify :: proc(widget: ^Widget, child_property: cstring) ---
		widget_class_bind_template_callback_full :: proc(widget_class: ^WidgetClass, callback_name: cstring, callback_symbol: gobj.Callback) ---
		widget_class_bind_template_child_full :: proc(widget_class: ^WidgetClass, name: cstring, internal_child: glib.boolean, struct_offset: glib.ssize) ---
		widget_class_find_style_property :: proc(klass: ^WidgetClass, property_name: cstring) -> ^gobj.ParamSpec ---
		widget_class_get_css_name :: proc(widget_class: ^WidgetClass) -> cstring ---
		widget_class_install_style_property :: proc(klass: ^WidgetClass, pspec: ^gobj.ParamSpec) ---
		widget_class_install_style_property_parser :: proc(klass: ^WidgetClass, pspec: ^gobj.ParamSpec, parser: RcPropertyParser) ---
		widget_class_list_style_properties :: proc(klass: ^WidgetClass, n_properties: ^glib.uint_) -> ^^gobj.ParamSpec ---
		widget_class_path :: proc(widget: ^Widget, path_length: ^glib.uint_, path: ^cstring, path_reversed: ^cstring) ---
		widget_class_set_accessible_role :: proc(widget_class: ^WidgetClass, role: atk.Role) ---
		widget_class_set_accessible_type :: proc(widget_class: ^WidgetClass, type: gobj.Type) ---
		widget_class_set_connect_func :: proc(widget_class: ^WidgetClass, connect_func: BuilderConnectFunc, connect_data: glib.pointer, connect_data_destroy: glib.DestroyNotify) ---
		widget_class_set_css_name :: proc(widget_class: ^WidgetClass, name: cstring) ---
		widget_class_set_template :: proc(widget_class: ^WidgetClass, template_bytes: ^glib.Bytes) ---
		widget_class_set_template_from_resource :: proc(widget_class: ^WidgetClass, resource_name: cstring) ---
		widget_compute_expand :: proc(widget: ^Widget, orientation: Orientation) -> glib.boolean ---
		widget_create_pango_context :: proc(widget: ^Widget) -> ^pango.Context ---
		widget_create_pango_layout :: proc(widget: ^Widget, text: cstring) -> ^pango.Layout ---
		widget_destroy :: proc(widget: ^Widget) ---
		widget_destroyed :: proc(widget: ^Widget, widget_pointer: ^^Widget) ---
		widget_device_is_shadowed :: proc(widget: ^Widget, device: ^GdkDevice) -> glib.boolean ---
		widget_draw :: proc(widget: ^Widget, cr: ^cairo.context_t) ---
		widget_ensure_style :: proc(widget: ^Widget) ---
		widget_error_bell :: proc(widget: ^Widget) ---
		widget_event :: proc(widget: ^Widget, event: ^GdkEvent) -> glib.boolean ---
		widget_freeze_child_notify :: proc(widget: ^Widget) ---
		widget_get_accessible :: proc(widget: ^Widget) -> ^atk.Object ---
		widget_get_action_group :: proc(widget: ^Widget, prefix: cstring) -> ^gio.ActionGroup ---
		widget_get_allocated_baseline :: proc(widget: ^Widget) -> i32 ---
		widget_get_allocated_height :: proc(widget: ^Widget) -> i32 ---
		widget_get_allocated_size :: proc(widget: ^Widget, allocation: ^Allocation, baseline: ^i32) ---
		widget_get_allocated_width :: proc(widget: ^Widget) -> i32 ---
		widget_get_allocation :: proc(widget: ^Widget, allocation: ^Allocation) ---
		widget_get_ancestor :: proc(widget: ^Widget, widget_type: gobj.Type) -> ^Widget ---
		widget_get_app_paintable :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_can_default :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_can_focus :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_child_requisition :: proc(widget: ^Widget, requisition: ^Requisition) ---
		widget_get_child_visible :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_clip :: proc(widget: ^Widget, clip: ^Allocation) ---
		widget_get_clipboard :: proc(widget: ^Widget, selection: GdkAtom) -> ^Clipboard ---
		widget_get_composite_name :: proc(widget: ^Widget) -> cstring ---
		widget_get_default_direction :: proc() -> TextDirection ---
		widget_get_default_style :: proc() -> ^Style ---
		widget_get_device_enabled :: proc(widget: ^Widget, device: ^GdkDevice) -> glib.boolean ---
		widget_get_device_events :: proc(widget: ^Widget, device: ^GdkDevice) -> GdkEventMask ---
		widget_get_direction :: proc(widget: ^Widget) -> TextDirection ---
		widget_get_display :: proc(widget: ^Widget) -> ^GdkDisplay ---
		widget_get_double_buffered :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_events :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_focus_on_click :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_font_map :: proc(widget: ^Widget) -> ^pango.FontMap ---
		widget_get_font_options :: proc(widget: ^Widget) -> ^cairo.font_options_t ---
		widget_get_frame_clock :: proc(widget: ^Widget) -> ^GdkFrameClock ---
		widget_get_halign :: proc(widget: ^Widget) -> Align ---
		widget_get_has_tooltip :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_has_window :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_hexpand :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_hexpand_set :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_mapped :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_margin_bottom :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_margin_end :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_margin_left :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_margin_right :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_margin_start :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_margin_top :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_modifier_mask :: proc(widget: ^Widget, intent: GdkModifierIntent) -> GdkModifierType ---
		widget_get_modifier_style :: proc(widget: ^Widget) -> ^RcStyle ---
		widget_get_name :: proc(widget: ^Widget) -> cstring ---
		widget_get_no_show_all :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_opacity :: proc(widget: ^Widget) -> f64 ---
		widget_get_pango_context :: proc(widget: ^Widget) -> ^pango.Context ---
		widget_get_parent :: proc(widget: ^Widget) -> ^Widget ---
		widget_get_parent_window :: proc(widget: ^Widget) -> ^GdkWindow ---
		widget_get_path :: proc(widget: ^Widget) -> ^WidgetPath ---
		widget_get_pointer :: proc(widget: ^Widget, x: ^glib.int_, y: ^glib.int_) ---
		widget_get_preferred_height :: proc(widget: ^Widget, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		widget_get_preferred_height_and_baseline_for_width :: proc(widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_, minimum_baseline: ^glib.int_, natural_baseline: ^glib.int_) ---
		widget_get_preferred_height_for_width :: proc(widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_) ---
		widget_get_preferred_size :: proc(widget: ^Widget, minimum_size: ^Requisition, natural_size: ^Requisition) ---
		widget_get_preferred_width :: proc(widget: ^Widget, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		widget_get_preferred_width_for_height :: proc(widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_) ---
		widget_get_realized :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_receives_default :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_request_mode :: proc(widget: ^Widget) -> SizeRequestMode ---
		widget_get_requisition :: proc(widget: ^Widget, requisition: ^Requisition) ---
		widget_get_root_window :: proc(widget: ^Widget) -> ^GdkWindow ---
		widget_get_scale_factor :: proc(widget: ^Widget) -> glib.int_ ---
		widget_get_screen :: proc(widget: ^Widget) -> ^GdkScreen ---
		widget_get_sensitive :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_settings :: proc(widget: ^Widget) -> ^Settings ---
		widget_get_size_request :: proc(widget: ^Widget, width: ^glib.int_, height: ^glib.int_) ---
		widget_get_state :: proc(widget: ^Widget) -> StateType ---
		widget_get_state_flags :: proc(widget: ^Widget) -> StateFlags ---
		widget_get_style :: proc(widget: ^Widget) -> ^Style ---
		widget_get_style_context :: proc(widget: ^Widget) -> ^StyleContext ---
		widget_get_support_multidevice :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_template_child :: proc(widget: ^Widget, widget_type: gobj.Type, name: cstring) -> ^gobj.Object ---
		widget_get_tooltip_markup :: proc(widget: ^Widget) -> cstring ---
		widget_get_tooltip_text :: proc(widget: ^Widget) -> cstring ---
		widget_get_tooltip_window :: proc(widget: ^Widget) -> ^Window ---
		widget_get_toplevel :: proc(widget: ^Widget) -> ^Widget ---
		widget_get_type :: proc() -> gobj.Type ---
		widget_get_valign :: proc(widget: ^Widget) -> Align ---
		widget_get_valign_with_baseline :: proc(widget: ^Widget) -> Align ---
		widget_get_vexpand :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_vexpand_set :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_visible :: proc(widget: ^Widget) -> glib.boolean ---
		widget_get_visual :: proc(widget: ^Widget) -> ^GdkVisual ---
		widget_get_window :: proc(widget: ^Widget) -> ^GdkWindow ---
		widget_grab_default :: proc(widget: ^Widget) ---
		widget_grab_focus :: proc(widget: ^Widget) ---
		widget_has_default :: proc(widget: ^Widget) -> glib.boolean ---
		widget_has_focus :: proc(widget: ^Widget) -> glib.boolean ---
		widget_has_grab :: proc(widget: ^Widget) -> glib.boolean ---
		widget_has_rc_style :: proc(widget: ^Widget) -> glib.boolean ---
		widget_has_screen :: proc(widget: ^Widget) -> glib.boolean ---
		widget_has_visible_focus :: proc(widget: ^Widget) -> glib.boolean ---
		widget_help_type_get_type :: proc() -> gobj.Type ---
		widget_hide :: proc(widget: ^Widget) ---
		widget_hide_on_delete :: proc(widget: ^Widget) -> glib.boolean ---
		widget_in_destruction :: proc(widget: ^Widget) -> glib.boolean ---
		widget_init_template :: proc(widget: ^Widget) ---
		widget_input_shape_combine_region :: proc(widget: ^Widget, region: ^cairo.region_t) ---
		widget_insert_action_group :: proc(widget: ^Widget, name: cstring, group: ^gio.ActionGroup) ---
		widget_intersect :: proc(widget: ^Widget, area: ^GdkRectangle, intersection: ^GdkRectangle) -> glib.boolean ---
		widget_is_ancestor :: proc(widget: ^Widget, ancestor: ^Widget) -> glib.boolean ---
		widget_is_composited :: proc(widget: ^Widget) -> glib.boolean ---
		widget_is_drawable :: proc(widget: ^Widget) -> glib.boolean ---
		widget_is_focus :: proc(widget: ^Widget) -> glib.boolean ---
		widget_is_sensitive :: proc(widget: ^Widget) -> glib.boolean ---
		widget_is_toplevel :: proc(widget: ^Widget) -> glib.boolean ---
		widget_is_visible :: proc(widget: ^Widget) -> glib.boolean ---
		widget_keynav_failed :: proc(widget: ^Widget, direction: DirectionType) -> glib.boolean ---
		widget_list_accel_closures :: proc(widget: ^Widget) -> ^glib.List ---
		widget_list_action_prefixes :: proc(widget: ^Widget) -> ^cstring ---
		widget_list_mnemonic_labels :: proc(widget: ^Widget) -> ^glib.List ---
		widget_map :: proc(widget: ^Widget) ---
		widget_mnemonic_activate :: proc(widget: ^Widget, group_cycling: glib.boolean) -> glib.boolean ---
		widget_modify_base :: proc(widget: ^Widget, state: StateType, color: ^GdkColor) ---
		widget_modify_bg :: proc(widget: ^Widget, state: StateType, color: ^GdkColor) ---
		widget_modify_cursor :: proc(widget: ^Widget, primary: ^GdkColor, secondary: ^GdkColor) ---
		widget_modify_fg :: proc(widget: ^Widget, state: StateType, color: ^GdkColor) ---
		widget_modify_font :: proc(widget: ^Widget, font_desc: ^pango.FontDescription) ---
		widget_modify_style :: proc(widget: ^Widget, style: ^RcStyle) ---
		widget_modify_text :: proc(widget: ^Widget, state: StateType, color: ^GdkColor) ---
		widget_new :: proc(type: gobj.Type, first_property_name: cstring, #c_vararg var_args: ..any) -> ^Widget ---
		widget_override_background_color :: proc(widget: ^Widget, state: StateFlags, color: ^GdkRGBA) ---
		widget_override_color :: proc(widget: ^Widget, state: StateFlags, color: ^GdkRGBA) ---
		widget_override_cursor :: proc(widget: ^Widget, cursor: ^GdkRGBA, secondary_cursor: ^GdkRGBA) ---
		widget_override_font :: proc(widget: ^Widget, font_desc: ^pango.FontDescription) ---
		widget_override_symbolic_color :: proc(widget: ^Widget, name: cstring, color: ^GdkRGBA) ---
		widget_path :: proc(widget: ^Widget, path_length: ^glib.uint_, path: ^cstring, path_reversed: ^cstring) ---
		widget_path_append_for_widget :: proc(path: ^WidgetPath, widget: ^Widget) -> glib.int_ ---
		widget_path_append_type :: proc(path: ^WidgetPath, type: gobj.Type) -> glib.int_ ---
		widget_path_append_with_siblings :: proc(path: ^WidgetPath, siblings: ^WidgetPath, sibling_index: glib.uint_) -> glib.int_ ---
		widget_path_copy :: proc(path: ^WidgetPath) -> ^WidgetPath ---
		widget_path_free :: proc(path: ^WidgetPath) ---
		widget_path_get_object_type :: proc(path: ^WidgetPath) -> gobj.Type ---
		widget_path_get_type :: proc() -> gobj.Type ---
		widget_path_has_parent :: proc(path: ^WidgetPath, type: gobj.Type) -> glib.boolean ---
		widget_path_is_type :: proc(path: ^WidgetPath, type: gobj.Type) -> glib.boolean ---
		widget_path_iter_add_class :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) ---
		widget_path_iter_add_region :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring, flags: RegionFlags) ---
		widget_path_iter_clear_classes :: proc(path: ^WidgetPath, pos: glib.int_) ---
		widget_path_iter_clear_regions :: proc(path: ^WidgetPath, pos: glib.int_) ---
		widget_path_iter_get_name :: proc(path: ^WidgetPath, pos: glib.int_) -> cstring ---
		widget_path_iter_get_object_name :: proc(path: ^WidgetPath, pos: glib.int_) -> cstring ---
		widget_path_iter_get_object_type :: proc(path: ^WidgetPath, pos: glib.int_) -> gobj.Type ---
		widget_path_iter_get_sibling_index :: proc(path: ^WidgetPath, pos: glib.int_) -> glib.uint_ ---
		widget_path_iter_get_siblings :: proc(path: ^WidgetPath, pos: glib.int_) -> ^WidgetPath ---
		widget_path_iter_get_state :: proc(path: ^WidgetPath, pos: glib.int_) -> StateFlags ---
		widget_path_iter_has_class :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) -> glib.boolean ---
		widget_path_iter_has_name :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) -> glib.boolean ---
		widget_path_iter_has_qclass :: proc(path: ^WidgetPath, pos: glib.int_, qname: glib.Quark) -> glib.boolean ---
		widget_path_iter_has_qname :: proc(path: ^WidgetPath, pos: glib.int_, qname: glib.Quark) -> glib.boolean ---
		widget_path_iter_has_qregion :: proc(path: ^WidgetPath, pos: glib.int_, qname: glib.Quark, flags: ^RegionFlags) -> glib.boolean ---
		widget_path_iter_has_region :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring, flags: ^RegionFlags) -> glib.boolean ---
		widget_path_iter_list_classes :: proc(path: ^WidgetPath, pos: glib.int_) -> ^glib.SList ---
		widget_path_iter_list_regions :: proc(path: ^WidgetPath, pos: glib.int_) -> ^glib.SList ---
		widget_path_iter_remove_class :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) ---
		widget_path_iter_remove_region :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) ---
		widget_path_iter_set_name :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) ---
		widget_path_iter_set_object_name :: proc(path: ^WidgetPath, pos: glib.int_, name: cstring) ---
		widget_path_iter_set_object_type :: proc(path: ^WidgetPath, pos: glib.int_, type: gobj.Type) ---
		widget_path_iter_set_state :: proc(path: ^WidgetPath, pos: glib.int_, state: StateFlags) ---
		widget_path_length :: proc(path: ^WidgetPath) -> glib.int_ ---
		widget_path_new :: proc() -> ^WidgetPath ---
		widget_path_prepend_type :: proc(path: ^WidgetPath, type: gobj.Type) ---
		widget_path_ref :: proc(path: ^WidgetPath) -> ^WidgetPath ---
		widget_path_to_string :: proc(path: ^WidgetPath) -> cstring ---
		widget_path_unref :: proc(path: ^WidgetPath) ---
		widget_pop_composite_child :: proc() ---
		widget_push_composite_child :: proc() ---
		widget_queue_allocate :: proc(widget: ^Widget) ---
		widget_queue_compute_expand :: proc(widget: ^Widget) ---
		widget_queue_draw :: proc(widget: ^Widget) ---
		widget_queue_draw_area :: proc(widget: ^Widget, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_) ---
		widget_queue_draw_region :: proc(widget: ^Widget, region: ^cairo.region_t) ---
		widget_queue_resize :: proc(widget: ^Widget) ---
		widget_queue_resize_no_redraw :: proc(widget: ^Widget) ---
		widget_realize :: proc(widget: ^Widget) ---
		widget_region_intersect :: proc(widget: ^Widget, region: ^cairo.region_t) -> ^cairo.region_t ---
		widget_register_window :: proc(widget: ^Widget, window: ^GdkWindow) ---
		widget_remove_accelerator :: proc(widget: ^Widget, accel_group: ^AccelGroup, accel_key: glib.uint_, accel_mods: GdkModifierType) -> glib.boolean ---
		widget_remove_mnemonic_label :: proc(widget: ^Widget, label: ^Widget) ---
		widget_remove_tick_callback :: proc(widget: ^Widget, id: glib.uint_) ---
		widget_render_icon :: proc(widget: ^Widget, stock_id: cstring, size_p: IconSize, detail: cstring) -> ^pixbuf.Pixbuf ---
		widget_render_icon_pixbuf :: proc(widget: ^Widget, stock_id: cstring, size_p: IconSize) -> ^pixbuf.Pixbuf ---
		widget_reparent :: proc(widget: ^Widget, new_parent: ^Widget) ---
		widget_reset_rc_styles :: proc(widget: ^Widget) ---
		widget_reset_style :: proc(widget: ^Widget) ---
		widget_send_expose :: proc(widget: ^Widget, event: ^GdkEvent) -> glib.int_ ---
		widget_send_focus_change :: proc(widget: ^Widget, event: ^GdkEvent) -> glib.boolean ---
		widget_set_accel_path :: proc(widget: ^Widget, accel_path: cstring, accel_group: ^AccelGroup) ---
		widget_set_allocation :: proc(widget: ^Widget, allocation: ^Allocation) ---
		widget_set_app_paintable :: proc(widget: ^Widget, app_paintable: glib.boolean) ---
		widget_set_can_default :: proc(widget: ^Widget, can_default: glib.boolean) ---
		widget_set_can_focus :: proc(widget: ^Widget, can_focus: glib.boolean) ---
		widget_set_child_visible :: proc(widget: ^Widget, is_visible: glib.boolean) ---
		widget_set_clip :: proc(widget: ^Widget, clip: ^Allocation) ---
		widget_set_composite_name :: proc(widget: ^Widget, name: cstring) ---
		widget_set_default_direction :: proc(dir: TextDirection) ---
		widget_set_device_enabled :: proc(widget: ^Widget, device: ^GdkDevice, enabled: glib.boolean) ---
		widget_set_device_events :: proc(widget: ^Widget, device: ^GdkDevice, events: GdkEventMask) ---
		widget_set_direction :: proc(widget: ^Widget, dir: TextDirection) ---
		widget_set_double_buffered :: proc(widget: ^Widget, double_buffered: glib.boolean) ---
		widget_set_events :: proc(widget: ^Widget, events: glib.int_) ---
		widget_set_focus_on_click :: proc(widget: ^Widget, focus_on_click: glib.boolean) ---
		widget_set_font_map :: proc(widget: ^Widget, font_map: ^pango.FontMap) ---
		widget_set_font_options :: proc(widget: ^Widget, options: ^cairo.font_options_t) ---
		widget_set_halign :: proc(widget: ^Widget, align: Align) ---
		widget_set_has_tooltip :: proc(widget: ^Widget, has_tooltip: glib.boolean) ---
		widget_set_has_window :: proc(widget: ^Widget, has_window: glib.boolean) ---
		widget_set_hexpand :: proc(widget: ^Widget, expand: glib.boolean) ---
		widget_set_hexpand_set :: proc(widget: ^Widget, set: glib.boolean) ---
		widget_set_mapped :: proc(widget: ^Widget, mapped: glib.boolean) ---
		widget_set_margin_bottom :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_margin_end :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_margin_left :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_margin_right :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_margin_start :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_margin_top :: proc(widget: ^Widget, margin: glib.int_) ---
		widget_set_name :: proc(widget: ^Widget, name: cstring) ---
		widget_set_no_show_all :: proc(widget: ^Widget, no_show_all: glib.boolean) ---
		widget_set_opacity :: proc(widget: ^Widget, opacity: f64) ---
		widget_set_parent :: proc(widget: ^Widget, parent: ^Widget) ---
		widget_set_parent_window :: proc(widget: ^Widget, parent_window: ^GdkWindow) ---
		widget_set_realized :: proc(widget: ^Widget, realized: glib.boolean) ---
		widget_set_receives_default :: proc(widget: ^Widget, receives_default: glib.boolean) ---
		widget_set_redraw_on_allocate :: proc(widget: ^Widget, redraw_on_allocate: glib.boolean) ---
		widget_set_sensitive :: proc(widget: ^Widget, sensitive: glib.boolean) ---
		widget_set_size_request :: proc(widget: ^Widget, width: glib.int_, height: glib.int_) ---
		widget_set_state :: proc(widget: ^Widget, state: StateType) ---
		widget_set_state_flags :: proc(widget: ^Widget, flags: StateFlags, clear: glib.boolean) ---
		widget_set_style :: proc(widget: ^Widget, style: ^Style) ---
		widget_set_support_multidevice :: proc(widget: ^Widget, support_multidevice: glib.boolean) ---
		widget_set_tooltip_markup :: proc(widget: ^Widget, markup: cstring) ---
		widget_set_tooltip_text :: proc(widget: ^Widget, text: cstring) ---
		widget_set_tooltip_window :: proc(widget: ^Widget, custom_window: ^Window) ---
		widget_set_valign :: proc(widget: ^Widget, align: Align) ---
		widget_set_vexpand :: proc(widget: ^Widget, expand: glib.boolean) ---
		widget_set_vexpand_set :: proc(widget: ^Widget, set: glib.boolean) ---
		widget_set_visible :: proc(widget: ^Widget, visible: glib.boolean) ---
		widget_set_visual :: proc(widget: ^Widget, visual: ^GdkVisual) ---
		widget_set_window :: proc(widget: ^Widget, window: ^GdkWindow) ---
		widget_shape_combine_region :: proc(widget: ^Widget, region: ^cairo.region_t) ---
		widget_show :: proc(widget: ^Widget) ---
		widget_show_all :: proc(widget: ^Widget) ---
		widget_show_now :: proc(widget: ^Widget) ---
		widget_size_allocate :: proc(widget: ^Widget, allocation: ^Allocation) ---
		widget_size_allocate_with_baseline :: proc(widget: ^Widget, allocation: ^Allocation, baseline: glib.int_) ---
		widget_size_request :: proc(widget: ^Widget, requisition: ^Requisition) ---
		widget_style_attach :: proc(widget: ^Widget) ---
		widget_style_get :: proc(widget: ^Widget, first_property_name: cstring, #c_vararg var_args: ..any) ---
		widget_style_get_property :: proc(widget: ^Widget, property_name: cstring, value: ^gobj.Value) ---
		widget_thaw_child_notify :: proc(widget: ^Widget) ---
		widget_translate_coordinates :: proc(src_widget: ^Widget, dest_widget: ^Widget, src_x: glib.int_, src_y: glib.int_, dest_x: ^glib.int_, dest_y: ^glib.int_) -> glib.boolean ---
		widget_trigger_tooltip_query :: proc(widget: ^Widget) ---
		widget_unmap :: proc(widget: ^Widget) ---
		widget_unparent :: proc(widget: ^Widget) ---
		widget_unrealize :: proc(widget: ^Widget) ---
		widget_unregister_window :: proc(widget: ^Widget, window: ^GdkWindow) ---
		widget_unset_state_flags :: proc(widget: ^Widget, flags: StateFlags) ---
		window_activate_default :: proc(window: ^Window) -> glib.boolean ---
		window_activate_focus :: proc(window: ^Window) -> glib.boolean ---
		window_activate_key :: proc(window: ^Window, event: ^GdkEventKey) -> glib.boolean ---
		window_add_accel_group :: proc(window: ^Window, accel_group: ^AccelGroup) ---
		window_add_mnemonic :: proc(window: ^Window, keyval: glib.uint_, target: ^Widget) ---
		window_begin_move_drag :: proc(window: ^Window, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		window_begin_resize_drag :: proc(window: ^Window, edge: GdkWindowEdge, button: glib.int_, root_x: glib.int_, root_y: glib.int_, timestamp: glib.uint32) ---
		window_close :: proc(window: ^Window) ---
		window_deiconify :: proc(window: ^Window) ---
		window_fullscreen :: proc(window: ^Window) ---
		window_fullscreen_on_monitor :: proc(window: ^Window, screen: ^GdkScreen, monitor: glib.int_) ---
		window_get_accept_focus :: proc(window: ^Window) -> glib.boolean ---
		window_get_application :: proc(window: ^Window) -> ^Application ---
		window_get_attached_to :: proc(window: ^Window) -> ^Widget ---
		window_get_decorated :: proc(window: ^Window) -> glib.boolean ---
		window_get_default_icon_list :: proc() -> ^glib.List ---
		window_get_default_icon_name :: proc() -> cstring ---
		window_get_default_size :: proc(window: ^Window, width: ^glib.int_, height: ^glib.int_) ---
		window_get_default_widget :: proc(window: ^Window) -> ^Widget ---
		window_get_deletable :: proc(window: ^Window) -> glib.boolean ---
		window_get_destroy_with_parent :: proc(window: ^Window) -> glib.boolean ---
		window_get_focus :: proc(window: ^Window) -> ^Widget ---
		window_get_focus_on_map :: proc(window: ^Window) -> glib.boolean ---
		window_get_focus_visible :: proc(window: ^Window) -> glib.boolean ---
		window_get_gravity :: proc(window: ^Window) -> GdkGravity ---
		window_get_group :: proc(window: ^Window) -> ^WindowGroup ---
		window_get_has_resize_grip :: proc(window: ^Window) -> glib.boolean ---
		window_get_hide_titlebar_when_maximized :: proc(window: ^Window) -> glib.boolean ---
		window_get_icon :: proc(window: ^Window) -> ^pixbuf.Pixbuf ---
		window_get_icon_list :: proc(window: ^Window) -> ^glib.List ---
		window_get_icon_name :: proc(window: ^Window) -> cstring ---
		window_get_mnemonic_modifier :: proc(window: ^Window) -> GdkModifierType ---
		window_get_mnemonics_visible :: proc(window: ^Window) -> glib.boolean ---
		window_get_modal :: proc(window: ^Window) -> glib.boolean ---
		window_get_opacity :: proc(window: ^Window) -> glib.double ---
		window_get_position :: proc(window: ^Window, root_x: ^glib.int_, root_y: ^glib.int_) ---
		window_get_resizable :: proc(window: ^Window) -> glib.boolean ---
		window_get_resize_grip_area :: proc(window: ^Window, rect: ^GdkRectangle) -> glib.boolean ---
		window_get_role :: proc(window: ^Window) -> cstring ---
		window_get_screen :: proc(window: ^Window) -> ^GdkScreen ---
		window_get_size :: proc(window: ^Window, width: ^glib.int_, height: ^glib.int_) ---
		window_get_skip_pager_hint :: proc(window: ^Window) -> glib.boolean ---
		window_get_skip_taskbar_hint :: proc(window: ^Window) -> glib.boolean ---
		window_get_title :: proc(window: ^Window) -> cstring ---
		window_get_titlebar :: proc(window: ^Window) -> ^Widget ---
		window_get_transient_for :: proc(window: ^Window) -> ^Window ---
		window_get_type :: proc() -> gobj.Type ---
		window_get_type_hint :: proc(window: ^Window) -> GdkWindowTypeHint ---
		window_get_urgency_hint :: proc(window: ^Window) -> glib.boolean ---
		window_get_window_type :: proc(window: ^Window) -> WindowType ---
		window_group_add_window :: proc(window_group: ^WindowGroup, window: ^Window) ---
		window_group_get_current_device_grab :: proc(window_group: ^WindowGroup, device: ^GdkDevice) -> ^Widget ---
		window_group_get_current_grab :: proc(window_group: ^WindowGroup) -> ^Widget ---
		window_group_get_type :: proc() -> gobj.Type ---
		window_group_list_windows :: proc(window_group: ^WindowGroup) -> ^glib.List ---
		window_group_new :: proc() -> ^WindowGroup ---
		window_group_remove_window :: proc(window_group: ^WindowGroup, window: ^Window) ---
		window_has_group :: proc(window: ^Window) -> glib.boolean ---
		window_has_toplevel_focus :: proc(window: ^Window) -> glib.boolean ---
		window_iconify :: proc(window: ^Window) ---
		window_is_active :: proc(window: ^Window) -> glib.boolean ---
		window_is_maximized :: proc(window: ^Window) -> glib.boolean ---
		window_list_toplevels :: proc() -> ^glib.List ---
		window_maximize :: proc(window: ^Window) ---
		window_mnemonic_activate :: proc(window: ^Window, keyval: glib.uint_, modifier: GdkModifierType) -> glib.boolean ---
		window_move :: proc(window: ^Window, x: glib.int_, y: glib.int_) ---
		window_new :: proc(type: WindowType) -> ^Widget ---
		window_parse_geometry :: proc(window: ^Window, geometry: cstring) -> glib.boolean ---
		window_position_get_type :: proc() -> gobj.Type ---
		window_present :: proc(window: ^Window) ---
		window_present_with_time :: proc(window: ^Window, timestamp: glib.uint32) ---
		window_propagate_key_event :: proc(window: ^Window, event: ^GdkEventKey) -> glib.boolean ---
		window_remove_accel_group :: proc(window: ^Window, accel_group: ^AccelGroup) ---
		window_remove_mnemonic :: proc(window: ^Window, keyval: glib.uint_, target: ^Widget) ---
		window_reshow_with_initial_size :: proc(window: ^Window) ---
		window_resize :: proc(window: ^Window, width: glib.int_, height: glib.int_) ---
		window_resize_grip_is_visible :: proc(window: ^Window) -> glib.boolean ---
		window_resize_to_geometry :: proc(window: ^Window, width: glib.int_, height: glib.int_) ---
		window_set_accept_focus :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_application :: proc(window: ^Window, application: ^Application) ---
		window_set_attached_to :: proc(window: ^Window, attach_widget: ^Widget) ---
		window_set_auto_startup_notification :: proc(setting: glib.boolean) ---
		window_set_decorated :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_default :: proc(window: ^Window, default_widget: ^Widget) ---
		window_set_default_geometry :: proc(window: ^Window, width: glib.int_, height: glib.int_) ---
		window_set_default_icon :: proc(icon: ^pixbuf.Pixbuf) ---
		window_set_default_icon_from_file :: proc(filename: cstring, err: ^^glib.Error) -> glib.boolean ---
		window_set_default_icon_list :: proc(list: ^glib.List) ---
		window_set_default_icon_name :: proc(name: cstring) ---
		window_set_default_size :: proc(window: ^Window, width: glib.int_, height: glib.int_) ---
		window_set_deletable :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_destroy_with_parent :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_focus :: proc(window: ^Window, focus: ^Widget) ---
		window_set_focus_on_map :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_focus_visible :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_geometry_hints :: proc(window: ^Window, geometry_widget: ^Widget, geometry: ^GdkGeometry, geom_mask: GdkWindowHints) ---
		window_set_gravity :: proc(window: ^Window, gravity: GdkGravity) ---
		window_set_has_resize_grip :: proc(window: ^Window, value: glib.boolean) ---
		window_set_has_user_ref_count :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_hide_titlebar_when_maximized :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_icon :: proc(window: ^Window, icon: ^pixbuf.Pixbuf) ---
		window_set_icon_from_file :: proc(window: ^Window, filename: cstring, err: ^^glib.Error) -> glib.boolean ---
		window_set_icon_list :: proc(window: ^Window, list: ^glib.List) ---
		window_set_icon_name :: proc(window: ^Window, name: cstring) ---
		window_set_interactive_debugging :: proc(enable: glib.boolean) ---
		window_set_keep_above :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_keep_below :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_mnemonic_modifier :: proc(window: ^Window, modifier: GdkModifierType) ---
		window_set_mnemonics_visible :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_modal :: proc(window: ^Window, modal: glib.boolean) ---
		window_set_opacity :: proc(window: ^Window, opacity: glib.double) ---
		window_set_position :: proc(window: ^Window, position: WindowPosition) ---
		window_set_resizable :: proc(window: ^Window, resizable: glib.boolean) ---
		window_set_role :: proc(window: ^Window, role: cstring) ---
		window_set_screen :: proc(window: ^Window, screen: ^GdkScreen) ---
		window_set_skip_pager_hint :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_skip_taskbar_hint :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_startup_id :: proc(window: ^Window, startup_id: cstring) ---
		window_set_title :: proc(window: ^Window, title: cstring) ---
		window_set_titlebar :: proc(window: ^Window, titlebar: ^Widget) ---
		window_set_transient_for :: proc(window: ^Window, parent: ^Window) ---
		window_set_type_hint :: proc(window: ^Window, hint: GdkWindowTypeHint) ---
		window_set_urgency_hint :: proc(window: ^Window, setting: glib.boolean) ---
		window_set_wmclass :: proc(window: ^Window, wmclass_name: cstring, wmclass_class: cstring) ---
		window_stick :: proc(window: ^Window) ---
		window_type_get_type :: proc() -> gobj.Type ---
		window_unfullscreen :: proc(window: ^Window) ---
		window_unmaximize :: proc(window: ^Window) ---
		window_unstick :: proc(window: ^Window) ---
		wrap_mode_get_type :: proc() -> gobj.Type ---

	types
		AboutDialog :: struct {parent_instance: Dialog, priv: ^AboutDialogPrivate}
		AboutDialogClass :: struct {parent_class: DialogClass, activate_link: activate_link_func_ptr_anon_131, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_132, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_133, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_134, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_135}
		AboutDialogPrivate :: struct #packed {}
		AccelFlags :: bit_set[AccelFlagsBit]
		AccelFlagsBit :: enum u32 {ACCEL_VISIBLE = 0, ACCEL_LOCKED = 1}
		AccelGroup :: struct {parent: gobj.Object, priv: ^AccelGroupPrivate}
		AccelGroupActivate :: #type proc(accel_group: ^AccelGroup, acceleratable: ^gobj.Object, keyval: glib.uint_, modifier: GdkModifierType) -> glib.boolean
		AccelGroupClass :: struct {parent_class: gobj.ObjectClass, accel_changed: accel_changed_func_ptr_anon_12, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_13, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_14, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_15, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_16}
		AccelGroupEntry :: struct {key: AccelKey, closure: ^gobj.Closure, accel_path_quark: glib.Quark}
		AccelGroupFindFunc :: #type proc(key: ^AccelKey, closure: ^gobj.Closure, data: glib.pointer) -> glib.boolean
		AccelGroupPrivate :: struct #packed {}
		AccelKey :: struct {accel_key: glib.uint_, accel_mods: GdkModifierType, accel_flags: [2]u8}
		AccelLabel :: struct {label: Label, priv: ^AccelLabelPrivate}
		AccelLabelClass :: struct {parent_class: LabelClass, signal_quote1: cstring, signal_quote2: cstring, mod_name_shift: cstring, mod_name_control: cstring, mod_name_alt: cstring, mod_separator: cstring, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_156, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_157, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_158, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_159}
		AccelLabelPrivate :: struct #packed {}
		AccelMap :: struct #packed {}
		AccelMapClass :: struct #packed {}
		AccelMapForeach :: #type proc(data: glib.pointer, accel_path: cstring, accel_key: glib.uint_, accel_mods: GdkModifierType, changed: glib.boolean)
		Accessible :: struct {parent: atk.Object, priv: ^AccessiblePrivate}
		AccessibleClass :: struct {parent_class: atk.ObjectClass, connect_widget_destroyed: connect_widget_destroyed_func_ptr_anon_160, widget_set: widget_set_func_ptr_anon_161, widget_unset: widget_unset_func_ptr_anon_162, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_163, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_164}
		AccessiblePrivate :: struct #packed {}
		Action :: struct {object: gobj.Object, private_data: ^ActionPrivate}
		ActionBar :: struct {bin: Bin}
		ActionBarClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_169, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_170, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_171, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_172}
		ActionBarPrivate :: struct #packed {}
		ActionClass :: struct {parent_class: gobj.ObjectClass, activate: activate_func_ptr_anon_1091, menu_item_type: gobj.Type, toolbar_item_type: gobj.Type, create_menu_item: create_menu_item_func_ptr_anon_1092, create_tool_item: create_tool_item_func_ptr_anon_1093, connect_proxy: connect_proxy_func_ptr_anon_1094, disconnect_proxy: disconnect_proxy_func_ptr_anon_1095, create_menu: create_menu_func_ptr_anon_1096, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1097, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1098, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1099, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1100}
		ActionEntry :: struct {name: cstring, stock_id: cstring, label: cstring, accelerator: cstring, tooltip: cstring, callback: gobj.Callback}
		ActionGroup :: struct {parent: gobj.Object, priv: ^ActionGroupPrivate}
		ActionGroupClass :: struct {parent_class: gobj.ObjectClass, get_action: et_action_func_ptr_anon_1103, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1104, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1105, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1106, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1107}
		ActionGroupPrivate :: struct #packed {}
		ActionPrivate :: struct #packed {}
		Actionable :: struct #packed {}
		ActionableInterface :: struct {g_iface: gobj.TypeInterface, get_action_name: et_action_name_func_ptr_anon_165, set_action_name: set_action_name_func_ptr_anon_166, get_action_target_value: et_action_target_value_func_ptr_anon_167, set_action_target_value: set_action_target_value_func_ptr_anon_168}
		Activatable :: struct #packed {}
		ActivatableIface :: struct {g_iface: gobj.TypeInterface, update: update_func_ptr_anon_1101, sync_action_properties: sync_action_properties_func_ptr_anon_1102}
		Adjustment :: struct {parent_instance: gobj.InitiallyUnowned, priv: ^AdjustmentPrivate}
		AdjustmentClass :: struct {parent_class: gobj.InitiallyUnownedClass, changed: changed_func_ptr_anon_173, value_changed: value_changed_func_ptr_anon_174, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_175, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_176, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_177, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_178}
		AdjustmentPrivate :: struct #packed {}
		Align :: enum u32 {FILL = 0, START = 1, END = 2, CENTER = 3, BASELINE = 4}
		Alignment :: struct {bin: Bin, priv: ^AlignmentPrivate}
		AlignmentClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1108, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1109, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1110, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1111}
		AlignmentPrivate :: struct #packed {}
		Allocation :: GdkRectangle
		AppChooser :: struct #packed {}
		AppChooserButton :: struct {parent: ComboBox, priv: ^AppChooserButtonPrivate}
		AppChooserButtonClass :: struct {parent_class: ComboBoxClass, custom_item_activated: custom_item_activated_func_ptr_anon_386, padding: [16]glib.pointer}
		AppChooserButtonPrivate :: struct #packed {}
		AppChooserDialog :: struct {parent: Dialog, priv: ^AppChooserDialogPrivate}
		AppChooserDialogClass :: struct {parent_class: DialogClass, padding: [16]glib.pointer}
		AppChooserDialogPrivate :: struct #packed {}
		AppChooserWidget :: struct {parent: Box, priv: ^AppChooserWidgetPrivate}
		AppChooserWidgetClass :: struct {parent_class: BoxClass, application_selected: application_selected_func_ptr_anon_183, application_activated: application_activated_func_ptr_anon_184, populate_popup: populate_popup_func_ptr_anon_185, padding: [16]glib.pointer}
		AppChooserWidgetPrivate :: struct #packed {}
		Application :: struct {parent: gio.Application, priv: ^ApplicationPrivate}
		ApplicationClass :: struct {parent_class: gio.ApplicationClass, window_added: window_added_func_ptr_anon_101, window_removed: window_removed_func_ptr_anon_102, padding: [12]glib.pointer}
		ApplicationInhibitFlags :: bit_set[ApplicationInhibitFlagsBit]
		ApplicationInhibitFlagsBit :: enum u32 {APPLICATION_INHIBIT_LOGOUT = 0, APPLICATION_INHIBIT_SWITCH = 1, APPLICATION_INHIBIT_SUSPEND = 2, APPLICATION_INHIBIT_IDLE = 3}
		ApplicationPrivate :: struct #packed {}
		ApplicationWindow :: struct {parent_instance: Window, priv: ^ApplicationWindowPrivate}
		ApplicationWindowClass :: struct {parent_class: WindowClass, padding: [14]glib.pointer}
		ApplicationWindowPrivate :: struct #packed {}
		Arrow :: struct {misc: Misc, priv: ^ArrowPrivate}
		ArrowClass :: struct {parent_class: MiscClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1087, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1088, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1089, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1090}
		ArrowPlacement :: enum u32 {ARROWS_BOTH = 0, ARROWS_START = 1, ARROWS_END = 2}
		ArrowPrivate :: struct #packed {}
		ArrowType :: enum u32 {ARROW_UP = 0, ARROW_DOWN = 1, ARROW_LEFT = 2, ARROW_RIGHT = 3, ARROW_NONE = 4}
		AspectFrame :: struct {frame: Frame, priv: ^AspectFramePrivate}
		AspectFrameClass :: struct {parent_class: FrameClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_394, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_395, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_396, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_397}
		AspectFramePrivate :: struct #packed {}
		Assistant :: struct {parent: Window, priv: ^AssistantPrivate}
		AssistantClass :: struct {parent_class: WindowClass, prepare: prepare_func_ptr_anon_398, apply: apply_func_ptr_anon_399, close: close_func_ptr_anon_400, cancel: cancel_func_ptr_anon_401, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_402, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_403, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_404, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_405, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_406}
		AssistantPageFunc :: #type proc(current_page: glib.int_, data: glib.pointer) -> glib.int_
		AssistantPageType :: enum u32 {ASSISTANT_PAGE_CONTENT = 0, ASSISTANT_PAGE_INTRO = 1, ASSISTANT_PAGE_CONFIRM = 2, ASSISTANT_PAGE_SUMMARY = 3, ASSISTANT_PAGE_PROGRESS = 4, ASSISTANT_PAGE_CUSTOM = 5}
		AssistantPrivate :: struct #packed {}
		AttachOptions :: bit_set[AttachOptionsBit]
		AttachOptionsBit :: enum u32 {EXPAND = 0, SHRINK = 1, FILL = 2}
		BaselinePosition :: enum u32 {TOP = 0, CENTER = 1, BOTTOM = 2}
		Bin :: struct {container: Container, priv: ^BinPrivate}
		BinClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_113, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_114, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_115, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_116}
		BinPrivate :: struct #packed {}
		BindingArg :: struct {arg_type: gobj.Type, d: d_union_anon_411}
		BindingEntry :: struct {keyval: glib.uint_, modifiers: GdkModifierType, binding_set: ^BindingSet, using _: bit_field glib.uint_ {destroyed: glib.uint_ | 1, in_emission: glib.uint_ | 1, marks_unbound: glib.uint_ | 1}, set_next: ^BindingEntry, hash_next: ^BindingEntry, signals: ^BindingSignal}
		BindingSet :: struct {set_name: cstring, priority: glib.int_, widget_path_pspecs: ^glib.SList, widget_class_pspecs: ^glib.SList, class_branch_pspecs: ^glib.SList, entries: ^BindingEntry, current: ^BindingEntry, using _: bit_field glib.uint_ {parsed: glib.uint_ | 1}}
		BindingSignal :: struct {next: ^BindingSignal, signal_name: cstring, n_args: glib.uint_, args: [^]BindingArg}
		Border :: struct {left: glib.int16, right: glib.int16, top: glib.int16, bottom: glib.int16}
		BorderStyle :: enum u32 {NONE = 0, SOLID = 1, INSET = 2, OUTSET = 3, HIDDEN = 4, DOTTED = 5, DASHED = 6, DOUBLE = 7, GROOVE = 8, RIDGE = 9}
		Box :: struct {container: Container, priv: ^BoxPrivate}
		BoxClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_179, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_180, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_181, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_182}
		BoxPrivate :: struct #packed {}
		Buildable :: struct #packed {}
		BuildableIface :: struct {g_iface: gobj.TypeInterface, set_name: set_name_func_ptr_anon_421, get_name: et_name_func_ptr_anon_422, add_child: add_child_func_ptr_anon_423, set_buildable_property: set_buildable_property_func_ptr_anon_424, construct_child: construct_child_func_ptr_anon_425, custom_tag_start: custom_tag_start_func_ptr_anon_426, custom_tag_end: custom_tag_end_func_ptr_anon_427, custom_finished: custom_finished_func_ptr_anon_428, parser_finished: parser_finished_func_ptr_anon_429, get_internal_child: et_internal_child_func_ptr_anon_430}
		Builder :: struct {parent_instance: gobj.Object, priv: ^BuilderPrivate}
		BuilderClass :: struct {parent_class: gobj.ObjectClass, get_type_from_name: et_type_from_name_func_ptr_anon_412, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_413, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_414, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_415, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_416, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_417, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_418, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_419, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_420}
		BuilderConnectFunc :: #type proc(builder: ^Builder, object: ^gobj.Object, signal_name: cstring, handler_name: cstring, connect_object: ^gobj.Object, flags: gobj.ConnectFlags, user_data: glib.pointer)
		BuilderError :: enum u32 {INVALID_TYPE_FUNCTION = 0, UNHANDLED_TAG = 1, MISSING_ATTRIBUTE = 2, INVALID_ATTRIBUTE = 3, INVALID_TAG = 4, MISSING_PROPERTY_VALUE = 5, INVALID_VALUE = 6, VERSION_MISMATCH = 7, DUPLICATE_ID = 8, OBJECT_TYPE_REFUSED = 9, TEMPLATE_MISMATCH = 10, INVALID_PROPERTY = 11, INVALID_SIGNAL = 12, INVALID_ID = 13}
		BuilderPrivate :: struct #packed {}
		Button :: struct {bin: Bin, priv: ^ButtonPrivate}
		ButtonBox :: struct {box: Box, priv: ^ButtonBoxPrivate}
		ButtonBoxClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_407, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_408, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_409, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_410}
		ButtonBoxPrivate :: struct #packed {}
		ButtonBoxStyle :: enum u32 {BUTTONBOX_SPREAD = 1, BUTTONBOX_EDGE = 2, BUTTONBOX_START = 3, BUTTONBOX_END = 4, BUTTONBOX_CENTER = 5, BUTTONBOX_EXPAND = 6}
		ButtonClass :: struct {parent_class: BinClass, pressed: pressed_func_ptr_anon_431, released: released_func_ptr_anon_432, clicked: clicked_func_ptr_anon_433, enter: enter_func_ptr_anon_434, leave: leave_func_ptr_anon_435, activate: activate_func_ptr_anon_436, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_437, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_438, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_439, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_440}
		ButtonPrivate :: struct #packed {}
		ButtonRole :: enum u32 {NORMAL = 0, CHECK = 1, RADIO = 2}
		ButtonsType :: enum u32 {BUTTONS_NONE = 0, BUTTONS_OK = 1, BUTTONS_CLOSE = 2, BUTTONS_CANCEL = 3, BUTTONS_YES_NO = 4, BUTTONS_OK_CANCEL = 5}
		Calendar :: struct {widget: Widget, priv: ^CalendarPrivate}
		CalendarClass :: struct {parent_class: WidgetClass, month_changed: month_changed_func_ptr_anon_441, day_selected: day_selected_func_ptr_anon_442, day_selected_double_click: day_selected_double_click_func_ptr_anon_443, prev_month: prev_month_func_ptr_anon_444, next_month: next_month_func_ptr_anon_445, prev_year: prev_year_func_ptr_anon_446, next_year: next_year_func_ptr_anon_447, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_448, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_449, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_450, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_451}
		CalendarDetailFunc :: #type proc(calendar: ^Calendar, year: glib.uint_, month: glib.uint_, day: glib.uint_, user_data: glib.pointer) -> cstring
		CalendarDisplayOptions :: bit_set[CalendarDisplayOptionsBit]
		CalendarDisplayOptionsBit :: enum u32 {CALENDAR_SHOW_HEADING = 0, CALENDAR_SHOW_DAY_NAMES = 1, CALENDAR_NO_MONTH_CHANGE = 2, CALENDAR_SHOW_WEEK_NUMBERS = 3, CALENDAR_SHOW_DETAILS = 5}
		CalendarPrivate :: struct #packed {}
		Callback :: #type proc(widget: ^Widget, data: glib.pointer)
		CellAllocCallback :: #type proc(renderer: ^CellRenderer, cell_area: ^GdkRectangle, cell_background: ^GdkRectangle, data: glib.pointer) -> glib.boolean
		CellArea :: struct {parent_instance: gobj.InitiallyUnowned, priv: ^CellAreaPrivate}
		CellAreaBox :: struct {parent_instance: CellArea, priv: ^CellAreaBoxPrivate}
		CellAreaBoxClass :: struct {parent_class: CellAreaClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_452, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_453, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_454, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_455}
		CellAreaBoxPrivate :: struct #packed {}
		CellAreaClass :: struct {parent_class: gobj.InitiallyUnownedClass, add: add_func_ptr_anon_230, remove: remove_func_ptr_anon_231, foreach: foreach_func_ptr_anon_232, foreach_alloc: foreach_alloc_func_ptr_anon_233, event: event_func_ptr_anon_234, render: render_func_ptr_anon_235, apply_attributes: apply_attributes_func_ptr_anon_236, create_context: create_context_func_ptr_anon_237, copy_context: copy_context_func_ptr_anon_238, get_request_mode: et_request_mode_func_ptr_anon_239, get_preferred_width: et_preferred_width_func_ptr_anon_240, get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_241, get_preferred_height: et_preferred_height_func_ptr_anon_242, get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_243, set_cell_property: set_cell_property_func_ptr_anon_244, get_cell_property: et_cell_property_func_ptr_anon_245, focus: focus_func_ptr_anon_246, is_activatable: is_activatable_func_ptr_anon_247, activate: activate_func_ptr_anon_248, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_249, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_250, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_251, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_252, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_253, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_254, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_255, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_256}
		CellAreaContext :: struct {parent_instance: gobj.Object, priv: ^CellAreaContextPrivate}
		CellAreaContextClass :: struct {parent_class: gobj.ObjectClass, allocate: allocate_func_ptr_anon_456, reset: reset_func_ptr_anon_457, get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_458, get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_459, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_460, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_461, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_462, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_463, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_464, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_465}
		CellAreaContextPrivate :: struct #packed {}
		CellAreaPrivate :: struct #packed {}
		CellCallback :: #type proc(renderer: ^CellRenderer, data: glib.pointer) -> glib.boolean
		CellEditable :: struct #packed {}
		CellEditableIface :: struct {g_iface: gobj.TypeInterface, editing_done: editing_done_func_ptr_anon_206, remove_widget: remove_widget_func_ptr_anon_207, start_editing: start_editing_func_ptr_anon_208}
		CellLayout :: struct #packed {}
		CellLayoutDataFunc :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, tree_model: ^TreeModel, iter: ^TreeIter, data: glib.pointer)
		CellLayoutIface :: struct {g_iface: gobj.TypeInterface, pack_start: pack_start_func_ptr_anon_466, pack_end: pack_end_func_ptr_anon_467, clear: clear_func_ptr_anon_468, add_attribute: add_attribute_func_ptr_anon_469, set_cell_data_func: set_cell_data_func_func_ptr_anon_470, clear_attributes: clear_attributes_func_ptr_anon_471, reorder: reorder_func_ptr_anon_472, get_cells: et_cells_func_ptr_anon_473, get_area: et_area_func_ptr_anon_474}
		CellRenderer :: struct {parent_instance: gobj.InitiallyUnowned, priv: ^CellRendererPrivate}
		CellRendererAccel :: struct {parent: CellRendererText, priv: ^CellRendererAccelPrivate}
		CellRendererAccelClass :: struct {parent_class: CellRendererTextClass, accel_edited: accel_edited_func_ptr_anon_480, accel_cleared: accel_cleared_func_ptr_anon_481, _gtk_reserved0: _gtk_reserved0_func_ptr_anon_482, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_483, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_484, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_485, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_486}
		CellRendererAccelMode :: enum u32 {GTK = 0, OTHER = 1, MODIFIER_TAP = 2}
		CellRendererAccelPrivate :: struct #packed {}
		CellRendererClass :: struct {parent_class: gobj.InitiallyUnownedClass, get_request_mode: et_request_mode_func_ptr_anon_209, get_preferred_width: et_preferred_width_func_ptr_anon_210, get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_211, get_preferred_height: et_preferred_height_func_ptr_anon_212, get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_213, get_aligned_area: et_aligned_area_func_ptr_anon_214, get_size: et_size_func_ptr_anon_215, render: render_func_ptr_anon_216, activate: activate_func_ptr_anon_217, start_editing: start_editing_func_ptr_anon_218, editing_canceled: editing_canceled_func_ptr_anon_219, editing_started: editing_started_func_ptr_anon_220, priv: ^CellRendererClassPrivate, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_221, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_222, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_223}
		CellRendererClassPrivate :: struct #packed {}
		CellRendererCombo :: struct {parent: CellRendererText, priv: ^CellRendererComboPrivate}
		CellRendererComboClass :: struct {parent: CellRendererTextClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_487, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_488, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_489, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_490}
		CellRendererComboPrivate :: struct #packed {}
		CellRendererMode :: enum u32 {INERT = 0, ACTIVATABLE = 1, EDITABLE = 2}
		CellRendererPixbuf :: struct {parent: CellRenderer, priv: ^CellRendererPixbufPrivate}
		CellRendererPixbufClass :: struct {parent_class: CellRendererClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_491, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_492, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_493, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_494}
		CellRendererPixbufPrivate :: struct #packed {}
		CellRendererPrivate :: struct #packed {}
		CellRendererProgress :: struct {parent_instance: CellRenderer, priv: ^CellRendererProgressPrivate}
		CellRendererProgressClass :: struct {parent_class: CellRendererClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_495, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_496, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_497, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_498}
		CellRendererProgressPrivate :: struct #packed {}
		CellRendererSpin :: struct {parent: CellRendererText, priv: ^CellRendererSpinPrivate}
		CellRendererSpinClass :: struct {parent: CellRendererTextClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_499, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_500, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_501, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_502}
		CellRendererSpinPrivate :: struct #packed {}
		CellRendererSpinner :: struct {parent: CellRenderer, priv: ^CellRendererSpinnerPrivate}
		CellRendererSpinnerClass :: struct {parent_class: CellRendererClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_503, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_504, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_505, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_506}
		CellRendererSpinnerPrivate :: struct #packed {}
		CellRendererState :: bit_set[CellRendererStateBit]
		CellRendererStateBit :: enum u32 {CELL_RENDERER_SELECTED = 0, CELL_RENDERER_PRELIT = 1, CELL_RENDERER_INSENSITIVE = 2, CELL_RENDERER_SORTED = 3, CELL_RENDERER_FOCUSED = 4, CELL_RENDERER_EXPANDABLE = 5, CELL_RENDERER_EXPANDED = 6}
		CellRendererText :: struct {parent: CellRenderer, priv: ^CellRendererTextPrivate}
		CellRendererTextClass :: struct {parent_class: CellRendererClass, edited: edited_func_ptr_anon_475, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_476, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_477, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_478, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_479}
		CellRendererTextPrivate :: struct #packed {}
		CellRendererToggle :: struct {parent: CellRenderer, priv: ^CellRendererTogglePrivate}
		CellRendererToggleClass :: struct {parent_class: CellRendererClass, toggled: toggled_func_ptr_anon_507, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_508, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_509, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_510, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_511}
		CellRendererTogglePrivate :: struct #packed {}
		CellView :: struct {parent_instance: Widget, priv: ^CellViewPrivate}
		CellViewClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_512, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_513, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_514, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_515}
		CellViewPrivate :: struct #packed {}
		CheckButton :: struct {toggle_button: ToggleButton}
		CheckButtonClass :: struct {parent_class: ToggleButtonClass, draw_indicator: draw_indicator_func_ptr_anon_521, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_522, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_523, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_524, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_525}
		CheckMenuItem :: struct {menu_item: MenuItem, priv: ^CheckMenuItemPrivate}
		CheckMenuItemClass :: struct {parent_class: MenuItemClass, toggled: toggled_func_ptr_anon_526, draw_indicator: draw_indicator_func_ptr_anon_527, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_528, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_529, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_530, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_531}
		CheckMenuItemPrivate :: struct #packed {}
		Clipboard :: struct #packed {}
		ClipboardClearFunc :: #type proc(clipboard: ^Clipboard, user_data_or_owner: glib.pointer)
		ClipboardGetFunc :: #type proc(clipboard: ^Clipboard, selection_data: ^SelectionData, info: glib.uint_, user_data_or_owner: glib.pointer)
		ClipboardImageReceivedFunc :: #type proc(clipboard: ^Clipboard, pixbuf: ^pixbuf.Pixbuf, data: glib.pointer)
		ClipboardReceivedFunc :: #type proc(clipboard: ^Clipboard, selection_data: ^SelectionData, data: glib.pointer)
		ClipboardRichTextReceivedFunc :: #type proc(clipboard: ^Clipboard, format: GdkAtom, text: ^glib.uint8, length: glib.size, data: glib.pointer)
		ClipboardTargetsReceivedFunc :: #type proc(clipboard: ^Clipboard, atoms: [^]GdkAtom, n_atoms: glib.int_, data: glib.pointer)
		ClipboardTextReceivedFunc :: #type proc(clipboard: ^Clipboard, text: cstring, data: glib.pointer)
		ClipboardURIReceivedFunc :: #type proc(clipboard: ^Clipboard, uris: [^]cstring, data: glib.pointer)
		ColorButton :: struct {button: Button, priv: ^ColorButtonPrivate}
		ColorButtonClass :: struct {parent_class: ButtonClass, color_set: color_set_func_ptr_anon_532, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_533, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_534, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_535, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_536}
		ColorButtonPrivate :: struct #packed {}
		ColorChooser :: struct #packed {}
		ColorChooserDialog :: struct {parent_instance: Dialog, priv: ^ColorChooserDialogPrivate}
		ColorChooserDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_541, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_542, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_543, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_544}
		ColorChooserDialogPrivate :: struct #packed {}
		ColorChooserInterface :: struct {base_interface: gobj.TypeInterface, get_rgba: et_rgba_func_ptr_anon_537, set_rgba: set_rgba_func_ptr_anon_538, add_palette: add_palette_func_ptr_anon_539, color_activated: color_activated_func_ptr_anon_540, padding: [12]glib.pointer}
		ColorChooserWidget :: struct {parent_instance: Box, priv: ^ColorChooserWidgetPrivate}
		ColorChooserWidgetClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_545, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_546, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_547, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_548, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_549, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_550, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_551, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_552}
		ColorChooserWidgetPrivate :: struct #packed {}
		ColorSelection :: struct {parent_instance: Box, private_data: ^ColorSelectionPrivate}
		ColorSelectionChangePaletteFunc :: #type proc(colors: [^]GdkColor, n_colors: glib.int_)
		ColorSelectionChangePaletteWithScreenFunc :: #type proc(screen: ^GdkScreen, colors: [^]GdkColor, n_colors: glib.int_)
		ColorSelectionClass :: struct {parent_class: BoxClass, color_changed: color_changed_func_ptr_anon_1112, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1113, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1114, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1115, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1116}
		ColorSelectionDialog :: struct {parent_instance: Dialog, priv: ^ColorSelectionDialogPrivate}
		ColorSelectionDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1117, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1118, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1119, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1120}
		ColorSelectionDialogPrivate :: struct #packed {}
		ColorSelectionPrivate :: struct #packed {}
		ComboBox :: struct {parent_instance: Bin, priv: ^ComboBoxPrivate}
		ComboBoxClass :: struct {parent_class: BinClass, changed: changed_func_ptr_anon_381, format_entry_text: format_entry_text_func_ptr_anon_382, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_383, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_384, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_385}
		ComboBoxPrivate :: struct #packed {}
		ComboBoxText :: struct {parent_instance: ComboBox, priv: ^ComboBoxTextPrivate}
		ComboBoxTextClass :: struct {parent_class: ComboBoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_553, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_554, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_555, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_556}
		ComboBoxTextPrivate :: struct #packed {}
		Container :: struct {widget: Widget, priv: ^ContainerPrivate}
		ContainerClass :: [122]u64
		ContainerPrivate :: struct #packed {}
		CornerType :: enum u32 {CORNER_TOP_LEFT = 0, CORNER_BOTTOM_LEFT = 1, CORNER_TOP_RIGHT = 2, CORNER_BOTTOM_RIGHT = 3}
		CssProvider :: struct {parent_instance: gobj.Object, priv: ^CssProviderPrivate}
		CssProviderClass :: struct {parent_class: gobj.ObjectClass, parsing_error: parsing_error_func_ptr_anon_557, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_558, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_559, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_560}
		CssProviderError :: enum u32 {FAILED = 0, SYNTAX = 1, IMPORT = 2, NAME = 3, DEPRECATED = 4, UNKNOWN_VALUE = 5}
		CssProviderPrivate :: struct #packed {}
		CssSection :: struct #packed {}
		CssSectionType :: enum u32 {CSS_SECTION_DOCUMENT = 0, CSS_SECTION_IMPORT = 1, CSS_SECTION_COLOR_DEFINITION = 2, CSS_SECTION_BINDING_SET = 3, CSS_SECTION_RULESET = 4, CSS_SECTION_SELECTOR = 5, CSS_SECTION_DECLARATION = 6, CSS_SECTION_VALUE = 7, CSS_SECTION_KEYFRAMES = 8}
		DebugFlag :: bit_set[DebugFlagBit]
		DebugFlagBit :: enum u32 {DEBUG_MISC = 0, DEBUG_PLUGSOCKET = 1, DEBUG_TEXT = 2, DEBUG_TREE = 3, DEBUG_UPDATES = 4, DEBUG_KEYBINDINGS = 5, DEBUG_MULTIHEAD = 6, DEBUG_MODULES = 7, DEBUG_GEOMETRY = 8, DEBUG_ICONTHEME = 9, DEBUG_PRINTING = 10, DEBUG_BUILDER = 11, DEBUG_SIZE_REQUEST = 12, DEBUG_NO_CSS_CACHE = 13, DEBUG_BASELINES = 14, DEBUG_PIXEL_CACHE = 15, DEBUG_NO_PIXEL_CACHE = 16, DEBUG_INTERACTIVE = 17, DEBUG_TOUCHSCREEN = 18, DEBUG_ACTIONS = 19, DEBUG_RESIZE = 20, DEBUG_LAYOUT = 21}
		DeleteType :: enum u32 {DELETE_CHARS = 0, DELETE_WORD_ENDS = 1, DELETE_WORDS = 2, DELETE_DISPLAY_LINES = 3, DELETE_DISPLAY_LINE_ENDS = 4, DELETE_PARAGRAPH_ENDS = 5, DELETE_PARAGRAPHS = 6, DELETE_WHITESPACE = 7}
		DestDefaults :: bit_set[DestDefaultsBit]
		DestDefaultsBit :: enum u32 {DEST_DEFAULT_MOTION = 0, DEST_DEFAULT_HIGHLIGHT = 1, DEST_DEFAULT_DROP = 2}
		Dialog :: struct {window: Window, priv: ^DialogPrivate}
		DialogClass :: struct {parent_class: WindowClass, response: response_func_ptr_anon_125, close: close_func_ptr_anon_126, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_127, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_128, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_129, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_130}
		DialogFlags :: bit_set[DialogFlagsBit]
		DialogFlagsBit :: enum u32 {DIALOG_MODAL = 0, DIALOG_DESTROY_WITH_PARENT = 1, DIALOG_USE_HEADER_BAR = 2}
		DialogPrivate :: struct #packed {}
		DirectionType :: enum u32 {DIR_TAB_FORWARD = 0, DIR_TAB_BACKWARD = 1, DIR_UP = 2, DIR_DOWN = 3, DIR_LEFT = 4, DIR_RIGHT = 5}
		DragResult :: enum u32 {SUCCESS = 0, NO_TARGET = 1, USER_CANCELLED = 2, TIMEOUT_EXPIRED = 3, GRAB_BROKEN = 4, ERROR = 5}
		DrawingArea :: struct {widget: Widget, dummy: glib.pointer}
		DrawingAreaClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_561, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_562, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_563, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_564}
		Editable :: struct #packed {}
		EditableInterface :: struct {base_iface: gobj.TypeInterface, insert_text: insert_text_func_ptr_anon_271, delete_text: delete_text_func_ptr_anon_272, changed: changed_func_ptr_anon_273, do_insert_text: do_insert_text_func_ptr_anon_274, do_delete_text: do_delete_text_func_ptr_anon_275, get_chars: et_chars_func_ptr_anon_276, set_selection_bounds: set_selection_bounds_func_ptr_anon_277, get_selection_bounds: et_selection_bounds_func_ptr_anon_278, set_position: set_position_func_ptr_anon_279, get_position: et_position_func_ptr_anon_280}
		Entry :: struct {parent_instance: Widget, priv: ^EntryPrivate}
		EntryBuffer :: struct {parent_instance: gobj.Object, priv: ^EntryBufferPrivate}
		EntryBufferClass :: struct {parent_class: gobj.ObjectClass, inserted_text: inserted_text_func_ptr_anon_303, deleted_text: deleted_text_func_ptr_anon_304, get_text: et_text_func_ptr_anon_305, get_length: et_length_func_ptr_anon_306, insert_text: insert_text_func_ptr_anon_307, delete_text: delete_text_func_ptr_anon_308, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_309, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_310, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_311, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_312, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_313, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_314, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_315, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_316}
		EntryBufferPrivate :: struct #packed {}
		EntryClass :: struct {parent_class: WidgetClass, populate_popup: populate_popup_func_ptr_anon_339, activate: activate_func_ptr_anon_340, move_cursor: move_cursor_func_ptr_anon_341, insert_at_cursor: insert_at_cursor_func_ptr_anon_342, delete_from_cursor: delete_from_cursor_func_ptr_anon_343, backspace: backspace_func_ptr_anon_344, cut_clipboard: cut_clipboard_func_ptr_anon_345, copy_clipboard: copy_clipboard_func_ptr_anon_346, paste_clipboard: paste_clipboard_func_ptr_anon_347, toggle_overwrite: toggle_overwrite_func_ptr_anon_348, get_text_area_size: et_text_area_size_func_ptr_anon_349, get_frame_size: et_frame_size_func_ptr_anon_350, insert_emoji: insert_emoji_func_ptr_anon_351, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_352, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_353, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_354, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_355, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_356, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_357}
		EntryCompletion :: struct {parent_instance: gobj.Object, priv: ^EntryCompletionPrivate}
		EntryCompletionClass :: struct {parent_class: gobj.ObjectClass, match_selected: match_selected_func_ptr_anon_327, action_activated: action_activated_func_ptr_anon_328, insert_prefix: insert_prefix_func_ptr_anon_329, cursor_on_match: cursor_on_match_func_ptr_anon_330, no_matches: no_matches_func_ptr_anon_331, _gtk_reserved0: _gtk_reserved0_func_ptr_anon_332, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_333, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_334}
		EntryCompletionMatchFunc :: #type proc(completion: ^EntryCompletion, key: cstring, iter: ^TreeIter, user_data: glib.pointer) -> glib.boolean
		EntryCompletionPrivate :: struct #packed {}
		EntryIconPosition :: enum u32 {ENTRY_ICON_PRIMARY = 0, ENTRY_ICON_SECONDARY = 1}
		EntryPrivate :: struct #packed {}
		EventBox :: struct {bin: Bin, priv: ^EventBoxPrivate}
		EventBoxClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_565, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_566, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_567, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_568}
		EventBoxPrivate :: struct #packed {}
		EventController :: struct #packed {}
		EventControllerClass :: struct #packed {}
		EventControllerKey :: struct #packed {}
		EventControllerKeyClass :: struct #packed {}
		EventControllerMotion :: struct #packed {}
		EventControllerMotionClass :: struct #packed {}
		EventControllerScroll :: struct #packed {}
		EventControllerScrollClass :: struct #packed {}
		EventControllerScrollFlags :: bit_set[EventControllerScrollFlagsBit]
		EventControllerScrollFlagsBit :: enum u32 {EVENT_CONTROLLER_SCROLL_VERTICAL = 0, EVENT_CONTROLLER_SCROLL_HORIZONTAL = 1, EVENT_CONTROLLER_SCROLL_DISCRETE = 2, EVENT_CONTROLLER_SCROLL_KINETIC = 3}
		EventSequenceState :: enum u32 {EVENT_SEQUENCE_NONE = 0, EVENT_SEQUENCE_CLAIMED = 1, EVENT_SEQUENCE_DENIED = 2}
		Expander :: struct {bin: Bin, priv: ^ExpanderPrivate}
		ExpanderClass :: struct {parent_class: BinClass, activate: activate_func_ptr_anon_569, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_570, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_571, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_572, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_573}
		ExpanderPrivate :: struct #packed {}
		ExpanderStyle :: enum u32 {EXPANDER_COLLAPSED = 0, EXPANDER_SEMI_COLLAPSED = 1, EXPANDER_SEMI_EXPANDED = 2, EXPANDER_EXPANDED = 3}
		FileChooser :: struct #packed {}
		FileChooserAction :: enum u32 {OPEN = 0, SAVE = 1, SELECT_FOLDER = 2, CREATE_FOLDER = 3}
		FileChooserButton :: struct {parent: Box, priv: ^FileChooserButtonPrivate}
		FileChooserButtonClass :: struct {parent_class: BoxClass, file_set: file_set_func_ptr_anon_578, __gtk_reserved1: __gtk_reserved1_func_ptr_anon_579, __gtk_reserved2: __gtk_reserved2_func_ptr_anon_580, __gtk_reserved3: __gtk_reserved3_func_ptr_anon_581, __gtk_reserved4: __gtk_reserved4_func_ptr_anon_582}
		FileChooserButtonPrivate :: struct #packed {}
		FileChooserConfirmation :: enum u32 {CONFIRM = 0, ACCEPT_FILENAME = 1, SELECT_AGAIN = 2}
		FileChooserDialog :: struct {parent_instance: Dialog, priv: ^FileChooserDialogPrivate}
		FileChooserDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_583, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_584, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_585, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_586}
		FileChooserDialogPrivate :: struct #packed {}
		FileChooserError :: enum u32 {NONEXISTENT = 0, BAD_FILENAME = 1, ALREADY_EXISTS = 2, INCOMPLETE_HOSTNAME = 3}
		FileChooserNative :: struct #packed {}
		FileChooserNativeClass :: struct {parent_class: NativeDialogClass}
		FileChooserWidget :: struct {parent_instance: Box, priv: ^FileChooserWidgetPrivate}
		FileChooserWidgetClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_594, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_595, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_596, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_597}
		FileChooserWidgetPrivate :: struct #packed {}
		FileFilter :: struct #packed {}
		FileFilterFlags :: bit_set[FileFilterFlagsBit]
		FileFilterFlagsBit :: enum u32 {FILE_FILTER_FILENAME = 0, FILE_FILTER_URI = 1, FILE_FILTER_DISPLAY_NAME = 2, FILE_FILTER_MIME_TYPE = 3}
		FileFilterFunc :: #type proc(filter_info: ^FileFilterInfo, data: glib.pointer) -> glib.boolean
		FileFilterInfo :: struct {contains: FileFilterFlags, filename: cstring, uri: cstring, display_name: cstring, mime_type: cstring}
		Fixed :: struct {container: Container, priv: ^FixedPrivate}
		FixedChild :: struct {widget: ^Widget, x: glib.int_, y: glib.int_}
		FixedClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_574, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_575, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_576, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_577}
		FixedPrivate :: struct #packed {}
		FlowBox :: struct {container: Container}
		FlowBoxChild :: struct {parent_instance: Bin}
		FlowBoxChildClass :: struct {parent_class: BinClass, activate: activate_func_ptr_anon_611, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_612, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_613}
		FlowBoxClass :: struct {parent_class: ContainerClass, child_activated: child_activated_func_ptr_anon_598, selected_children_changed: selected_children_changed_func_ptr_anon_599, activate_cursor_child: activate_cursor_child_func_ptr_anon_600, toggle_cursor_child: toggle_cursor_child_func_ptr_anon_601, move_cursor: move_cursor_func_ptr_anon_602, select_all: select_all_func_ptr_anon_603, unselect_all: unselect_all_func_ptr_anon_604, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_605, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_606, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_607, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_608, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_609, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_610}
		FlowBoxCreateWidgetFunc :: #type proc(item: glib.pointer, user_data: glib.pointer) -> ^Widget
		FlowBoxFilterFunc :: #type proc(child: ^FlowBoxChild, user_data: glib.pointer) -> glib.boolean
		FlowBoxForeachFunc :: #type proc(box: ^FlowBox, child: ^FlowBoxChild, user_data: glib.pointer)
		FlowBoxSortFunc :: #type proc(child1: ^FlowBoxChild, child2: ^FlowBoxChild, user_data: glib.pointer) -> glib.int_
		FontButton :: struct {button: Button, priv: ^FontButtonPrivate}
		FontButtonClass :: struct {parent_class: ButtonClass, font_set: font_set_func_ptr_anon_614, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_615, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_616, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_617, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_618}
		FontButtonPrivate :: struct #packed {}
		FontChooser :: struct #packed {}
		FontChooserDialog :: struct {parent_instance: Dialog, priv: ^FontChooserDialogPrivate}
		FontChooserDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_626, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_627, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_628, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_629}
		FontChooserDialogPrivate :: struct #packed {}
		FontChooserIface :: struct {base_iface: gobj.TypeInterface, get_font_family: et_font_family_func_ptr_anon_619, get_font_face: et_font_face_func_ptr_anon_620, get_font_size: et_font_size_func_ptr_anon_621, set_filter_func: set_filter_func_func_ptr_anon_622, font_activated: font_activated_func_ptr_anon_623, set_font_map: set_font_map_func_ptr_anon_624, get_font_map: et_font_map_func_ptr_anon_625, padding: [10]glib.pointer}
		FontChooserLevel :: bit_set[FontChooserLevelBit]
		FontChooserLevelBit :: enum u32 {STYLE = 0, SIZE = 1, VARIATIONS = 2, FEATURES = 3}
		FontChooserWidget :: struct {parent_instance: Box, priv: ^FontChooserWidgetPrivate}
		FontChooserWidgetClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_630, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_631, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_632, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_633, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_634, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_635, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_636, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_637}
		FontChooserWidgetPrivate :: struct #packed {}
		FontFilterFunc :: #type proc(family: ^pango.FontFamily, face: ^pango.FontFace, data: glib.pointer) -> glib.boolean
		FontSelection :: struct {parent_instance: Box, priv: ^FontSelectionPrivate}
		FontSelectionClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1121, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1122, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1123, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1124}
		FontSelectionDialog :: struct {parent_instance: Dialog, priv: ^FontSelectionDialogPrivate}
		FontSelectionDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1125, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1126, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1127, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1128}
		FontSelectionDialogPrivate :: struct #packed {}
		FontSelectionPrivate :: struct #packed {}
		Frame :: struct {bin: Bin, priv: ^FramePrivate}
		FrameClass :: struct {parent_class: BinClass, compute_child_allocation: compute_child_allocation_func_ptr_anon_389, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_390, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_391, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_392, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_393}
		FramePrivate :: struct #packed {}
		GLArea :: struct {parent_instance: Widget}
		GLAreaClass :: struct {parent_class: WidgetClass, render: render_func_ptr_anon_638, resize: resize_func_ptr_anon_639, create_context: create_context_func_ptr_anon_640, _padding: [6]glib.pointer}
		GdkAnchorHints :: bit_set[GdkAnchorHintsBit]
		GdkAnchorHintsBit :: enum u32 {ANCHOR_FLIP_X = 0, ANCHOR_FLIP_Y = 1, ANCHOR_SLIDE_X = 2, ANCHOR_SLIDE_Y = 3, ANCHOR_RESIZE_X = 4, ANCHOR_RESIZE_Y = 5}
		GdkAppLaunchContext :: struct #packed {}
		GdkAtom :: ^_GdkAtom
		GdkAxisFlags :: bit_set[GdkAxisFlagsBit]
		GdkAxisFlagsBit :: enum u32 {AXIS_FLAG_X = 1, AXIS_FLAG_Y = 2, AXIS_FLAG_PRESSURE = 3, AXIS_FLAG_XTILT = 4, AXIS_FLAG_YTILT = 5, AXIS_FLAG_WHEEL = 6, AXIS_FLAG_DISTANCE = 7, AXIS_FLAG_ROTATION = 8, AXIS_FLAG_SLIDER = 9}
		GdkAxisUse :: enum u32 {GDK_AXIS_IGNORE = 0, GDK_AXIS_X = 1, GDK_AXIS_Y = 2, GDK_AXIS_PRESSURE = 3, GDK_AXIS_XTILT = 4, GDK_AXIS_YTILT = 5, GDK_AXIS_WHEEL = 6, GDK_AXIS_DISTANCE = 7, GDK_AXIS_ROTATION = 8, GDK_AXIS_SLIDER = 9, GDK_AXIS_LAST = 10}
		GdkByteOrder :: enum u32 {GDK_LSB_FIRST = 0, GDK_MSB_FIRST = 1}
		GdkColor :: struct {pixel: glib.uint32, red: glib.uint16, green: glib.uint16, blue: glib.uint16}
		GdkCrossingMode :: enum u32 {GDK_CROSSING_NORMAL = 0, GDK_CROSSING_GRAB = 1, GDK_CROSSING_UNGRAB = 2, GDK_CROSSING_GTK_GRAB = 3, GDK_CROSSING_GTK_UNGRAB = 4, GDK_CROSSING_STATE_CHANGED = 5, GDK_CROSSING_TOUCH_BEGIN = 6, GDK_CROSSING_TOUCH_END = 7, GDK_CROSSING_DEVICE_SWITCH = 8}
		GdkCursor :: struct #packed {}
		GdkCursorType :: enum i32 {GDK_X_CURSOR = 0, GDK_ARROW = 2, GDK_BASED_ARROW_DOWN = 4, GDK_BASED_ARROW_UP = 6, GDK_BOAT = 8, GDK_BOGOSITY = 10, GDK_BOTTOM_LEFT_CORNER = 12, GDK_BOTTOM_RIGHT_CORNER = 14, GDK_BOTTOM_SIDE = 16, GDK_BOTTOM_TEE = 18, GDK_BOX_SPIRAL = 20, GDK_CENTER_PTR = 22, GDK_CIRCLE = 24, GDK_CLOCK = 26, GDK_COFFEE_MUG = 28, GDK_CROSS = 30, GDK_CROSS_REVERSE = 32, GDK_CROSSHAIR = 34, GDK_DIAMOND_CROSS = 36, GDK_DOT = 38, GDK_DOTBOX = 40, GDK_DOUBLE_ARROW = 42, GDK_DRAFT_LARGE = 44, GDK_DRAFT_SMALL = 46, GDK_DRAPED_BOX = 48, GDK_EXCHANGE = 50, GDK_FLEUR = 52, GDK_GOBBLER = 54, GDK_GUMBY = 56, GDK_HAND1 = 58, GDK_HAND2 = 60, GDK_HEART = 62, GDK_ICON = 64, GDK_IRON_CROSS = 66, GDK_LEFT_PTR = 68, GDK_LEFT_SIDE = 70, GDK_LEFT_TEE = 72, GDK_LEFTBUTTON = 74, GDK_LL_ANGLE = 76, GDK_LR_ANGLE = 78, GDK_MAN = 80, GDK_MIDDLEBUTTON = 82, GDK_MOUSE = 84, GDK_PENCIL = 86, GDK_PIRATE = 88, GDK_PLUS = 90, GDK_QUESTION_ARROW = 92, GDK_RIGHT_PTR = 94, GDK_RIGHT_SIDE = 96, GDK_RIGHT_TEE = 98, GDK_RIGHTBUTTON = 100, GDK_RTL_LOGO = 102, GDK_SAILBOAT = 104, GDK_SB_DOWN_ARROW = 106, GDK_SB_H_DOUBLE_ARROW = 108, GDK_SB_LEFT_ARROW = 110, GDK_SB_RIGHT_ARROW = 112, GDK_SB_UP_ARROW = 114, GDK_SB_V_DOUBLE_ARROW = 116, GDK_SHUTTLE = 118, GDK_SIZING = 120, GDK_SPIDER = 122, GDK_SPRAYCAN = 124, GDK_STAR = 126, GDK_TARGET = 128, GDK_TCROSS = 130, GDK_TOP_LEFT_ARROW = 132, GDK_TOP_LEFT_CORNER = 134, GDK_TOP_RIGHT_CORNER = 136, GDK_TOP_SIDE = 138, GDK_TOP_TEE = 140, GDK_TREK = 142, GDK_UL_ANGLE = 144, GDK_UMBRELLA = 146, GDK_UR_ANGLE = 148, GDK_WATCH = 150, GDK_XTERM = 152, GDK_LAST_CURSOR = 153, GDK_BLANK_CURSOR = -2, GDK_CURSOR_IS_PIXMAP = -1}
		GdkDevice :: struct #packed {}
		GdkDeviceManager :: struct #packed {}
		GdkDevicePad :: struct #packed {}
		GdkDevicePadFeature :: enum u32 {GDK_DEVICE_PAD_FEATURE_BUTTON = 0, GDK_DEVICE_PAD_FEATURE_RING = 1, GDK_DEVICE_PAD_FEATURE_STRIP = 2}
		GdkDevicePadInterface :: struct #packed {}
		GdkDeviceTool :: struct #packed {}
		GdkDeviceToolType :: enum u32 {GDK_DEVICE_TOOL_TYPE_UNKNOWN = 0, GDK_DEVICE_TOOL_TYPE_PEN = 1, GDK_DEVICE_TOOL_TYPE_ERASER = 2, GDK_DEVICE_TOOL_TYPE_BRUSH = 3, GDK_DEVICE_TOOL_TYPE_PENCIL = 4, GDK_DEVICE_TOOL_TYPE_AIRBRUSH = 5, GDK_DEVICE_TOOL_TYPE_MOUSE = 6, GDK_DEVICE_TOOL_TYPE_LENS = 7}
		GdkDeviceType :: enum u32 {GDK_DEVICE_TYPE_MASTER = 0, GDK_DEVICE_TYPE_SLAVE = 1, GDK_DEVICE_TYPE_FLOATING = 2}
		GdkDisplay :: struct #packed {}
		GdkDisplayManager :: struct #packed {}
		GdkDragAction :: bit_set[GdkDragActionBit]
		GdkDragActionBit :: enum u32 {ACTION_DEFAULT = 0, ACTION_COPY = 1, ACTION_MOVE = 2, ACTION_LINK = 3, ACTION_PRIVATE = 4, ACTION_ASK = 5}
		GdkDragCancelReason :: enum u32 {GDK_DRAG_CANCEL_NO_TARGET = 0, GDK_DRAG_CANCEL_USER_CANCELLED = 1, GDK_DRAG_CANCEL_ERROR = 2}
		GdkDragContext :: struct #packed {}
		GdkDragProtocol :: enum u32 {GDK_DRAG_PROTO_NONE = 0, GDK_DRAG_PROTO_MOTIF = 1, GDK_DRAG_PROTO_XDND = 2, GDK_DRAG_PROTO_ROOTWIN = 3, GDK_DRAG_PROTO_WIN32_DROPFILES = 4, GDK_DRAG_PROTO_OLE2 = 5, GDK_DRAG_PROTO_LOCAL = 6, GDK_DRAG_PROTO_WAYLAND = 7}
		GdkDrawingContext :: struct #packed {}
		GdkDrawingContextClass :: struct #packed {}
		GdkEvent :: struct #raw_union {type: GdkEventType, any_m: GdkEventAny, expose: GdkEventExpose, visibility: GdkEventVisibility, motion: GdkEventMotion, button: GdkEventButton, touch: GdkEventTouch, scroll: GdkEventScroll, key: GdkEventKey, crossing: GdkEventCrossing, focus_change: GdkEventFocus, configure: GdkEventConfigure, property: GdkEventProperty, selection: GdkEventSelection, owner_change: GdkEventOwnerChange, proximity: GdkEventProximity, dnd: GdkEventDND, window_state: GdkEventWindowState, setting: GdkEventSetting, grab_broken: GdkEventGrabBroken, touchpad_swipe: GdkEventTouchpadSwipe, touchpad_pinch: GdkEventTouchpadPinch, pad_button: GdkEventPadButton, pad_axis: GdkEventPadAxis, pad_group_mode: GdkEventPadGroupMode}
		GdkEventAny :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8}
		GdkEventButton :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, axes: [^]glib.double, state: GdkModifierType, button: glib.uint_, device: ^GdkDevice, x_root: glib.double, y_root: glib.double}
		GdkEventConfigure :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_}
		GdkEventCrossing :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, subwindow: ^GdkWindow, time: glib.uint32, x: glib.double, y: glib.double, x_root: glib.double, y_root: glib.double, mode: GdkCrossingMode, detail: GdkNotifyType, focus: glib.boolean, state: GdkModifierType}
		GdkEventDND :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, context_m: ^GdkDragContext, time: glib.uint32, x_root: glib.short, y_root: glib.short}
		GdkEventExpose :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, area: GdkRectangle, region: ^cairo.region_t, count: glib.int_}
		GdkEventFocus :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, in_m: glib.int16}
		GdkEventFunc :: #type proc(event: ^GdkEvent, data: glib.pointer)
		GdkEventGrabBroken :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, keyboard: glib.boolean, implicit: glib.boolean, grab_window: ^GdkWindow}
		GdkEventKey :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, state: GdkModifierType, keyval: glib.uint_, length: glib.int_, string: cstring, hardware_keycode: glib.uint16, group: glib.uint8, using _: bit_field glib.uint_ {is_modifier: glib.uint_ | 1}}
		GdkEventMask :: bit_set[GdkEventMaskBit]
		GdkEventMaskBit :: enum u32 {EXPOSURE_MASK = 1, POINTER_MOTION_MASK = 2, POINTER_MOTION_HINT_MASK = 3, BUTTON_MOTION_MASK = 4, BUTTON1_MOTION_MASK = 5, BUTTON2_MOTION_MASK = 6, BUTTON3_MOTION_MASK = 7, BUTTON_PRESS_MASK = 8, BUTTON_RELEASE_MASK = 9, KEY_PRESS_MASK = 10, KEY_RELEASE_MASK = 11, ENTER_NOTIFY_MASK = 12, LEAVE_NOTIFY_MASK = 13, FOCUS_CHANGE_MASK = 14, STRUCTURE_MASK = 15, PROPERTY_CHANGE_MASK = 16, VISIBILITY_NOTIFY_MASK = 17, PROXIMITY_IN_MASK = 18, PROXIMITY_OUT_MASK = 19, SUBSTRUCTURE_MASK = 20, SCROLL_MASK = 21, TOUCH_MASK = 22, SMOOTH_SCROLL_MASK = 23, TOUCHPAD_GESTURE_MASK = 24, TABLET_PAD_MASK = 25}
		GdkEventMotion :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, axes: [^]glib.double, state: GdkModifierType, is_hint: glib.int16, device: ^GdkDevice, x_root: glib.double, y_root: glib.double}
		GdkEventOwnerChange :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, owner: ^GdkWindow, reason: GdkOwnerChange, selection: GdkAtom, time: glib.uint32, selection_time: glib.uint32}
		GdkEventPadAxis :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, group: glib.uint_, index: glib.uint_, mode: glib.uint_, value: glib.double}
		GdkEventPadButton :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, group: glib.uint_, button: glib.uint_, mode: glib.uint_}
		GdkEventPadGroupMode :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, group: glib.uint_, mode: glib.uint_}
		GdkEventProperty :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, atom: GdkAtom, time: glib.uint32, state: glib.uint_}
		GdkEventProximity :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, device: ^GdkDevice}
		GdkEventScroll :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, state: GdkModifierType, direction: GdkScrollDirection, device: ^GdkDevice, x_root: glib.double, y_root: glib.double, delta_x: glib.double, delta_y: glib.double, using _: bit_field glib.uint_ {is_stop: glib.uint_ | 1}}
		GdkEventSelection :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, selection: GdkAtom, target: GdkAtom, property: GdkAtom, time: glib.uint32, requestor: ^GdkWindow}
		GdkEventSequence :: struct #packed {}
		GdkEventSetting :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, action: GdkSettingAction, name: cstring}
		GdkEventTouch :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, axes: [^]glib.double, state: GdkModifierType, sequence: ^GdkEventSequence, emulating_pointer: glib.boolean, device: ^GdkDevice, x_root: glib.double, y_root: glib.double}
		GdkEventTouchpadPinch :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, phase: glib.int8, n_fingers: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, dx: glib.double, dy: glib.double, angle_delta: glib.double, scale: glib.double, x_root: glib.double, y_root: glib.double, state: GdkModifierType}
		GdkEventTouchpadSwipe :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, phase: glib.int8, n_fingers: glib.int8, time: glib.uint32, x: glib.double, y: glib.double, dx: glib.double, dy: glib.double, x_root: glib.double, y_root: glib.double, state: GdkModifierType}
		GdkEventType :: enum i32 {GDK_NOTHING = -1, GDK_DELETE = 0, GDK_DESTROY = 1, GDK_EXPOSE = 2, GDK_MOTION_NOTIFY = 3, GDK_BUTTON_PRESS = 4, GDK_2BUTTON_PRESS = 5, GDK_DOUBLE_BUTTON_PRESS = 5, GDK_3BUTTON_PRESS = 6, GDK_TRIPLE_BUTTON_PRESS = 6, GDK_BUTTON_RELEASE = 7, GDK_KEY_PRESS = 8, GDK_KEY_RELEASE = 9, GDK_ENTER_NOTIFY = 10, GDK_LEAVE_NOTIFY = 11, GDK_FOCUS_CHANGE = 12, GDK_CONFIGURE = 13, GDK_MAP = 14, GDK_UNMAP = 15, GDK_PROPERTY_NOTIFY = 16, GDK_SELECTION_CLEAR = 17, GDK_SELECTION_REQUEST = 18, GDK_SELECTION_NOTIFY = 19, GDK_PROXIMITY_IN = 20, GDK_PROXIMITY_OUT = 21, GDK_DRAG_ENTER = 22, GDK_DRAG_LEAVE = 23, GDK_DRAG_MOTION = 24, GDK_DRAG_STATUS = 25, GDK_DROP_START = 26, GDK_DROP_FINISHED = 27, GDK_CLIENT_EVENT = 28, GDK_VISIBILITY_NOTIFY = 29, GDK_SCROLL = 31, GDK_WINDOW_STATE = 32, GDK_SETTING = 33, GDK_OWNER_CHANGE = 34, GDK_GRAB_BROKEN = 35, GDK_DAMAGE = 36, GDK_TOUCH_BEGIN = 37, GDK_TOUCH_UPDATE = 38, GDK_TOUCH_END = 39, GDK_TOUCH_CANCEL = 40, GDK_TOUCHPAD_SWIPE = 41, GDK_TOUCHPAD_PINCH = 42, GDK_PAD_BUTTON_PRESS = 43, GDK_PAD_BUTTON_RELEASE = 44, GDK_PAD_RING = 45, GDK_PAD_STRIP = 46, GDK_PAD_GROUP_MODE = 47, GDK_EVENT_LAST = 48}
		GdkEventVisibility :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, state: GdkVisibilityState}
		GdkEventWindowState :: struct {type: GdkEventType, window: ^GdkWindow, send_event: glib.int8, changed_mask: GdkWindowState, new_window_state: GdkWindowState}
		GdkFilterFunc :: #type proc(xevent: ^GdkXEvent, event: ^GdkEvent, data: glib.pointer) -> GdkFilterReturn
		GdkFilterReturn :: enum u32 {GDK_FILTER_CONTINUE = 0, GDK_FILTER_TRANSLATE = 1, GDK_FILTER_REMOVE = 2}
		GdkFrameClock :: struct #packed {}
		GdkFrameClockClass :: struct #packed {}
		GdkFrameClockPhase :: bit_set[GdkFrameClockPhaseBit]
		GdkFrameClockPhaseBit :: enum u32 {FRAME_CLOCK_PHASE_FLUSH_EVENTS = 0, FRAME_CLOCK_PHASE_BEFORE_PAINT = 1, FRAME_CLOCK_PHASE_UPDATE = 2, FRAME_CLOCK_PHASE_LAYOUT = 3, FRAME_CLOCK_PHASE_PAINT = 4, FRAME_CLOCK_PHASE_RESUME_EVENTS = 5, FRAME_CLOCK_PHASE_AFTER_PAINT = 6}
		GdkFrameClockPrivate :: struct #packed {}
		GdkFrameTimings :: struct #packed {}
		GdkFullscreenMode :: enum u32 {GDK_FULLSCREEN_ON_CURRENT_MONITOR = 0, GDK_FULLSCREEN_ON_ALL_MONITORS = 1}
		GdkGLContext :: struct #packed {}
		GdkGLError :: enum u32 {GDK_GL_ERROR_NOT_AVAILABLE = 0, GDK_GL_ERROR_UNSUPPORTED_FORMAT = 1, GDK_GL_ERROR_UNSUPPORTED_PROFILE = 2}
		GdkGeometry :: struct {min_width: glib.int_, min_height: glib.int_, max_width: glib.int_, max_height: glib.int_, base_width: glib.int_, base_height: glib.int_, width_inc: glib.int_, height_inc: glib.int_, min_aspect: glib.double, max_aspect: glib.double, win_gravity: GdkGravity}
		GdkGrabOwnership :: enum u32 {GDK_OWNERSHIP_NONE = 0, GDK_OWNERSHIP_WINDOW = 1, GDK_OWNERSHIP_APPLICATION = 2}
		GdkGrabStatus :: enum u32 {GDK_GRAB_SUCCESS = 0, GDK_GRAB_ALREADY_GRABBED = 1, GDK_GRAB_INVALID_TIME = 2, GDK_GRAB_NOT_VIEWABLE = 3, GDK_GRAB_FROZEN = 4, GDK_GRAB_FAILED = 5}
		GdkGravity :: enum u32 {GDK_GRAVITY_NORTH_WEST = 1, GDK_GRAVITY_NORTH = 2, GDK_GRAVITY_NORTH_EAST = 3, GDK_GRAVITY_WEST = 4, GDK_GRAVITY_CENTER = 5, GDK_GRAVITY_EAST = 6, GDK_GRAVITY_SOUTH_WEST = 7, GDK_GRAVITY_SOUTH = 8, GDK_GRAVITY_SOUTH_EAST = 9, GDK_GRAVITY_STATIC = 10}
		GdkInputMode :: enum u32 {GDK_MODE_DISABLED = 0, GDK_MODE_SCREEN = 1, GDK_MODE_WINDOW = 2}
		GdkInputSource :: enum u32 {GDK_SOURCE_MOUSE = 0, GDK_SOURCE_PEN = 1, GDK_SOURCE_ERASER = 2, GDK_SOURCE_CURSOR = 3, GDK_SOURCE_KEYBOARD = 4, GDK_SOURCE_TOUCHSCREEN = 5, GDK_SOURCE_TOUCHPAD = 6, GDK_SOURCE_TRACKPOINT = 7, GDK_SOURCE_TABLET_PAD = 8}
		GdkKeymap :: struct #packed {}
		GdkKeymapKey :: struct {keycode: glib.uint_, group: glib.int_, level: glib.int_}
		GdkModifierIntent :: enum u32 {GDK_MODIFIER_INTENT_PRIMARY_ACCELERATOR = 0, GDK_MODIFIER_INTENT_CONTEXT_MENU = 1, GDK_MODIFIER_INTENT_EXTEND_SELECTION = 2, GDK_MODIFIER_INTENT_MODIFY_SELECTION = 3, GDK_MODIFIER_INTENT_NO_TEXT_INPUT = 4, GDK_MODIFIER_INTENT_SHIFT_GROUP = 5, GDK_MODIFIER_INTENT_DEFAULT_MOD_MASK = 6}
		GdkModifierType :: bit_set[GdkModifierTypeBit]
		GdkModifierTypeBit :: enum u32 {SHIFT_MASK = 0, LOCK_MASK = 1, CONTROL_MASK = 2, MOD1_MASK = 3, MOD2_MASK = 4, MOD3_MASK = 5, MOD4_MASK = 6, MOD5_MASK = 7, BUTTON1_MASK = 8, BUTTON2_MASK = 9, BUTTON3_MASK = 10, BUTTON4_MASK = 11, BUTTON5_MASK = 12, MODIFIER_RESERVED_13_MASK = 13, MODIFIER_RESERVED_14_MASK = 14, MODIFIER_RESERVED_15_MASK = 15, MODIFIER_RESERVED_16_MASK = 16, MODIFIER_RESERVED_17_MASK = 17, MODIFIER_RESERVED_18_MASK = 18, MODIFIER_RESERVED_19_MASK = 19, MODIFIER_RESERVED_20_MASK = 20, MODIFIER_RESERVED_21_MASK = 21, MODIFIER_RESERVED_22_MASK = 22, MODIFIER_RESERVED_23_MASK = 23, MODIFIER_RESERVED_24_MASK = 24, MODIFIER_RESERVED_25_MASK = 25, SUPER_MASK = 26, HYPER_MASK = 27, META_MASK = 28, MODIFIER_RESERVED_29_MASK = 29, RELEASE_MASK = 30}
		GdkMonitor :: struct #packed {}
		GdkMonitorClass :: struct #packed {}
		GdkNotifyType :: enum u32 {GDK_NOTIFY_ANCESTOR = 0, GDK_NOTIFY_VIRTUAL = 1, GDK_NOTIFY_INFERIOR = 2, GDK_NOTIFY_NONLINEAR = 3, GDK_NOTIFY_NONLINEAR_VIRTUAL = 4, GDK_NOTIFY_UNKNOWN = 5}
		GdkOwnerChange :: enum u32 {GDK_OWNER_CHANGE_NEW_OWNER = 0, GDK_OWNER_CHANGE_DESTROY = 1, GDK_OWNER_CHANGE_CLOSE = 2}
		GdkPoint :: struct {x: glib.int_, y: glib.int_}
		GdkPropMode :: enum u32 {GDK_PROP_MODE_REPLACE = 0, GDK_PROP_MODE_PREPEND = 1, GDK_PROP_MODE_APPEND = 2}
		GdkPropertyState :: enum u32 {GDK_PROPERTY_NEW_VALUE = 0, GDK_PROPERTY_DELETE = 1}
		GdkRGBA :: struct {red: glib.double, green: glib.double, blue: glib.double, alpha: glib.double}
		GdkRectangle :: cairo.rectangle_int_t
		GdkScreen :: struct #packed {}
		GdkScrollDirection :: enum u32 {GDK_SCROLL_UP = 0, GDK_SCROLL_DOWN = 1, GDK_SCROLL_LEFT = 2, GDK_SCROLL_RIGHT = 3, GDK_SCROLL_SMOOTH = 4}
		GdkSeat :: struct {parent_instance: gobj.Object}
		GdkSeatCapabilities :: bit_set[GdkSeatCapabilitiesBit]
		GdkSeatCapabilitiesBit :: enum u32 {SEAT_CAPABILITY_POINTER = 0, SEAT_CAPABILITY_TOUCH = 1, SEAT_CAPABILITY_TABLET_STYLUS = 2, SEAT_CAPABILITY_KEYBOARD = 3}
		GdkSeatGrabPrepareFunc :: #type proc(seat: ^GdkSeat, window: ^GdkWindow, user_data: glib.pointer)
		GdkSettingAction :: enum u32 {GDK_SETTING_ACTION_NEW = 0, GDK_SETTING_ACTION_CHANGED = 1, GDK_SETTING_ACTION_DELETED = 2}
		GdkStatus :: enum i32 {GDK_OK = 0, GDK_ERROR = -1, GDK_ERROR_PARAM = -2, GDK_ERROR_FILE = -3, GDK_ERROR_MEM = -4}
		GdkSubpixelLayout :: enum u32 {GDK_SUBPIXEL_LAYOUT_UNKNOWN = 0, GDK_SUBPIXEL_LAYOUT_NONE = 1, GDK_SUBPIXEL_LAYOUT_HORIZONTAL_RGB = 2, GDK_SUBPIXEL_LAYOUT_HORIZONTAL_BGR = 3, GDK_SUBPIXEL_LAYOUT_VERTICAL_RGB = 4, GDK_SUBPIXEL_LAYOUT_VERTICAL_BGR = 5}
		GdkTimeCoord :: struct {time: glib.uint32, axes: [128]glib.double}
		GdkTouchpadGesturePhase :: enum u32 {GDK_TOUCHPAD_GESTURE_PHASE_BEGIN = 0, GDK_TOUCHPAD_GESTURE_PHASE_UPDATE = 1, GDK_TOUCHPAD_GESTURE_PHASE_END = 2, GDK_TOUCHPAD_GESTURE_PHASE_CANCEL = 3}
		GdkVisibilityState :: enum u32 {GDK_VISIBILITY_UNOBSCURED = 0, GDK_VISIBILITY_PARTIAL = 1, GDK_VISIBILITY_FULLY_OBSCURED = 2}
		GdkVisual :: struct #packed {}
		GdkVisualType :: enum u32 {GDK_VISUAL_STATIC_GRAY = 0, GDK_VISUAL_GRAYSCALE = 1, GDK_VISUAL_STATIC_COLOR = 2, GDK_VISUAL_PSEUDO_COLOR = 3, GDK_VISUAL_TRUE_COLOR = 4, GDK_VISUAL_DIRECT_COLOR = 5}
		GdkWMDecoration :: bit_set[GdkWMDecorationBit]
		GdkWMDecorationBit :: enum u32 {DECOR_ALL = 0, DECOR_BORDER = 1, DECOR_RESIZEH = 2, DECOR_TITLE = 3, DECOR_MENU = 4, DECOR_MINIMIZE = 5, DECOR_MAXIMIZE = 6}
		GdkWMFunction :: bit_set[GdkWMFunctionBit]
		GdkWMFunctionBit :: enum u32 {FUNC_ALL = 0, FUNC_RESIZE = 1, FUNC_MOVE = 2, FUNC_MINIMIZE = 3, FUNC_MAXIMIZE = 4, FUNC_CLOSE = 5}
		GdkWindow :: struct #packed {}
		GdkWindowAttr :: struct {title: cstring, event_mask: glib.int_, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, wclass: GdkWindowWindowClass, visual: ^GdkVisual, window_type: GdkWindowType, cursor: ^GdkCursor, wmclass_name: cstring, wmclass_class: cstring, override_redirect: glib.boolean, type_hint: GdkWindowTypeHint}
		GdkWindowAttributesType :: bit_set[GdkWindowAttributesTypeBit]
		GdkWindowAttributesTypeBit :: enum u32 {WA_TITLE = 1, WA_X = 2, WA_Y = 3, WA_CURSOR = 4, WA_VISUAL = 5, WA_WMCLASS = 6, WA_NOREDIR = 7, WA_TYPE_HINT = 8}
		GdkWindowChildFunc :: #type proc(window: ^GdkWindow, user_data: glib.pointer) -> glib.boolean
		GdkWindowClass :: struct {parent_class: gobj.ObjectClass, pick_embedded_child: pick_embedded_child_func_ptr_anon_0, to_embedder: to_embedder_func_ptr_anon_1, from_embedder: from_embedder_func_ptr_anon_2, create_surface: create_surface_func_ptr_anon_3, _gdk_reserved1: _gdk_reserved1_func_ptr_anon_4, _gdk_reserved2: _gdk_reserved2_func_ptr_anon_5, _gdk_reserved3: _gdk_reserved3_func_ptr_anon_6, _gdk_reserved4: _gdk_reserved4_func_ptr_anon_7, _gdk_reserved5: _gdk_reserved5_func_ptr_anon_8, _gdk_reserved6: _gdk_reserved6_func_ptr_anon_9, _gdk_reserved7: _gdk_reserved7_func_ptr_anon_10, _gdk_reserved8: _gdk_reserved8_func_ptr_anon_11}
		GdkWindowEdge :: enum u32 {GDK_WINDOW_EDGE_NORTH_WEST = 0, GDK_WINDOW_EDGE_NORTH = 1, GDK_WINDOW_EDGE_NORTH_EAST = 2, GDK_WINDOW_EDGE_WEST = 3, GDK_WINDOW_EDGE_EAST = 4, GDK_WINDOW_EDGE_SOUTH_WEST = 5, GDK_WINDOW_EDGE_SOUTH = 6, GDK_WINDOW_EDGE_SOUTH_EAST = 7}
		GdkWindowHints :: bit_set[GdkWindowHintsBit]
		GdkWindowHintsBit :: enum u32 {HINT_POS = 0, HINT_MIN_SIZE = 1, HINT_MAX_SIZE = 2, HINT_BASE_SIZE = 3, HINT_ASPECT = 4, HINT_RESIZE_INC = 5, HINT_WIN_GRAVITY = 6, HINT_USER_POS = 7, HINT_USER_SIZE = 8}
		GdkWindowInvalidateHandlerFunc :: #type proc(window: ^GdkWindow, region: ^cairo.region_t)
		GdkWindowRedirect :: struct #packed {}
		GdkWindowState :: bit_set[GdkWindowStateBit]
		GdkWindowStateBit :: enum u32 {WINDOW_STATE_WITHDRAWN = 0, WINDOW_STATE_ICONIFIED = 1, WINDOW_STATE_MAXIMIZED = 2, WINDOW_STATE_STICKY = 3, WINDOW_STATE_FULLSCREEN = 4, WINDOW_STATE_ABOVE = 5, WINDOW_STATE_BELOW = 6, WINDOW_STATE_FOCUSED = 7, WINDOW_STATE_TILED = 8, WINDOW_STATE_TOP_TILED = 9, WINDOW_STATE_TOP_RESIZABLE = 10, WINDOW_STATE_RIGHT_TILED = 11, WINDOW_STATE_RIGHT_RESIZABLE = 12, WINDOW_STATE_BOTTOM_TILED = 13, WINDOW_STATE_BOTTOM_RESIZABLE = 14, WINDOW_STATE_LEFT_TILED = 15, WINDOW_STATE_LEFT_RESIZABLE = 16}
		GdkWindowType :: enum u32 {GDK_WINDOW_ROOT = 0, GDK_WINDOW_TOPLEVEL = 1, GDK_WINDOW_CHILD = 2, GDK_WINDOW_TEMP = 3, GDK_WINDOW_FOREIGN = 4, GDK_WINDOW_OFFSCREEN = 5, GDK_WINDOW_SUBSURFACE = 6}
		GdkWindowTypeHint :: enum u32 {GDK_WINDOW_TYPE_HINT_NORMAL = 0, GDK_WINDOW_TYPE_HINT_DIALOG = 1, GDK_WINDOW_TYPE_HINT_MENU = 2, GDK_WINDOW_TYPE_HINT_TOOLBAR = 3, GDK_WINDOW_TYPE_HINT_SPLASHSCREEN = 4, GDK_WINDOW_TYPE_HINT_UTILITY = 5, GDK_WINDOW_TYPE_HINT_DOCK = 6, GDK_WINDOW_TYPE_HINT_DESKTOP = 7, GDK_WINDOW_TYPE_HINT_DROPDOWN_MENU = 8, GDK_WINDOW_TYPE_HINT_POPUP_MENU = 9, GDK_WINDOW_TYPE_HINT_TOOLTIP = 10, GDK_WINDOW_TYPE_HINT_NOTIFICATION = 11, GDK_WINDOW_TYPE_HINT_COMBO = 12, GDK_WINDOW_TYPE_HINT_DND = 13}
		GdkWindowWindowClass :: enum u32 {GDK_INPUT_OUTPUT = 0, GDK_INPUT_ONLY = 1}
		GdkXEvent :: struct {}
			GdkXEvent is `void` in C: a native event, cast to the window system's own type.

		Gesture :: struct #packed {}
		GestureClass :: struct #packed {}
		GestureDrag :: struct #packed {}
		GestureDragClass :: struct #packed {}
		GestureLongPress :: struct #packed {}
		GestureLongPressClass :: struct #packed {}
		GestureMultiPress :: struct #packed {}
		GestureMultiPressClass :: struct #packed {}
		GesturePan :: struct #packed {}
		GesturePanClass :: struct #packed {}
		GestureRotate :: struct #packed {}
		GestureRotateClass :: struct #packed {}
		GestureSingle :: struct #packed {}
		GestureSingleClass :: struct #packed {}
		GestureStylus :: struct #packed {}
		GestureStylusClass :: struct #packed {}
		GestureSwipe :: struct #packed {}
		GestureSwipeClass :: struct #packed {}
		GestureZoom :: struct #packed {}
		GestureZoomClass :: struct #packed {}
		Gradient :: struct #packed {}
		Grid :: struct {container: Container, priv: ^ridPrivate}
		GridClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_641, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_642, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_643, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_644, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_645, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_646, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_647, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_648}
		GridPrivate :: struct #packed {}
		HBox :: struct {box: Box}
		HBoxClass :: struct {parent_class: BoxClass}
		HButtonBox :: struct {button_box: ButtonBox}
		HButtonBoxClass :: struct {parent_class: ButtonBoxClass}
		HPaned :: struct {paned: Paned}
		HPanedClass :: struct {parent_class: PanedClass}
		HSV :: struct {parent_instance: Widget, priv: ^HSVPrivate}
		HSVClass :: struct {parent_class: WidgetClass, changed: changed_func_ptr_anon_1135, move: move_func_ptr_anon_1136, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1137, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1138, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1139, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1140}
		HSVPrivate :: struct #packed {}
		HScale :: struct {scale: Scale}
		HScaleClass :: struct {parent_class: ScaleClass}
		HScrollbar :: struct {scrollbar: Scrollbar}
		HScrollbarClass :: struct {parent_class: ScrollbarClass}
		HSeparator :: struct {separator: Separator}
		HSeparatorClass :: struct {parent_class: SeparatorClass}
		HandleBox :: struct {bin: Bin, priv: ^HandleBoxPrivate}
		HandleBoxClass :: struct {parent_class: BinClass, child_attached: child_attached_func_ptr_anon_1129, child_detached: child_detached_func_ptr_anon_1130, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1131, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1132, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1133, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1134}
		HandleBoxPrivate :: struct #packed {}
		HeaderBar :: struct {container: Container}
		HeaderBarClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_649, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_650, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_651, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_652}
		HeaderBarPrivate :: struct #packed {}
		IMContext :: struct {parent_instance: gobj.Object}
		IMContextClass :: struct {parent_class: gobj.ObjectClass, preedit_start: preedit_start_func_ptr_anon_281, preedit_end: preedit_end_func_ptr_anon_282, preedit_changed: preedit_changed_func_ptr_anon_283, commit: commit_func_ptr_anon_284, retrieve_surrounding: retrieve_surrounding_func_ptr_anon_285, delete_surrounding: delete_surrounding_func_ptr_anon_286, set_client_window: set_client_window_func_ptr_anon_287, get_preedit_string: et_preedit_string_func_ptr_anon_288, filter_keypress: filter_keypress_func_ptr_anon_289, focus_in: focus_in_func_ptr_anon_290, focus_out: focus_out_func_ptr_anon_291, reset: reset_func_ptr_anon_292, set_cursor_location: set_cursor_location_func_ptr_anon_293, set_use_preedit: set_use_preedit_func_ptr_anon_294, set_surrounding: set_surrounding_func_ptr_anon_295, get_surrounding: et_surrounding_func_ptr_anon_296, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_297, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_298, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_299, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_300, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_301, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_302}
		IMContextInfo :: struct {context_id: cstring, context_name: cstring, domain: cstring, domain_dirname: cstring, default_locales: cstring}
		IMContextSimple :: struct {object: IMContext, priv: ^IMContextSimplePrivate}
		IMContextSimpleClass :: struct {parent_class: IMContextClass}
		IMContextSimplePrivate :: struct #packed {}
		IMMulticontext :: struct {object: IMContext, priv: ^IMMulticontextPrivate}
		IMMulticontextClass :: struct {parent_class: IMContextClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_686, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_687, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_688, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_689}
		IMMulticontextPrivate :: struct #packed {}
		IMPreeditStyle :: enum u32 {IM_PREEDIT_NOTHING = 0, IM_PREEDIT_CALLBACK = 1, IM_PREEDIT_NONE = 2}
		IMStatusStyle :: enum u32 {IM_STATUS_NOTHING = 0, IM_STATUS_CALLBACK = 1, IM_STATUS_NONE = 2}
		IconFactory :: struct {parent_instance: gobj.Object, priv: ^IconFactoryPrivate}
		IconFactoryClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_653, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_654, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_655, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_656}
		IconFactoryPrivate :: struct #packed {}
		IconInfo :: struct #packed {}
		IconInfoClass :: struct #packed {}
		IconLookupFlags :: bit_set[IconLookupFlagsBit]
		IconLookupFlagsBit :: enum u32 {ICON_LOOKUP_NO_SVG = 0, ICON_LOOKUP_FORCE_SVG = 1, ICON_LOOKUP_USE_BUILTIN = 2, ICON_LOOKUP_GENERIC_FALLBACK = 3, ICON_LOOKUP_FORCE_SIZE = 4, ICON_LOOKUP_FORCE_REGULAR = 5, ICON_LOOKUP_FORCE_SYMBOLIC = 6, ICON_LOOKUP_DIR_LTR = 7, ICON_LOOKUP_DIR_RTL = 8}
		IconSet :: struct #packed {}
		IconSize :: enum u32 {INVALID = 0, MENU = 1, SMALL_TOOLBAR = 2, LARGE_TOOLBAR = 3, BUTTON = 4, DND = 5, DIALOG = 6}
		IconSource :: struct #packed {}
		IconTheme :: struct {parent_instance: gobj.Object, priv: ^IconThemePrivate}
		IconThemeClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_669, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_670, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_671, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_672, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_673}
		IconThemeError :: enum u32 {ICON_THEME_NOT_FOUND = 0, ICON_THEME_FAILED = 1}
		IconThemePrivate :: struct #packed {}
		IconView :: struct {parent: Container, priv: ^IconViewPrivate}
		IconViewClass :: struct {parent_class: ContainerClass, item_activated: item_activated_func_ptr_anon_674, selection_changed: selection_changed_func_ptr_anon_675, select_all: select_all_func_ptr_anon_676, unselect_all: unselect_all_func_ptr_anon_677, select_cursor_item: select_cursor_item_func_ptr_anon_678, toggle_cursor_item: toggle_cursor_item_func_ptr_anon_679, move_cursor: move_cursor_func_ptr_anon_680, activate_cursor_item: activate_cursor_item_func_ptr_anon_681, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_682, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_683, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_684, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_685}
		IconViewDropPosition :: enum u32 {ICON_VIEW_NO_DROP = 0, ICON_VIEW_DROP_INTO = 1, ICON_VIEW_DROP_LEFT = 2, ICON_VIEW_DROP_RIGHT = 3, ICON_VIEW_DROP_ABOVE = 4, ICON_VIEW_DROP_BELOW = 5}
		IconViewForeachFunc :: #type proc(icon_view: ^IconView, path: ^TreePath, data: glib.pointer)
		IconViewPrivate :: struct #packed {}
		Image :: struct {misc: Misc, priv: ^ImagePrivate}
		ImageClass :: struct {parent_class: MiscClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_335, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_336, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_337, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_338}
		ImageMenuItem :: struct {menu_item: MenuItem, priv: ^ImageMenuItemPrivate}
		ImageMenuItemClass :: struct {parent_class: MenuItemClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1141, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1142, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1143, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1144}
		ImageMenuItemPrivate :: struct #packed {}
		ImagePrivate :: struct #packed {}
		ImageType :: enum u32 {IMAGE_EMPTY = 0, IMAGE_PIXBUF = 1, IMAGE_STOCK = 2, IMAGE_ICON_SET = 3, IMAGE_ANIMATION = 4, IMAGE_ICON_NAME = 5, IMAGE_GICON = 6, IMAGE_SURFACE = 7}
		InfoBar :: struct {parent: Box, priv: ^InfoBarPrivate}
		InfoBarClass :: struct {parent_class: BoxClass, response: response_func_ptr_anon_690, close: close_func_ptr_anon_691, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_692, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_693, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_694, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_695}
		InfoBarPrivate :: struct #packed {}
		InputHints :: bit_set[InputHintsBit]
		InputHintsBit :: enum u32 {INPUT_HINT_SPELLCHECK = 0, INPUT_HINT_NO_SPELLCHECK = 1, INPUT_HINT_WORD_COMPLETION = 2, INPUT_HINT_LOWERCASE = 3, INPUT_HINT_UPPERCASE_CHARS = 4, INPUT_HINT_UPPERCASE_WORDS = 5, INPUT_HINT_UPPERCASE_SENTENCES = 6, INPUT_HINT_INHIBIT_OSK = 7, INPUT_HINT_VERTICAL_WRITING = 8, INPUT_HINT_EMOJI = 9, INPUT_HINT_NO_EMOJI = 10}
		InputPurpose :: enum u32 {FREE_FORM = 0, ALPHA = 1, DIGITS = 2, NUMBER = 3, PHONE = 4, URL = 5, EMAIL = 6, NAME = 7, PASSWORD = 8, PIN = 9, TERMINAL = 10}
		Invisible :: struct {widget: Widget, priv: ^InvisiblePrivate}
		InvisibleClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_696, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_697, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_698, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_699}
		InvisiblePrivate :: struct #packed {}
		JunctionSides :: bit_set[JunctionSidesBit]
		JunctionSidesBit :: enum u32 {JUNCTION_CORNER_TOPLEFT = 0, JUNCTION_CORNER_TOPRIGHT = 1, JUNCTION_CORNER_BOTTOMLEFT = 2, JUNCTION_CORNER_BOTTOMRIGHT = 3}
		Justification :: enum u32 {JUSTIFY_LEFT = 0, JUSTIFY_RIGHT = 1, JUSTIFY_CENTER = 2, JUSTIFY_FILL = 3}
		KeySnoopFunc :: #type proc(grab_widget: ^Widget, event: ^GdkEventKey, func_data: glib.pointer) -> glib.int_
		LArea :: GLArea
		LAreaClass :: GLAreaClass
		Label :: struct {misc: Misc, priv: ^LabelPrivate}
		LabelClass :: struct {parent_class: MiscClass, move_cursor: move_cursor_func_ptr_anon_144, copy_clipboard: copy_clipboard_func_ptr_anon_145, populate_popup: populate_popup_func_ptr_anon_146, activate_link: activate_link_func_ptr_anon_147, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_148, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_149, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_150, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_151, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_152, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_153, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_154, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_155}
		LabelPrivate :: struct #packed {}
		LabelSelectionInfo :: struct #packed {}
		Layout :: struct {container: Container, priv: ^LayoutPrivate}
		LayoutClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_700, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_701, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_702, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_703}
		LayoutPrivate :: struct #packed {}
		LevelBar :: struct {parent: Widget, priv: ^LevelBarPrivate}
		LevelBarClass :: struct {parent_class: WidgetClass, offset_changed: offset_changed_func_ptr_anon_704, padding: [16]glib.pointer}
		LevelBarMode :: enum u32 {CONTINUOUS = 0, DISCRETE = 1}
		LevelBarPrivate :: struct #packed {}
		License :: enum u32 {UNKNOWN = 0, CUSTOM = 1, GPL_2_0 = 2, GPL_3_0 = 3, LGPL_2_1 = 4, LGPL_3_0 = 5, BSD = 6, MIT_X11 = 7, ARTISTIC = 8, GPL_2_0_ONLY = 9, GPL_3_0_ONLY = 10, LGPL_2_1_ONLY = 11, LGPL_3_0_ONLY = 12, AGPL_3_0 = 13, AGPL_3_0_ONLY = 14, BSD_3 = 15, APACHE_2_0 = 16, MPL_2_0 = 17}
		LinkButton :: struct {parent_instance: Button, priv: ^LinkButtonPrivate}
		LinkButtonClass :: struct {parent_class: ButtonClass, activate_link: activate_link_func_ptr_anon_705, _gtk_padding1: _gtk_padding1_func_ptr_anon_706, _gtk_padding2: _gtk_padding2_func_ptr_anon_707, _gtk_padding3: _gtk_padding3_func_ptr_anon_708, _gtk_padding4: _gtk_padding4_func_ptr_anon_709}
		LinkButtonPrivate :: struct #packed {}
		ListBox :: struct {parent_instance: Container}
		ListBoxClass :: struct {parent_class: ContainerClass, row_selected: row_selected_func_ptr_anon_710, row_activated: row_activated_func_ptr_anon_711, activate_cursor_row: activate_cursor_row_func_ptr_anon_712, toggle_cursor_row: toggle_cursor_row_func_ptr_anon_713, move_cursor: move_cursor_func_ptr_anon_714, selected_rows_changed: selected_rows_changed_func_ptr_anon_715, select_all: select_all_func_ptr_anon_716, unselect_all: unselect_all_func_ptr_anon_717, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_718, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_719, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_720}
		ListBoxCreateWidgetFunc :: #type proc(item: glib.pointer, user_data: glib.pointer) -> ^Widget
		ListBoxFilterFunc :: #type proc(row: ^ListBoxRow, user_data: glib.pointer) -> glib.boolean
		ListBoxForeachFunc :: #type proc(box: ^ListBox, row: ^ListBoxRow, user_data: glib.pointer)
		ListBoxRow :: struct {parent_instance: Bin}
		ListBoxRowClass :: struct {parent_class: BinClass, activate: activate_func_ptr_anon_721, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_722, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_723}
		ListBoxSortFunc :: #type proc(row1: ^ListBoxRow, row2: ^ListBoxRow, user_data: glib.pointer) -> glib.int_
		ListBoxUpdateHeaderFunc :: #type proc(row: ^ListBoxRow, before: ^ListBoxRow, user_data: glib.pointer)
		ListStore :: struct {parent: gobj.Object, priv: ^ListStorePrivate}
		ListStoreClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_317, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_318, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_319, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_320}
		ListStorePrivate :: struct #packed {}
		LockButton :: struct {parent: Button, priv: ^LockButtonPrivate}
		LockButtonClass :: struct {parent_class: ButtonClass, reserved0: reserved0_func_ptr_anon_724, reserved1: reserved1_func_ptr_anon_725, reserved2: reserved2_func_ptr_anon_726, reserved3: reserved3_func_ptr_anon_727, reserved4: reserved4_func_ptr_anon_728, reserved5: reserved5_func_ptr_anon_729, reserved6: reserved6_func_ptr_anon_730, reserved7: reserved7_func_ptr_anon_731}
		LockButtonPrivate :: struct #packed {}
		Menu :: struct {menu_shell: MenuShell, priv: ^MenuPrivate}
		MenuBar :: struct {menu_shell: MenuShell, priv: ^MenuBarPrivate}
		MenuBarClass :: struct {parent_class: MenuShellClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_732, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_733, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_734, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_735}
		MenuBarPrivate :: struct #packed {}
		MenuButton :: struct {parent: ToggleButton, priv: ^MenuButtonPrivate}
		MenuButtonClass :: struct {parent_class: ToggleButtonClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_737, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_738, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_739, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_740}
		MenuButtonPrivate :: struct #packed {}
		MenuClass :: struct {parent_class: MenuShellClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_140, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_141, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_142, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_143}
		MenuDetachFunc :: #type proc(attach_widget: ^Widget, menu: ^Menu)
		MenuDirectionType :: enum u32 {MENU_DIR_PARENT = 0, MENU_DIR_CHILD = 1, MENU_DIR_NEXT = 2, MENU_DIR_PREV = 3}
		MenuItem :: struct {bin: Bin, priv: ^MenuItemPrivate}
		MenuItemClass :: [139]u64
		MenuItemPrivate :: struct #packed {}
		MenuPositionFunc :: #type proc(menu: ^Menu, x: ^glib.int_, y: ^glib.int_, push_in: ^glib.boolean, user_data: glib.pointer)
		MenuPrivate :: struct #packed {}
		MenuShell :: struct {container: Container, priv: ^MenuShellPrivate}
		MenuShellClass :: [136]u64
		MenuShellPrivate :: struct #packed {}
		MenuToolButton :: struct {parent: ToolButton, priv: ^MenuToolButtonPrivate}
		MenuToolButtonClass :: struct {parent_class: ToolButtonClass, show_menu: show_menu_func_ptr_anon_756, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_757, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_758, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_759, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_760}
		MenuToolButtonPrivate :: struct #packed {}
		MessageDialog :: struct {parent_instance: Dialog, priv: ^MessageDialogPrivate}
		MessageDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_761, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_762, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_763, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_764}
		MessageDialogPrivate :: struct #packed {}
		MessageType :: enum u32 {MESSAGE_INFO = 0, MESSAGE_WARNING = 1, MESSAGE_QUESTION = 2, MESSAGE_ERROR = 3, MESSAGE_OTHER = 4}
		Misc :: struct {widget: Widget, priv: ^MiscPrivate}
		MiscClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_136, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_137, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_138, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_139}
		MiscPrivate :: struct #packed {}
		ModelButton :: struct #packed {}
		ModuleDisplayInitFunc :: #type proc(display: ^GdkDisplay)
		ModuleInitFunc :: #type proc(argc: ^glib.int_, argv: ^^cstring)
		MountOperation :: struct {parent_instance: gio.MountOperation, priv: ^MountOperationPrivate}
		MountOperationClass :: struct {parent_class: gio.MountOperationClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_765, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_766, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_767, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_768}
		MountOperationPrivate :: struct #packed {}
		MovementStep :: enum u32 {MOVEMENT_LOGICAL_POSITIONS = 0, MOVEMENT_VISUAL_POSITIONS = 1, MOVEMENT_WORDS = 2, MOVEMENT_DISPLAY_LINES = 3, MOVEMENT_DISPLAY_LINE_ENDS = 4, MOVEMENT_PARAGRAPHS = 5, MOVEMENT_PARAGRAPH_ENDS = 6, MOVEMENT_PAGES = 7, MOVEMENT_BUFFER_ENDS = 8, MOVEMENT_HORIZONTAL_PAGES = 9}
		NativeDialog :: struct {parent_instance: gobj.Object}
		NativeDialogClass :: struct {parent_class: gobj.ObjectClass, response: response_func_ptr_anon_587, show: show_func_ptr_anon_588, hide: hide_func_ptr_anon_589, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_590, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_591, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_592, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_593}
		Notebook :: struct {container: Container, priv: ^NotebookPrivate}
		NotebookClass :: struct {parent_class: ContainerClass, switch_page: switch_page_func_ptr_anon_769, select_page: select_page_func_ptr_anon_770, focus_tab: focus_tab_func_ptr_anon_771, change_current_page: change_current_page_func_ptr_anon_772, move_focus_out: move_focus_out_func_ptr_anon_773, reorder_tab: reorder_tab_func_ptr_anon_774, insert_page: insert_page_func_ptr_anon_775, create_window: create_window_func_ptr_anon_776, page_reordered: page_reordered_func_ptr_anon_777, page_removed: page_removed_func_ptr_anon_778, page_added: page_added_func_ptr_anon_779, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_780, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_781, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_782, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_783, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_784, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_785, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_786, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_787}
		NotebookPrivate :: struct #packed {}
		NotebookTab :: enum u32 {FIRST = 0, LAST = 1}
		NumberUpLayout :: enum u32 {LEFT_TO_RIGHT_TOP_TO_BOTTOM = 0, LEFT_TO_RIGHT_BOTTOM_TO_TOP = 1, RIGHT_TO_LEFT_TOP_TO_BOTTOM = 2, RIGHT_TO_LEFT_BOTTOM_TO_TOP = 3, TOP_TO_BOTTOM_LEFT_TO_RIGHT = 4, TOP_TO_BOTTOM_RIGHT_TO_LEFT = 5, BOTTOM_TO_TOP_LEFT_TO_RIGHT = 6, BOTTOM_TO_TOP_RIGHT_TO_LEFT = 7}
		NumerableIcon :: struct {parent: gio.EmblemedIcon, priv: ^NumerableIconPrivate}
		NumerableIconClass :: struct {parent_class: gio.EmblemedIconClass, padding: [16]glib.pointer}
		NumerableIconPrivate :: struct #packed {}
		OffscreenWindow :: struct {parent_object: Window}
		OffscreenWindowClass :: struct {parent_class: WindowClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_788, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_789, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_790, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_791}
		Orientable :: struct #packed {}
		OrientableIface :: struct {base_iface: gobj.TypeInterface}
		Orientation :: enum u32 {HORIZONTAL = 0, VERTICAL = 1}
		Overlay :: struct {parent: Bin, priv: ^OverlayPrivate}
		OverlayClass :: struct {parent_class: BinClass, get_child_position: et_child_position_func_ptr_anon_792, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_793, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_794, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_795, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_796, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_797, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_798, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_799, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_800}
		OverlayPrivate :: struct #packed {}
		PackDirection :: enum u32 {LTR = 0, RTL = 1, TTB = 2, BTT = 3}
		PackType :: enum u32 {PACK_START = 0, PACK_END = 1}
		PadActionEntry :: struct {type: PadActionType, index: glib.int_, mode: glib.int_, label: cstring, action_name: cstring}
		PadActionType :: enum u32 {PAD_ACTION_BUTTON = 0, PAD_ACTION_RING = 1, PAD_ACTION_STRIP = 2}
		PadController :: struct #packed {}
		PadControllerClass :: struct #packed {}
		PageOrientation :: enum u32 {PORTRAIT = 0, LANDSCAPE = 1, REVERSE_PORTRAIT = 2, REVERSE_LANDSCAPE = 3}
		PageRange :: struct {start: glib.int_, end: glib.int_}
		PageSet :: enum u32 {ALL = 0, EVEN = 1, ODD = 2}
		PageSetup :: struct #packed {}
		PageSetupDoneFunc :: #type proc(page_setup: ^PageSetup, data: glib.pointer)
		PanDirection :: enum u32 {LEFT = 0, RIGHT = 1, UP = 2, DOWN = 3}
		Paned :: struct {container: Container, priv: ^PanedPrivate}
		PanedClass :: struct {parent_class: ContainerClass, cycle_child_focus: cycle_child_focus_func_ptr_anon_801, toggle_handle_focus: toggle_handle_focus_func_ptr_anon_802, move_handle: move_handle_func_ptr_anon_803, cycle_handle_focus: cycle_handle_focus_func_ptr_anon_804, accept_position: accept_position_func_ptr_anon_805, cancel_position: cancel_position_func_ptr_anon_806, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_807, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_808, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_809, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_810}
		PanedPrivate :: struct #packed {}
		PaperSize :: struct #packed {}
		PathPriorityType :: enum u32 {PATH_PRIO_LOWEST = 0, PATH_PRIO_GTK = 4, PATH_PRIO_APPLICATION = 8, PATH_PRIO_THEME = 10, PATH_PRIO_RC = 12, PATH_PRIO_HIGHEST = 15}
		PathType :: enum u32 {PATH_WIDGET = 0, PATH_WIDGET_CLASS = 1, PATH_CLASS = 2}
		PlacesOpenFlags :: bit_set[PlacesOpenFlagsBit]
		PlacesOpenFlagsBit :: enum u32 {PLACES_OPEN_NORMAL = 0, PLACES_OPEN_NEW_TAB = 1, PLACES_OPEN_NEW_WINDOW = 2}
		PlacesSidebar :: struct #packed {}
		PlacesSidebarClass :: struct #packed {}
		PolicyType :: enum u32 {POLICY_ALWAYS = 0, POLICY_AUTOMATIC = 1, POLICY_NEVER = 2, POLICY_EXTERNAL = 3}
		Popover :: struct {parent_instance: Bin, priv: ^PopoverPrivate}
		PopoverClass :: struct {parent_class: BinClass, closed: closed_func_ptr_anon_736, reserved: [10]glib.pointer}
		PopoverConstraint :: enum u32 {NONE = 0, WINDOW = 1}
		PopoverMenu :: struct #packed {}
		PopoverMenuClass :: struct {parent_class: PopoverClass, reserved: [10]glib.pointer}
		PopoverPrivate :: struct #packed {}
		PositionType :: enum u32 {POS_LEFT = 0, POS_RIGHT = 1, POS_TOP = 2, POS_BOTTOM = 3}
		PrintContext :: struct #packed {}
		PrintDuplex :: enum u32 {SIMPLEX = 0, HORIZONTAL = 1, VERTICAL = 2}
		PrintError :: enum u32 {GENERAL = 0, INTERNAL_ERROR = 1, NOMEM = 2, INVALID_FILE = 3}
		PrintOperation :: struct {parent_instance: gobj.Object, priv: ^PrintOperationPrivate}
		PrintOperationAction :: enum u32 {PRINT_DIALOG = 0, PRINT = 1, PREVIEW = 2, EXPORT = 3}
		PrintOperationClass :: struct {parent_class: gobj.ObjectClass, done: done_func_ptr_anon_824, begin_print: begin_print_func_ptr_anon_825, paginate: paginate_func_ptr_anon_826, request_page_setup: request_page_setup_func_ptr_anon_827, draw_page: draw_page_func_ptr_anon_828, end_print: end_print_func_ptr_anon_829, status_changed: status_changed_func_ptr_anon_830, create_custom_widget: create_custom_widget_func_ptr_anon_831, custom_widget_apply: custom_widget_apply_func_ptr_anon_832, preview: preview_func_ptr_anon_833, update_custom_widget: update_custom_widget_func_ptr_anon_834, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_835, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_836, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_837, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_838, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_839, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_840, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_841, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_842}
		PrintOperationPreview :: struct #packed {}
		PrintOperationPreviewIface :: struct {g_iface: gobj.TypeInterface, ready: ready_func_ptr_anon_811, got_page_size: ot_page_size_func_ptr_anon_812, render_page: render_page_func_ptr_anon_813, is_selected: is_selected_func_ptr_anon_814, end_preview: end_preview_func_ptr_anon_815, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_816, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_817, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_818, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_819, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_820, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_821, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_822, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_823}
		PrintOperationPrivate :: struct #packed {}
		PrintOperationResult :: enum u32 {ERROR = 0, APPLY = 1, CANCEL = 2, IN_PROGRESS = 3}
		PrintPages :: enum u32 {ALL = 0, CURRENT = 1, RANGES = 2, SELECTION = 3}
		PrintQuality :: enum u32 {LOW = 0, NORMAL = 1, HIGH = 2, DRAFT = 3}
		PrintSettings :: struct #packed {}
		PrintSettingsFunc :: #type proc(key: cstring, value: cstring, user_data: glib.pointer)
		PrintStatus :: enum u32 {INITIAL = 0, PREPARING = 1, GENERATING_DATA = 2, SENDING_DATA = 3, PENDING = 4, PENDING_ISSUE = 5, PRINTING = 6, FINISHED = 7, FINISHED_ABORTED = 8}
		ProgressBar :: struct {parent: Widget, priv: ^ProgressBarPrivate}
		ProgressBarClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_843, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_844, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_845, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_846}
		ProgressBarPrivate :: struct #packed {}
		PropagationPhase :: enum u32 {PHASE_NONE = 0, PHASE_CAPTURE = 1, PHASE_BUBBLE = 2, PHASE_TARGET = 3}
		RadioAction :: struct {parent: ToggleAction, private_data: ^RadioActionPrivate}
		RadioActionClass :: struct {parent_class: ToggleActionClass, changed: changed_func_ptr_anon_1150, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1151, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1152, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1153, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1154}
		RadioActionEntry :: struct {name: cstring, stock_id: cstring, label: cstring, accelerator: cstring, tooltip: cstring, value: glib.int_}
		RadioActionPrivate :: struct #packed {}
		RadioButton :: struct {check_button: CheckButton, priv: ^RadioButtonPrivate}
		RadioButtonClass :: struct {parent_class: CheckButtonClass, group_changed: roup_changed_func_ptr_anon_847, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_848, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_849, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_850, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_851}
		RadioButtonPrivate :: struct #packed {}
		RadioMenuItem :: struct {check_menu_item: CheckMenuItem, priv: ^RadioMenuItemPrivate}
		RadioMenuItemClass :: struct {parent_class: CheckMenuItemClass, group_changed: roup_changed_func_ptr_anon_852, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_853, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_854, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_855, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_856}
		RadioMenuItemPrivate :: struct #packed {}
		RadioToolButton :: struct {parent: ToggleToolButton}
		RadioToolButtonClass :: struct {parent_class: ToggleToolButtonClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_862, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_863, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_864, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_865}
		Range :: struct {widget: Widget, priv: ^RangePrivate}
		RangeClass :: struct {parent_class: WidgetClass, slider_detail: cstring, stepper_detail: cstring, value_changed: value_changed_func_ptr_anon_866, adjust_bounds: adjust_bounds_func_ptr_anon_867, move_slider: move_slider_func_ptr_anon_868, get_range_border: et_range_border_func_ptr_anon_869, change_value: change_value_func_ptr_anon_870, get_range_size_request: et_range_size_request_func_ptr_anon_871, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_872, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_873, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_874}
		RangePrivate :: struct #packed {}
		RcContext :: struct #packed {}
		RcFlags :: bit_set[RcFlagsBit]
		RcFlagsBit :: enum u32 {RC_FG = 0, RC_BG = 1, RC_TEXT = 2, RC_BASE = 3}
		RcProperty :: struct {type_name: glib.Quark, property_name: glib.Quark, origin: cstring, value: gobj.Value}
		RcPropertyParser :: #type proc(pspec: ^gobj.ParamSpec, rc_string: ^glib.String, property_value: ^gobj.Value) -> glib.boolean
		RcStyle :: [48]u64
		RcStyleClass :: struct {parent_class: gobj.ObjectClass, create_rc_style: create_rc_style_func_ptr_anon_1155, parse: parse_func_ptr_anon_1156, merge: merge_func_ptr_anon_1157, create_style: create_style_func_ptr_anon_1158, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1159, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1160, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1161, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1162}
		RcTokenType :: enum u32 {RC_TOKEN_INVALID = 270, RC_TOKEN_INCLUDE = 271, RC_TOKEN_NORMAL = 272, RC_TOKEN_ACTIVE = 273, RC_TOKEN_PRELIGHT = 274, RC_TOKEN_SELECTED = 275, RC_TOKEN_INSENSITIVE = 276, RC_TOKEN_FG = 277, RC_TOKEN_BG = 278, RC_TOKEN_TEXT = 279, RC_TOKEN_BASE = 280, RC_TOKEN_XTHICKNESS = 281, RC_TOKEN_YTHICKNESS = 282, RC_TOKEN_FONT = 283, RC_TOKEN_FONTSET = 284, RC_TOKEN_FONT_NAME = 285, RC_TOKEN_BG_PIXMAP = 286, RC_TOKEN_PIXMAP_PATH = 287, RC_TOKEN_STYLE = 288, RC_TOKEN_BINDING = 289, RC_TOKEN_BIND = 290, RC_TOKEN_WIDGET = 291, RC_TOKEN_WIDGET_CLASS = 292, RC_TOKEN_CLASS = 293, RC_TOKEN_LOWEST = 294, RC_TOKEN_GTK = 295, RC_TOKEN_APPLICATION = 296, RC_TOKEN_THEME = 297, RC_TOKEN_RC = 298, RC_TOKEN_HIGHEST = 299, RC_TOKEN_ENGINE = 300, RC_TOKEN_MODULE_PATH = 301, RC_TOKEN_IM_MODULE_PATH = 302, RC_TOKEN_IM_MODULE_FILE = 303, RC_TOKEN_STOCK = 304, RC_TOKEN_LTR = 305, RC_TOKEN_RTL = 306, RC_TOKEN_COLOR = 307, RC_TOKEN_UNBIND = 308, RC_TOKEN_LAST = 309}
		RecentAction :: struct {parent_instance: Action, priv: ^RecentActionPrivate}
		RecentActionClass :: struct {parent_class: ActionClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1163, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1164, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1165, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1166}
		RecentActionPrivate :: struct #packed {}
		RecentChooser :: struct #packed {}
		RecentChooserDialog :: struct {parent_instance: Dialog, priv: ^RecentChooserDialogPrivate}
		RecentChooserDialogClass :: struct {parent_class: DialogClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_894, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_895, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_896, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_897}
		RecentChooserDialogPrivate :: struct #packed {}
		RecentChooserError :: enum u32 {NOT_FOUND = 0, INVALID_URI = 1}
		RecentChooserIface :: struct {base_iface: gobj.TypeInterface, set_current_uri: set_current_uri_func_ptr_anon_880, get_current_uri: et_current_uri_func_ptr_anon_881, select_uri: select_uri_func_ptr_anon_882, unselect_uri: unselect_uri_func_ptr_anon_883, select_all: select_all_func_ptr_anon_884, unselect_all: unselect_all_func_ptr_anon_885, get_items: et_items_func_ptr_anon_886, get_recent_manager: et_recent_manager_func_ptr_anon_887, add_filter: add_filter_func_ptr_anon_888, remove_filter: remove_filter_func_ptr_anon_889, list_filters: list_filters_func_ptr_anon_890, set_sort_func: set_sort_func_func_ptr_anon_891, item_activated: item_activated_func_ptr_anon_892, selection_changed: selection_changed_func_ptr_anon_893}
		RecentChooserMenu :: struct {parent_instance: Menu, priv: ^RecentChooserMenuPrivate}
		RecentChooserMenuClass :: struct {parent_class: MenuClass, gtk_recent1: tk_recent1_func_ptr_anon_898, gtk_recent2: tk_recent2_func_ptr_anon_899, gtk_recent3: tk_recent3_func_ptr_anon_900, gtk_recent4: tk_recent4_func_ptr_anon_901}
		RecentChooserMenuPrivate :: struct #packed {}
		RecentChooserWidget :: struct {parent_instance: Box, priv: ^RecentChooserWidgetPrivate}
		RecentChooserWidgetClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_902, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_903, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_904, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_905}
		RecentChooserWidgetPrivate :: struct #packed {}
		RecentData :: struct {display_name: cstring, description: cstring, mime_type: cstring, app_name: cstring, app_exec: cstring, groups: [^]cstring, is_private: glib.boolean}
		RecentFilter :: struct #packed {}
		RecentFilterFlags :: bit_set[RecentFilterFlagsBit]
		RecentFilterFlagsBit :: enum u32 {RECENT_FILTER_URI = 0, RECENT_FILTER_DISPLAY_NAME = 1, RECENT_FILTER_MIME_TYPE = 2, RECENT_FILTER_APPLICATION = 3, RECENT_FILTER_GROUP = 4, RECENT_FILTER_AGE = 5}
		RecentFilterFunc :: #type proc(filter_info: ^RecentFilterInfo, user_data: glib.pointer) -> glib.boolean
		RecentFilterInfo :: struct {contains: RecentFilterFlags, uri: cstring, display_name: cstring, mime_type: cstring, applications: [^]cstring, groups: [^]cstring, age: glib.int_}
		RecentInfo :: struct #packed {}
		RecentManager :: struct {parent_instance: gobj.Object, priv: ^RecentManagerPrivate}
		RecentManagerClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_875, _gtk_recent1: _gtk_recent1_func_ptr_anon_876, _gtk_recent2: _gtk_recent2_func_ptr_anon_877, _gtk_recent3: _gtk_recent3_func_ptr_anon_878, _gtk_recent4: _gtk_recent4_func_ptr_anon_879}
		RecentManagerError :: enum u32 {NOT_FOUND = 0, INVALID_URI = 1, INVALID_ENCODING = 2, NOT_REGISTERED = 3, READ = 4, WRITE = 5, UNKNOWN = 6}
		RecentManagerPrivate :: struct #packed {}
		RecentSortFunc :: #type proc(a: ^RecentInfo, b: ^RecentInfo, user_data: glib.pointer) -> glib.int_
		RecentSortType :: enum u32 {RECENT_SORT_NONE = 0, RECENT_SORT_MRU = 1, RECENT_SORT_LRU = 2, RECENT_SORT_CUSTOM = 3}
		RegionFlags :: bit_set[RegionFlagsBit]
		RegionFlagsBit :: enum u32 {REGION_EVEN = 0, REGION_ODD = 1, REGION_FIRST = 2, REGION_LAST = 3, REGION_ONLY = 4, REGION_SORTED = 5}
		ReliefStyle :: enum u32 {RELIEF_NORMAL = 0, RELIEF_HALF = 1, RELIEF_NONE = 2}
		RequestedSize :: struct {data: glib.pointer, minimum_size: glib.int_, natural_size: glib.int_}
		Requisition :: struct {width: glib.int_, height: glib.int_}
		ResizeMode :: enum u32 {RESIZE_PARENT = 0, RESIZE_QUEUE = 1, RESIZE_IMMEDIATE = 2}
		ResponseType :: enum i32 {RESPONSE_NONE = -1, RESPONSE_REJECT = -2, RESPONSE_ACCEPT = -3, RESPONSE_DELETE_EVENT = -4, RESPONSE_OK = -5, RESPONSE_CANCEL = -6, RESPONSE_CLOSE = -7, RESPONSE_YES = -8, RESPONSE_NO = -9, RESPONSE_APPLY = -10, RESPONSE_HELP = -11}
		Revealer :: struct {parent_instance: Bin}
		RevealerClass :: struct {parent_class: BinClass}
		RevealerTransitionType :: enum u32 {NONE = 0, CROSSFADE = 1, SLIDE_RIGHT = 2, SLIDE_LEFT = 3, SLIDE_UP = 4, SLIDE_DOWN = 5}
		Scale :: struct {range: Range, priv: ^ScalePrivate}
		ScaleButton :: struct {parent: Button, priv: ^ScaleButtonPrivate}
		ScaleButtonClass :: struct {parent_class: ButtonClass, value_changed: value_changed_func_ptr_anon_913, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_914, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_915, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_916, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_917}
		ScaleButtonPrivate :: struct #packed {}
		ScaleClass :: struct {parent_class: RangeClass, format_value: format_value_func_ptr_anon_906, draw_value: draw_value_func_ptr_anon_907, get_layout_offsets: et_layout_offsets_func_ptr_anon_908, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_909, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_910, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_911, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_912}
		ScalePrivate :: struct #packed {}
		ScrollStep :: enum u32 {S = 0, SCROLL_PAGES = 1, SCROLL_ENDS = 2, SCROLL_HORIZONTAL_STEPS = 3, SCROLL_HORIZONTAL_PAGES = 4, SCROLL_HORIZONTAL_ENDS = 5}
		ScrollType :: enum u32 {SCROLL_NONE = 0, SCROLL_JUMP = 1, SCROLL_STEP_BACKWARD = 2, SCROLL_STEP_FORWARD = 3, SCROLL_PAGE_BACKWARD = 4, SCROLL_PAGE_FORWARD = 5, SCROLL_STEP_UP = 6, SCROLL_STEP_DOWN = 7, SCROLL_PAGE_UP = 8, SCROLL_PAGE_DOWN = 9, SCROLL_STEP_LEFT = 10, SCROLL_STEP_RIGHT = 11, SCROLL_PAGE_LEFT = 12, SCROLL_PAGE_RIGHT = 13, SCROLL_START = 14, SCROLL_END = 15}
		Scrollable :: struct #packed {}
		ScrollableInterface :: struct {base_iface: gobj.TypeInterface, get_border: et_border_func_ptr_anon_918}
		ScrollablePolicy :: enum u32 {SCROLL_MINIMUM = 0, SCROLL_NATURAL = 1}
		Scrollbar :: struct {range: Range}
		ScrollbarClass :: struct {parent_class: RangeClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_919, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_920, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_921, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_922}
		ScrolledWindow :: struct {container: Bin, priv: ^ScrolledWindowPrivate}
		ScrolledWindowClass :: struct {parent_class: BinClass, scrollbar_spacing: glib.int_, scroll_child: scroll_child_func_ptr_anon_923, move_focus_out: move_focus_out_func_ptr_anon_924, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_925, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_926, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_927, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_928}
		ScrolledWindowPrivate :: struct #packed {}
		SearchBar :: struct {parent: Bin}
		SearchBarClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_929, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_930, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_931, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_932}
		SearchEntry :: struct {parent: Entry}
		SearchEntryClass :: struct {parent_class: EntryClass, search_changed: search_changed_func_ptr_anon_933, next_match: next_match_func_ptr_anon_934, previous_match: previous_match_func_ptr_anon_935, stop_search: stop_search_func_ptr_anon_936}
		SelectionData :: struct #packed {}
		SelectionMode :: enum u32 {SELECTION_NONE = 0, SELECTION_SINGLE = 1, SELECTION_BROWSE = 2, SELECTION_MULTIPLE = 3}
		SensitivityType :: enum u32 {SENSITIVITY_AUTO = 0, SENSITIVITY_ON = 1, SENSITIVITY_OFF = 2}
		Separator :: struct {widget: Widget, priv: ^SeparatorPrivate}
		SeparatorClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_937, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_938, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_939, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_940}
		SeparatorMenuItem :: struct {menu_item: MenuItem}
		SeparatorMenuItemClass :: struct {parent_class: MenuItemClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_941, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_942, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_943, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_944}
		SeparatorPrivate :: struct #packed {}
		SeparatorToolItem :: struct {parent: ToolItem, priv: ^SeparatorToolItemPrivate}
		SeparatorToolItemClass :: struct {parent_class: ToolItemClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_945, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_946, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_947, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_948}
		SeparatorToolItemPrivate :: struct #packed {}
		Settings :: struct {parent_instance: gobj.Object, priv: ^SettingsPrivate}
		SettingsClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_949, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_950, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_951, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_952}
		SettingsPrivate :: struct #packed {}
		SettingsValue :: struct {origin: cstring, value: gobj.Value}
		ShadowType :: enum u32 {SHADOW_NONE = 0, SHADOW_IN = 1, SHADOW_OUT = 2, SHADOW_ETCHED_IN = 3, SHADOW_ETCHED_OUT = 4}
		ShortcutLabel :: struct #packed {}
		ShortcutLabelClass :: struct #packed {}
		ShortcutType :: enum u32 {SHORTCUT_ACCELERATOR = 0, SHORTCUT_GESTURE_PINCH = 1, SHORTCUT_GESTURE_STRETCH = 2, SHORTCUT_GESTURE_ROTATE_CLOCKWISE = 3, SHORTCUT_GESTURE_ROTATE_COUNTERCLOCKWISE = 4, SHORTCUT_GESTURE_TWO_FINGER_SWIPE_LEFT = 5, SHORTCUT_GESTURE_TWO_FINGER_SWIPE_RIGHT = 6, SHORTCUT_GESTURE = 7}
		ShortcutsGroup :: struct #packed {}
		ShortcutsGroupClass :: struct #packed {}
		ShortcutsSection :: struct #packed {}
		ShortcutsSectionClass :: struct #packed {}
		ShortcutsShortcut :: struct #packed {}
		ShortcutsShortcutClass :: struct #packed {}
		ShortcutsWindow :: struct {window: Window}
		ShortcutsWindowClass :: struct {parent_class: WindowClass, close: close_func_ptr_anon_387, search: search_func_ptr_anon_388}
		SizeGroup :: struct {parent_instance: gobj.Object, priv: ^SizeGroupPrivate}
		SizeGroupClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_741, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_742, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_743, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_744}
		SizeGroupMode :: enum u32 {SIZE_GROUP_NONE = 0, SIZE_GROUP_HORIZONTAL = 1, SIZE_GROUP_VERTICAL = 2, SIZE_GROUP_BOTH = 3}
		SizeGroupPrivate :: struct #packed {}
		SizeRequestMode :: enum u32 {SIZE_REQUEST_HEIGHT_FOR_WIDTH = 0, SIZE_REQUEST_WIDTH_FOR_HEIGHT = 1, SIZE_REQUEST_CONSTANT_SIZE = 2}
		SortType :: enum u32 {SORT_ASCENDING = 0, SORT_DESCENDING = 1}
		SpinButton :: struct {entry: Entry, priv: ^SpinButtonPrivate}
		SpinButtonClass :: struct {parent_class: EntryClass, input: input_func_ptr_anon_957, output: output_func_ptr_anon_958, value_changed: value_changed_func_ptr_anon_959, change_value: change_value_func_ptr_anon_960, wrapped: wrapped_func_ptr_anon_961, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_962, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_963, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_964, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_965}
		SpinButtonPrivate :: struct #packed {}
		SpinButtonUpdatePolicy :: enum u32 {UPDATE_ALWAYS = 0, UPDATE_IF_VALID = 1}
		SpinType :: enum u32 {SPIN_STEP_FORWARD = 0, SPIN_STEP_BACKWARD = 1, SPIN_PAGE_FORWARD = 2, SPIN_PAGE_BACKWARD = 3, SPIN_HOME = 4, SPIN_END = 5, SPIN_USER_DEFINED = 6}
		Spinner :: struct {parent: Widget, priv: ^SpinnerPrivate}
		SpinnerClass :: struct {parent_class: WidgetClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_966, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_967, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_968, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_969}
		SpinnerPrivate :: struct #packed {}
		Stack :: struct {parent_instance: Container}
		StackClass :: struct {parent_class: ContainerClass}
		StackSidebar :: struct {parent: Bin}
		StackSidebarClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_953, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_954, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_955, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_956}
		StackSidebarPrivate :: struct #packed {}
		StackSwitcher :: struct {widget: Box}
		StackSwitcherClass :: struct {parent_class: BoxClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_970, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_971, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_972, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_973}
		StackTransitionType :: enum u32 {NONE = 0, CROSSFADE = 1, SLIDE_RIGHT = 2, SLIDE_LEFT = 3, SLIDE_UP = 4, SLIDE_DOWN = 5, SLIDE_LEFT_RIGHT = 6, SLIDE_UP_DOWN = 7, OVER_UP = 8, OVER_DOWN = 9, OVER_LEFT = 10, OVER_RIGHT = 11, UNDER_UP = 12, UNDER_DOWN = 13, UNDER_LEFT = 14, UNDER_RIGHT = 15, OVER_UP_DOWN = 16, OVER_DOWN_UP = 17, OVER_LEFT_RIGHT = 18, OVER_RIGHT_LEFT = 19}
		StateFlags :: bit_set[StateFlagsBit]
		StateFlagsBit :: enum u32 {STATE_FLAG_ACTIVE = 0, STATE_FLAG_PRELIGHT = 1, STATE_FLAG_SELECTED = 2, STATE_FLAG_INSENSITIVE = 3, STATE_FLAG_INCONSISTENT = 4, STATE_FLAG_FOCUSED = 5, STATE_FLAG_BACKDROP = 6, STATE_FLAG_DIR_LTR = 7, STATE_FLAG_DIR_RTL = 8, STATE_FLAG_LINK = 9, STATE_FLAG_VISITED = 10, STATE_FLAG_CHECKED = 11, STATE_FLAG_DROP_ACTIVE = 12}
		StateType :: enum u32 {STATE_NORMAL = 0, STATE_ACTIVE = 1, STATE_PRELIGHT = 2, STATE_SELECTED = 3, STATE_INSENSITIVE = 4, STATE_INCONSISTENT = 5, STATE_FOCUSED = 6}
		StatusIcon :: struct {parent_instance: gobj.Object, priv: ^StatusIconPrivate}
		StatusIconClass :: struct {parent_class: gobj.ObjectClass, activate: activate_func_ptr_anon_1167, popup_menu: popup_menu_func_ptr_anon_1168, size_changed: size_changed_func_ptr_anon_1169, button_press_event: button_press_event_func_ptr_anon_1170, button_release_event: button_release_event_func_ptr_anon_1171, scroll_event: scroll_event_func_ptr_anon_1172, query_tooltip: query_tooltip_func_ptr_anon_1173, __gtk_reserved1: __gtk_reserved1_func_ptr_anon_1174, __gtk_reserved2: __gtk_reserved2_func_ptr_anon_1175, __gtk_reserved3: __gtk_reserved3_func_ptr_anon_1176, __gtk_reserved4: __gtk_reserved4_func_ptr_anon_1177}
		StatusIconPrivate :: struct #packed {}
		Statusbar :: struct {parent_widget: Box, priv: ^StatusbarPrivate}
		StatusbarClass :: struct {parent_class: BoxClass, reserved: glib.pointer, text_pushed: text_pushed_func_ptr_anon_974, text_popped: text_popped_func_ptr_anon_975, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_976, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_977, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_978, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_979}
		StatusbarPrivate :: struct #packed {}
		Stock :: cstring
		StockItem :: struct {stock_id: cstring, label: cstring, modifier: GdkModifierType, keyval: glib.uint_, translation_domain: cstring}
		Style :: struct {parent_instance: gobj.Object, fg: [5]GdkColor, bg: [5]GdkColor, light: [5]GdkColor, dark: [5]GdkColor, mid: [5]GdkColor, text: [5]GdkColor, base: [5]GdkColor, text_aa: [5]GdkColor, black: GdkColor, white: GdkColor, font_desc: ^pango.FontDescription, xthickness: glib.int_, ythickness: glib.int_, background: [5]^cairo.pattern_t, attach_count: glib.int_, visual: ^GdkVisual, private_font_desc: ^pango.FontDescription, rc_style: ^RcStyle, styles: [^]glib.SList, property_cache: ^glib.Array, icon_factories: [^]glib.SList}
		StyleClass :: struct {parent_class: gobj.ObjectClass, realize: realize_func_ptr_anon_1178, unrealize: unrealize_func_ptr_anon_1179, copy: copy_func_ptr_anon_1180, clone: clone_func_ptr_anon_1181, init_from_rc: init_from_rc_func_ptr_anon_1182, set_background: set_background_func_ptr_anon_1183, render_icon: render_icon_func_ptr_anon_1184, draw_hline: draw_hline_func_ptr_anon_1185, draw_vline: draw_vline_func_ptr_anon_1186, draw_shadow: draw_shadow_func_ptr_anon_1187, draw_arrow: draw_arrow_func_ptr_anon_1188, draw_diamond: draw_diamond_func_ptr_anon_1189, draw_box: draw_box_func_ptr_anon_1190, draw_flat_box: draw_flat_box_func_ptr_anon_1191, draw_check: draw_check_func_ptr_anon_1192, draw_option: draw_option_func_ptr_anon_1193, draw_tab: draw_tab_func_ptr_anon_1194, draw_shadow_gap: draw_shadow_gap_func_ptr_anon_1195, draw_box_gap: draw_box_gap_func_ptr_anon_1196, draw_extension: draw_extension_func_ptr_anon_1197, draw_focus: draw_focus_func_ptr_anon_1198, draw_slider: draw_slider_func_ptr_anon_1199, draw_handle: draw_handle_func_ptr_anon_1200, draw_expander: draw_expander_func_ptr_anon_1201, draw_layout: draw_layout_func_ptr_anon_1202, draw_resize_grip: draw_resize_grip_func_ptr_anon_1203, draw_spinner: draw_spinner_func_ptr_anon_1204, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1205, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1206, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1207, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1208, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_1209, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_1210, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_1211, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_1212, _gtk_reserved9: _gtk_reserved9_func_ptr_anon_1213, _gtk_reserved10: _gtk_reserved10_func_ptr_anon_1214, _gtk_reserved11: _gtk_reserved11_func_ptr_anon_1215}
		StyleContext :: struct {parent_object: gobj.Object, priv: ^StyleContextPrivate}
		StyleContextClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_664, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_665, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_666, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_667, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_668}
		StyleContextPrintFlags :: bit_set[StyleContextPrintFlagsBit]
		StyleContextPrintFlagsBit :: enum u32 {STYLE_CONTEXT_PRINT_RECURSE = 0, STYLE_CONTEXT_PRINT_SHOW_STYLE = 1}
		StyleContextPrivate :: struct #packed {}
		StyleProperties :: struct {parent_object: gobj.Object, priv: ^StylePropertiesPrivate}
		StylePropertiesClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_657, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_658, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_659, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_660}
		StylePropertiesPrivate :: struct #packed {}
		StylePropertyParser :: #type proc(string_p: cstring, value: ^gobj.Value, error: ^^glib.Error) -> glib.boolean
		StyleProvider :: struct #packed {}
		StyleProviderIface :: struct {g_iface: gobj.TypeInterface, get_style: et_style_func_ptr_anon_661, get_style_property: et_style_property_func_ptr_anon_662, get_icon_factory: et_icon_factory_func_ptr_anon_663}
		Switch :: struct {parent_instance: Widget, priv: ^SwitchPrivate}
		SwitchClass :: struct {parent_class: WidgetClass, activate: activate_func_ptr_anon_980, state_set: state_set_func_ptr_anon_981, _switch_padding_1: _switch_padding_1_func_ptr_anon_982, _switch_padding_2: _switch_padding_2_func_ptr_anon_983, _switch_padding_3: _switch_padding_3_func_ptr_anon_984, _switch_padding_4: _switch_padding_4_func_ptr_anon_985, _switch_padding_5: _switch_padding_5_func_ptr_anon_986}
		SwitchPrivate :: struct #packed {}
		SymbolicColor :: struct #packed {}
		Table :: struct {container: Container, priv: ^TablePrivate}
		TableChild :: [3]u64
		TableClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1216, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1217, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1218, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1219}
		TablePrivate :: struct #packed {}
		TableRowCol :: [2]u32
		TargetEntry :: struct {target: cstring, flags: glib.uint_, info: glib.uint_}
		TargetFlags :: bit_set[TargetFlagsBit]
		TargetFlagsBit :: enum u32 {TARGET_SAME_APP = 0, TARGET_SAME_WIDGET = 1, TARGET_OTHER_APP = 2, TARGET_OTHER_WIDGET = 3}
		TargetList :: struct #packed {}
		TargetPair :: struct {target: GdkAtom, flags: glib.uint_, info: glib.uint_}
		TearoffMenuItem :: struct {menu_item: MenuItem, priv: ^TearoffMenuItemPrivate}
		TearoffMenuItemClass :: struct {parent_class: MenuItemClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1220, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1221, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1222, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1223}
		TearoffMenuItemPrivate :: struct #packed {}
		TextAppearance :: struct {bg_color: GdkColor, fg_color: GdkColor, rise: glib.int_, using _: bit_field glib.uint_ {underline: glib.uint_ | 4, strikethrough: glib.uint_ | 1, draw_bg: glib.uint_ | 1, inside_selection: glib.uint_ | 1, is_text: glib.uint_ | 1}, rgba: [2]^GdkRGBA}
		TextAttributes :: struct {refcount: glib.uint_, appearance: TextAppearance, justification: Justification, direction: TextDirection, font: ^pango.FontDescription, font_scale: glib.double, left_margin: glib.int_, right_margin: glib.int_, indent: glib.int_, pixels_above_lines: glib.int_, pixels_below_lines: glib.int_, pixels_inside_wrap: glib.int_, tabs: ^pango.TabArray, wrap_mode: WrapMode, language: ^pango.Language, pg_bg_color: ^GdkColor, using _: bit_field glib.uint_ {invisible: glib.uint_ | 1, bg_full_height: glib.uint_ | 1, editable: glib.uint_ | 1, no_fallback: glib.uint_ | 1}, pg_bg_rgba: ^GdkRGBA, letter_spacing: glib.int_, font_features: cstring}
		TextBTree :: struct #packed {}
		TextBuffer :: struct {parent_instance: gobj.Object, priv: ^TextBufferPrivate}
		TextBufferClass :: struct {parent_class: gobj.ObjectClass, insert_text: insert_text_func_ptr_anon_998, insert_pixbuf: insert_pixbuf_func_ptr_anon_999, insert_child_anchor: insert_child_anchor_func_ptr_anon_1000, delete_range: delete_range_func_ptr_anon_1001, changed: changed_func_ptr_anon_1002, modified_changed: modified_changed_func_ptr_anon_1003, mark_set: mark_set_func_ptr_anon_1004, mark_deleted: mark_deleted_func_ptr_anon_1005, apply_tag: apply_tag_func_ptr_anon_1006, remove_tag: remove_tag_func_ptr_anon_1007, begin_user_action: begin_user_action_func_ptr_anon_1008, end_user_action: end_user_action_func_ptr_anon_1009, paste_done: paste_done_func_ptr_anon_1010, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1011, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1012, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1013, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1014}
		TextBufferDeserializeFunc :: #type proc(register_buffer: ^TextBuffer, content_buffer: ^TextBuffer, iter: ^TextIter, data: ^glib.uint8, length: glib.size, create_tags: glib.boolean, user_data: glib.pointer, error: ^^glib.Error) -> glib.boolean
		TextBufferPrivate :: struct #packed {}
		TextBufferSerializeFunc :: #type proc(register_buffer: ^TextBuffer, content_buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter, length: ^glib.size, user_data: glib.pointer) -> ^glib.uint8
		TextBufferTargetInfo :: enum i32 {BUFFER_CONTENTS = -1, RICH_TEXT = -2, TEXT = -3}
		TextCharPredicate :: #type proc(ch: glib.unichar, user_data: glib.pointer) -> glib.boolean
		TextChildAnchor :: struct {parent_instance: gobj.Object, segment: glib.pointer}
		TextChildAnchorClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_262, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_263, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_264, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_265}
		TextDirection :: enum u32 {TEXT_DIR_NONE = 0, TEXT_DIR_LTR = 1, TEXT_DIR_RTL = 2}
		TextExtendSelection :: enum u32 {WORD = 0, LINE = 1}
		TextIter :: struct {dummy1: glib.pointer, dummy2: glib.pointer, dummy3: glib.int_, dummy4: glib.int_, dummy5: glib.int_, dummy6: glib.int_, dummy7: glib.int_, dummy8: glib.int_, dummy9: glib.pointer, dummy10: glib.pointer, dummy11: glib.int_, dummy12: glib.int_, dummy13: glib.int_, dummy14: glib.pointer}
		TextMark :: struct {parent_instance: gobj.Object, segment: glib.pointer}
		TextMarkClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_994, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_995, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_996, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_997}
		TextSearchFlags :: bit_set[TextSearchFlagsBit]
		TextSearchFlagsBit :: enum u32 {TEXT_SEARCH_VISIBLE_ONLY = 0, TEXT_SEARCH_TEXT_ONLY = 1, TEXT_SEARCH_CASE_INSENSITIVE = 2}
		TextTag :: struct {parent_instance: gobj.Object, priv: ^TextTagPrivate}
		TextTagClass :: struct {parent_class: gobj.ObjectClass, event: event_func_ptr_anon_266, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_267, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_268, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_269, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_270}
		TextTagPrivate :: struct #packed {}
		TextTagTable :: struct {parent_instance: gobj.Object, priv: ^TextTagTablePrivate}
		TextTagTableClass :: struct {parent_class: gobj.ObjectClass, tag_changed: tag_changed_func_ptr_anon_987, tag_added: tag_added_func_ptr_anon_988, tag_removed: tag_removed_func_ptr_anon_989, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_990, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_991, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_992, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_993}
		TextTagTableForeach :: #type proc(tag: ^TextTag, data: glib.pointer)
		TextTagTablePrivate :: struct #packed {}
		TextView :: struct {parent_instance: Container, priv: ^TextViewPrivate}
		TextViewClass :: struct {parent_class: ContainerClass, populate_popup: populate_popup_func_ptr_anon_1015, move_cursor: move_cursor_func_ptr_anon_1016, set_anchor: set_anchor_func_ptr_anon_1017, insert_at_cursor: insert_at_cursor_func_ptr_anon_1018, delete_from_cursor: delete_from_cursor_func_ptr_anon_1019, backspace: backspace_func_ptr_anon_1020, cut_clipboard: cut_clipboard_func_ptr_anon_1021, copy_clipboard: copy_clipboard_func_ptr_anon_1022, paste_clipboard: paste_clipboard_func_ptr_anon_1023, toggle_overwrite: toggle_overwrite_func_ptr_anon_1024, create_buffer: create_buffer_func_ptr_anon_1025, draw_layer: draw_layer_func_ptr_anon_1026, extend_selection: extend_selection_func_ptr_anon_1027, insert_emoji: insert_emoji_func_ptr_anon_1028, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1029, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1030, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1031, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1032}
		TextViewLayer :: enum u32 {BELOW = 0, ABOVE = 1, BELOW_TEXT = 2, ABOVE_TEXT = 3}
		TextViewPrivate :: struct #packed {}
		TextWindowType :: enum u32 {TEXT_WINDOW_PRIVATE = 0, TEXT_WINDOW_WIDGET = 1, TEXT_WINDOW_TEXT = 2, TEXT_WINDOW_LEFT = 3, TEXT_WINDOW_RIGHT = 4, TEXT_WINDOW_TOP = 5, TEXT_WINDOW_BOTTOM = 6}
		ThemeEngine :: struct #packed {}
		ThemingEngine :: struct {parent_object: gobj.Object, priv: ^ThemingEnginePrivate}
		ThemingEngineClass :: struct {parent_class: gobj.ObjectClass, render_line: render_line_func_ptr_anon_1224, render_background: render_background_func_ptr_anon_1225, render_frame: render_frame_func_ptr_anon_1226, render_frame_gap: render_frame_gap_func_ptr_anon_1227, render_extension: render_extension_func_ptr_anon_1228, render_check: render_check_func_ptr_anon_1229, render_option: render_option_func_ptr_anon_1230, render_arrow: render_arrow_func_ptr_anon_1231, render_expander: render_expander_func_ptr_anon_1232, render_focus: render_focus_func_ptr_anon_1233, render_layout: render_layout_func_ptr_anon_1234, render_slider: render_slider_func_ptr_anon_1235, render_handle: render_handle_func_ptr_anon_1236, render_activity: render_activity_func_ptr_anon_1237, render_icon_pixbuf: render_icon_pixbuf_func_ptr_anon_1238, render_icon: render_icon_func_ptr_anon_1239, render_icon_surface: render_icon_surface_func_ptr_anon_1240, padding: [14]glib.pointer}
		ThemingEnginePrivate :: struct #packed {}
		TickCallback :: #type proc(widget: ^Widget, frame_clock: ^GdkFrameClock, user_data: glib.pointer) -> glib.boolean
		ToggleAction :: struct {parent: Action, private_data: ^ToggleActionPrivate}
		ToggleActionClass :: struct {parent_class: ActionClass, toggled: toggled_func_ptr_anon_1145, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1146, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1147, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1148, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1149}
		ToggleActionEntry :: struct {name: cstring, stock_id: cstring, label: cstring, accelerator: cstring, tooltip: cstring, callback: gobj.Callback, is_active: glib.boolean}
		ToggleActionPrivate :: struct #packed {}
		ToggleButton :: struct {button: Button, priv: ^ToggleButtonPrivate}
		ToggleButtonClass :: struct {parent_class: ButtonClass, toggled: toggled_func_ptr_anon_516, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_517, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_518, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_519, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_520}
		ToggleButtonPrivate :: struct #packed {}
		ToggleToolButton :: struct {parent: ToolButton, priv: ^ToggleToolButtonPrivate}
		ToggleToolButtonClass :: struct {parent_class: ToolButtonClass, toggled: toggled_func_ptr_anon_857, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_858, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_859, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_860, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_861}
		ToggleToolButtonPrivate :: struct #packed {}
		ToolButton :: struct {parent: ToolItem, priv: ^ToolButtonPrivate}
		ToolButtonClass :: struct {parent_class: ToolItemClass, button_type: gobj.Type, clicked: clicked_func_ptr_anon_751, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_752, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_753, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_754, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_755}
		ToolButtonPrivate :: struct #packed {}
		ToolItem :: struct {parent: Bin, priv: ^ToolItemPrivate}
		ToolItemClass :: struct {parent_class: BinClass, create_menu_proxy: create_menu_proxy_func_ptr_anon_745, toolbar_reconfigured: toolbar_reconfigured_func_ptr_anon_746, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_747, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_748, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_749, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_750}
		ToolItemGroup :: struct {parent_instance: Container, priv: ^ToolItemGroupPrivate}
		ToolItemGroupClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1040, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1041, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1042, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1043}
		ToolItemGroupPrivate :: struct #packed {}
		ToolItemPrivate :: struct #packed {}
		ToolPalette :: struct {parent_instance: Container, priv: ^ToolPalettePrivate}
		ToolPaletteClass :: struct {parent_class: ContainerClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1044, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1045, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1046, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1047}
		ToolPaletteDragTargets :: bit_set[ToolPaletteDragTargetsBit]
		ToolPaletteDragTargetsBit :: enum u32 {TOOL_PALETTE_DRAG_ITEMS = 0, TOOL_PALETTE_DRAG_GROUPS = 1}
		ToolPalettePrivate :: struct #packed {}
		ToolShell :: struct #packed {}
		ToolShellIface :: struct {g_iface: gobj.TypeInterface, get_icon_size: et_icon_size_func_ptr_anon_1048, get_orientation: et_orientation_func_ptr_anon_1049, get_style: et_style_func_ptr_anon_1050, get_relief_style: et_relief_style_func_ptr_anon_1051, rebuild_menu: rebuild_menu_func_ptr_anon_1052, get_text_orientation: et_text_orientation_func_ptr_anon_1053, get_text_alignment: et_text_alignment_func_ptr_anon_1054, get_ellipsize_mode: et_ellipsize_mode_func_ptr_anon_1055, get_text_size_group: et_text_size_group_func_ptr_anon_1056}
		Toolbar :: struct {container: Container, priv: ^ToolbarPrivate}
		ToolbarClass :: struct {parent_class: ContainerClass, orientation_changed: orientation_changed_func_ptr_anon_1033, style_changed: style_changed_func_ptr_anon_1034, popup_context_menu: popup_context_menu_func_ptr_anon_1035, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1036, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1037, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1038, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1039}
		ToolbarPrivate :: struct #packed {}
		ToolbarSpaceStyle :: enum u32 {TOOLBAR_SPACE_EMPTY = 0, TOOLBAR_SPACE_LINE = 1}
		ToolbarStyle :: enum u32 {TOOLBAR_ICONS = 0, TOOLBAR_TEXT = 1, TOOLBAR_BOTH = 2, TOOLBAR_BOTH_HORIZ = 3}
		Tooltip :: struct #packed {}
		TranslateFunc :: #type proc(path: cstring, func_data: glib.pointer) -> cstring
		TreeCellDataFunc :: #type proc(tree_column: ^TreeViewColumn, cell: ^CellRenderer, tree_model: ^TreeModel, iter: ^TreeIter, data: glib.pointer)
		TreeDestroyCountFunc :: #type proc(tree_view: ^TreeView, path: ^TreePath, children: glib.int_, user_data: glib.pointer)
		TreeDragDest :: struct #packed {}
		TreeDragDestIface :: struct {g_iface: gobj.TypeInterface, drag_data_received: drag_data_received_func_ptr_anon_1060, row_drop_possible: row_drop_possible_func_ptr_anon_1061}
		TreeDragSource :: struct #packed {}
		TreeDragSourceIface :: struct {g_iface: gobj.TypeInterface, row_draggable: row_draggable_func_ptr_anon_1057, drag_data_get: drag_data_get_func_ptr_anon_1058, drag_data_delete: drag_data_delete_func_ptr_anon_1059}
		TreeIter :: struct {stamp: glib.int_, user_data: glib.pointer, user_data2: glib.pointer, user_data3: glib.pointer}
		TreeIterCompareFunc :: #type proc(model: ^TreeModel, a: ^TreeIter, b: ^TreeIter, user_data: glib.pointer) -> glib.int_
		TreeModel :: struct #packed {}
		TreeModelFilter :: struct {parent: gobj.Object, priv: ^TreeModelFilterPrivate}
		TreeModelFilterClass :: struct {parent_class: gobj.ObjectClass, visible: visible_func_ptr_anon_321, modify: modify_func_ptr_anon_322, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_323, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_324, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_325, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_326}
		TreeModelFilterModifyFunc :: #type proc(model: ^TreeModel, iter: ^TreeIter, value: ^gobj.Value, column: glib.int_, data: glib.pointer)
		TreeModelFilterPrivate :: struct #packed {}
		TreeModelFilterVisibleFunc :: #type proc(model: ^TreeModel, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
		TreeModelFlags :: bit_set[TreeModelFlagsBit]
		TreeModelFlagsBit :: enum u32 {TREE_MODEL_ITERS_PERSIST = 0, TREE_MODEL_LIST_ONLY = 1}
		TreeModelForeachFunc :: #type proc(model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
		TreeModelIface :: struct {g_iface: gobj.TypeInterface, row_changed: row_changed_func_ptr_anon_186, row_inserted: row_inserted_func_ptr_anon_187, row_has_child_toggled: row_has_child_toggled_func_ptr_anon_188, row_deleted: row_deleted_func_ptr_anon_189, rows_reordered: rows_reordered_func_ptr_anon_190, get_flags: et_flags_func_ptr_anon_191, get_n_columns: et_n_columns_func_ptr_anon_192, get_column_type: et_column_type_func_ptr_anon_193, get_iter: et_iter_func_ptr_anon_194, get_path: et_path_func_ptr_anon_195, get_value: et_value_func_ptr_anon_196, iter_next: iter_next_func_ptr_anon_197, iter_previous: iter_previous_func_ptr_anon_198, iter_children: iter_children_func_ptr_anon_199, iter_has_child: iter_has_child_func_ptr_anon_200, iter_n_children: iter_n_children_func_ptr_anon_201, iter_nth_child: iter_nth_child_func_ptr_anon_202, iter_parent: iter_parent_func_ptr_anon_203, ref_node: ref_node_func_ptr_anon_204, unref_node: unref_node_func_ptr_anon_205}
		TreeModelSort :: struct {parent: gobj.Object, priv: ^TreeModelSortPrivate}
		TreeModelSortClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1062, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1063, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1064, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1065}
		TreeModelSortPrivate :: struct #packed {}
		TreePath :: struct #packed {}
		TreeRowReference :: struct #packed {}
		TreeSelection :: struct {parent: gobj.Object, priv: ^TreeSelectionPrivate}
		TreeSelectionClass :: struct {parent_class: gobj.ObjectClass, changed: changed_func_ptr_anon_1066, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1067, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1068, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1069, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1070}
		TreeSelectionForeachFunc :: #type proc(model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, data: glib.pointer)
		TreeSelectionFunc :: #type proc(selection: ^TreeSelection, model: ^TreeModel, path: ^TreePath, path_currently_selected: glib.boolean, data: glib.pointer) -> glib.boolean
		TreeSelectionPrivate :: struct #packed {}
		TreeSortable :: struct #packed {}
		TreeSortableIface :: struct {g_iface: gobj.TypeInterface, sort_column_changed: sort_column_changed_func_ptr_anon_224, get_sort_column_id: et_sort_column_id_func_ptr_anon_225, set_sort_column_id: set_sort_column_id_func_ptr_anon_226, set_sort_func: set_sort_func_func_ptr_anon_227, set_default_sort_func: set_default_sort_func_func_ptr_anon_228, has_default_sort_func: has_default_sort_func_func_ptr_anon_229}
		TreeStore :: struct {parent: gobj.Object, priv: ^TreeStorePrivate}
		TreeStoreClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1071, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1072, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1073, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1074}
		TreeStorePrivate :: struct #packed {}
		TreeView :: struct {parent: Container, priv: ^TreeViewPrivate}
		TreeViewClass :: struct {parent_class: ContainerClass, row_activated: row_activated_func_ptr_anon_358, test_expand_row: test_expand_row_func_ptr_anon_359, test_collapse_row: test_collapse_row_func_ptr_anon_360, row_expanded: row_expanded_func_ptr_anon_361, row_collapsed: row_collapsed_func_ptr_anon_362, columns_changed: columns_changed_func_ptr_anon_363, cursor_changed: cursor_changed_func_ptr_anon_364, move_cursor: move_cursor_func_ptr_anon_365, select_all: select_all_func_ptr_anon_366, unselect_all: unselect_all_func_ptr_anon_367, select_cursor_row: select_cursor_row_func_ptr_anon_368, toggle_cursor_row: toggle_cursor_row_func_ptr_anon_369, expand_collapse_cursor_row: expand_collapse_cursor_row_func_ptr_anon_370, select_cursor_parent: select_cursor_parent_func_ptr_anon_371, start_interactive_search: start_interactive_search_func_ptr_anon_372, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_373, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_374, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_375, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_376, _gtk_reserved5: _gtk_reserved5_func_ptr_anon_377, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_378, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_379, _gtk_reserved8: _gtk_reserved8_func_ptr_anon_380}
		TreeViewColumn :: struct {parent_instance: gobj.InitiallyUnowned, priv: ^TreeViewColumnPrivate}
		TreeViewColumnClass :: struct {parent_class: gobj.InitiallyUnownedClass, clicked: clicked_func_ptr_anon_257, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_258, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_259, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_260, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_261}
		TreeViewColumnDropFunc :: #type proc(tree_view: ^TreeView, column: ^TreeViewColumn, prev_column: ^TreeViewColumn, next_column: ^TreeViewColumn, data: glib.pointer) -> glib.boolean
		TreeViewColumnPrivate :: struct #packed {}
		TreeViewColumnSizing :: enum u32 {TREE_VIEW_COLUMN_GROW_ONLY = 0, TREE_VIEW_COLUMN_AUTOSIZE = 1, TREE_VIEW_COLUMN_FIXED = 2}
		TreeViewDropPosition :: enum u32 {TREE_VIEW_DROP_BEFORE = 0, TREE_VIEW_DROP_AFTER = 1, TREE_VIEW_DROP_INTO_OR_BEFORE = 2, TREE_VIEW_DROP_INTO_OR_AFTER = 3}
		TreeViewGridLines :: enum u32 {NONE = 0, HORIZONTAL = 1, VERTICAL = 2, BOTH = 3}
		TreeViewMappingFunc :: #type proc(tree_view: ^TreeView, path: ^TreePath, user_data: glib.pointer)
		TreeViewPrivate :: struct #packed {}
		TreeViewRowSeparatorFunc :: #type proc(model: ^TreeModel, iter: ^TreeIter, data: glib.pointer) -> glib.boolean
		TreeViewSearchEqualFunc :: #type proc(model: ^TreeModel, column: glib.int_, key: cstring, iter: ^TreeIter, search_data: glib.pointer) -> glib.boolean
		TreeViewSearchPositionFunc :: #type proc(tree_view: ^TreeView, search_dialog: ^Widget, user_data: glib.pointer)
		UIManager :: struct {parent: gobj.Object, private_data: ^UIManagerPrivate}
		UIManagerClass :: struct {parent_class: gobj.ObjectClass, add_widget: add_widget_func_ptr_anon_1241, actions_changed: actions_changed_func_ptr_anon_1242, connect_proxy: connect_proxy_func_ptr_anon_1243, disconnect_proxy: disconnect_proxy_func_ptr_anon_1244, pre_activate: pre_activate_func_ptr_anon_1245, post_activate: post_activate_func_ptr_anon_1246, get_widget: et_widget_func_ptr_anon_1247, get_action: et_action_func_ptr_anon_1248, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1249, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1250, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1251, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1252}
		UIManagerItemType :: bit_set[UIManagerItemTypeBit]
		UIManagerItemTypeBit :: enum u32 {UI_MANAGER_MENUBAR = 0, UI_MANAGER_MENU = 1, UI_MANAGER_TOOLBAR = 2, UI_MANAGER_PLACEHOLDER = 3, UI_MANAGER_POPUP = 4, UI_MANAGER_MENUITEM = 5, UI_MANAGER_TOOLITEM = 6, UI_MANAGER_SEPARATOR = 7, UI_MANAGER_ACCELERATOR = 8, UI_MANAGER_POPUP_WITH_ACCELS = 9}
		UIManagerPrivate :: struct #packed {}
		Unit :: enum u32 {NONE = 0, POINTS = 1, INCH = 2, MM = 3}
		VBox :: struct {box: Box}
		VBoxClass :: struct {parent_class: BoxClass}
		VButtonBox :: struct {button_box: ButtonBox}
		VButtonBoxClass :: struct {parent_class: ButtonBoxClass}
		VPaned :: struct {paned: Paned}
		VPanedClass :: struct {parent_class: PanedClass}
		VScale :: struct {scale: Scale}
		VScaleClass :: struct {parent_class: ScaleClass}
		VScrollbar :: struct {scrollbar: Scrollbar}
		VScrollbarClass :: struct {parent_class: ScrollbarClass}
		VSeparator :: struct {separator: Separator}
		VSeparatorClass :: struct {parent_class: SeparatorClass}
		Viewport :: struct {bin: Bin, priv: ^ViewportPrivate}
		ViewportClass :: struct {parent_class: BinClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1075, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1076, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1077, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1078}
		ViewportPrivate :: struct #packed {}
		VolumeButton :: struct {parent: ScaleButton}
		VolumeButtonClass :: struct {parent_class: ScaleButtonClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1079, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1080, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1081, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1082}
		Widget :: struct {parent_instance: gobj.InitiallyUnowned, priv: ^WidgetPrivate}
		WidgetClass :: struct {parent_class: gobj.InitiallyUnownedClass, activate_signal: glib.uint_, dispatch_child_properties_changed: dispatch_child_properties_changed_func_ptr_anon_17, destroy: destroy_func_ptr_anon_18, show: show_func_ptr_anon_19, show_all: show_all_func_ptr_anon_20, hide: hide_func_ptr_anon_21, map_m: map_func_ptr_anon_22, unmap: unmap_func_ptr_anon_23, realize: realize_func_ptr_anon_24, unrealize: unrealize_func_ptr_anon_25, size_allocate: size_allocate_func_ptr_anon_26, state_changed: state_changed_func_ptr_anon_27, state_flags_changed: state_flags_changed_func_ptr_anon_28, parent_set: parent_set_func_ptr_anon_29, hierarchy_changed: hierarchy_changed_func_ptr_anon_30, style_set: style_set_func_ptr_anon_31, direction_changed: direction_changed_func_ptr_anon_32, grab_notify: rab_notify_func_ptr_anon_33, child_notify: child_notify_func_ptr_anon_34, draw: draw_func_ptr_anon_35, get_request_mode: et_request_mode_func_ptr_anon_36, get_preferred_height: et_preferred_height_func_ptr_anon_37, get_preferred_width_for_height: et_preferred_width_for_height_func_ptr_anon_38, get_preferred_width: et_preferred_width_func_ptr_anon_39, get_preferred_height_for_width: et_preferred_height_for_width_func_ptr_anon_40, mnemonic_activate: mnemonic_activate_func_ptr_anon_41, grab_focus: rab_focus_func_ptr_anon_42, focus: focus_func_ptr_anon_43, move_focus: move_focus_func_ptr_anon_44, keynav_failed: keynav_failed_func_ptr_anon_45, event: event_func_ptr_anon_46, button_press_event: button_press_event_func_ptr_anon_47, button_release_event: button_release_event_func_ptr_anon_48, scroll_event: scroll_event_func_ptr_anon_49, motion_notify_event: motion_notify_event_func_ptr_anon_50, delete_event: delete_event_func_ptr_anon_51, destroy_event: destroy_event_func_ptr_anon_52, key_press_event: key_press_event_func_ptr_anon_53, key_release_event: key_release_event_func_ptr_anon_54, enter_notify_event: enter_notify_event_func_ptr_anon_55, leave_notify_event: leave_notify_event_func_ptr_anon_56, configure_event: configure_event_func_ptr_anon_57, focus_in_event: focus_in_event_func_ptr_anon_58, focus_out_event: focus_out_event_func_ptr_anon_59, map_event: map_event_func_ptr_anon_60, unmap_event: unmap_event_func_ptr_anon_61, property_notify_event: property_notify_event_func_ptr_anon_62, selection_clear_event: selection_clear_event_func_ptr_anon_63, selection_request_event: selection_request_event_func_ptr_anon_64, selection_notify_event: selection_notify_event_func_ptr_anon_65, proximity_in_event: proximity_in_event_func_ptr_anon_66, proximity_out_event: proximity_out_event_func_ptr_anon_67, visibility_notify_event: visibility_notify_event_func_ptr_anon_68, window_state_event: window_state_event_func_ptr_anon_69, damage_event: damage_event_func_ptr_anon_70, grab_broken_event: rab_broken_event_func_ptr_anon_71, selection_get: selection_get_func_ptr_anon_72, selection_received: selection_received_func_ptr_anon_73, drag_begin: drag_begin_func_ptr_anon_74, drag_end: drag_end_func_ptr_anon_75, drag_data_get: drag_data_get_func_ptr_anon_76, drag_data_delete: drag_data_delete_func_ptr_anon_77, drag_leave: drag_leave_func_ptr_anon_78, drag_motion: drag_motion_func_ptr_anon_79, drag_drop: drag_drop_func_ptr_anon_80, drag_data_received: drag_data_received_func_ptr_anon_81, drag_failed: drag_failed_func_ptr_anon_82, popup_menu: popup_menu_func_ptr_anon_83, show_help: show_help_func_ptr_anon_84, get_accessible: et_accessible_func_ptr_anon_85, screen_changed: screen_changed_func_ptr_anon_86, can_activate_accel: can_activate_accel_func_ptr_anon_87, composited_changed: composited_changed_func_ptr_anon_88, query_tooltip: query_tooltip_func_ptr_anon_89, compute_expand: compute_expand_func_ptr_anon_90, adjust_size_request: adjust_size_request_func_ptr_anon_91, adjust_size_allocation: adjust_size_allocation_func_ptr_anon_92, style_updated: style_updated_func_ptr_anon_93, touch_event: touch_event_func_ptr_anon_94, get_preferred_height_and_baseline_for_width: et_preferred_height_and_baseline_for_width_func_ptr_anon_95, adjust_baseline_request: adjust_baseline_request_func_ptr_anon_96, adjust_baseline_allocation: adjust_baseline_allocation_func_ptr_anon_97, queue_draw_region: queue_draw_region_func_ptr_anon_98, priv: ^WidgetClassPrivate, _gtk_reserved6: _gtk_reserved6_func_ptr_anon_99, _gtk_reserved7: _gtk_reserved7_func_ptr_anon_100}
		WidgetClassPrivate :: struct #packed {}
		WidgetHelpType :: enum u32 {WIDGET_HELP_TOOLTIP = 0, WIDGET_HELP_WHATS_THIS = 1}
		WidgetPath :: struct #packed {}
		WidgetPrivate :: struct #packed {}
		Window :: struct {bin: Bin, priv: ^WindowPrivate}
		WindowClass :: struct {parent_class: BinClass, set_focus: set_focus_func_ptr_anon_117, activate_focus: activate_focus_func_ptr_anon_118, activate_default: activate_default_func_ptr_anon_119, keys_changed: keys_changed_func_ptr_anon_120, enable_debugging: enable_debugging_func_ptr_anon_121, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_122, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_123, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_124}
		WindowGeometryInfo :: struct #packed {}
		WindowGroup :: struct {parent_instance: gobj.Object, priv: ^WindowGroupPrivate}
		WindowGroupClass :: struct {parent_class: gobj.ObjectClass, _gtk_reserved1: _gtk_reserved1_func_ptr_anon_1083, _gtk_reserved2: _gtk_reserved2_func_ptr_anon_1084, _gtk_reserved3: _gtk_reserved3_func_ptr_anon_1085, _gtk_reserved4: _gtk_reserved4_func_ptr_anon_1086}
		WindowGroupPrivate :: struct #packed {}
		WindowPosition :: enum u32 {WIN_POS_NONE = 0, WIN_POS_CENTER = 1, WIN_POS_MOUSE = 2, WIN_POS_CENTER_ALWAYS = 3, WIN_POS_CENTER_ON_PARENT = 4}
		WindowPrivate :: struct #packed {}
		WindowType :: enum u32 {WINDOW_TOPLEVEL = 0, WINDOW_POPUP = 1}
		WrapMode :: enum u32 {WRAP_NONE = 0, WRAP_CHAR = 1, WRAP_WORD = 2, WRAP_WORD_CHAR = 3}
		_GdkAtom :: struct #packed {}
		__gtk_reserved1_func_ptr_anon_1174 :: #type proc()
		__gtk_reserved1_func_ptr_anon_579 :: #type proc()
		__gtk_reserved2_func_ptr_anon_1175 :: #type proc()
		__gtk_reserved2_func_ptr_anon_580 :: #type proc()
		__gtk_reserved3_func_ptr_anon_1176 :: #type proc()
		__gtk_reserved3_func_ptr_anon_581 :: #type proc()
		__gtk_reserved4_func_ptr_anon_1177 :: #type proc()
		__gtk_reserved4_func_ptr_anon_582 :: #type proc()
		_gdk_reserved1_func_ptr_anon_4 :: #type proc()
		_gdk_reserved2_func_ptr_anon_5 :: #type proc()
		_gdk_reserved3_func_ptr_anon_6 :: #type proc()
		_gdk_reserved4_func_ptr_anon_7 :: #type proc()
		_gdk_reserved5_func_ptr_anon_8 :: #type proc()
		_gdk_reserved6_func_ptr_anon_9 :: #type proc()
		_gdk_reserved7_func_ptr_anon_10 :: #type proc()
		_gdk_reserved8_func_ptr_anon_11 :: #type proc()
		_gtk_padding1_func_ptr_anon_706 :: #type proc()
		_gtk_padding2_func_ptr_anon_707 :: #type proc()
		_gtk_padding3_func_ptr_anon_708 :: #type proc()
		_gtk_padding4_func_ptr_anon_709 :: #type proc()
		_gtk_recent1_func_ptr_anon_876 :: #type proc()
		_gtk_recent2_func_ptr_anon_877 :: #type proc()
		_gtk_recent3_func_ptr_anon_878 :: #type proc()
		_gtk_recent4_func_ptr_anon_879 :: #type proc()
		_gtk_reserved0_func_ptr_anon_332 :: #type proc()
		_gtk_reserved0_func_ptr_anon_482 :: #type proc()
		_gtk_reserved10_func_ptr_anon_1214 :: #type proc()
		_gtk_reserved11_func_ptr_anon_1215 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1011 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1029 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1036 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1040 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1044 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1062 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1067 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1071 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1075 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1079 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1083 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1087 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1097 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1104 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1108 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1113 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1117 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1121 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1125 :: #type proc()
		_gtk_reserved1_func_ptr_anon_113 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1131 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1137 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1141 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1146 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1151 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1159 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1163 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1205 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1216 :: #type proc()
		_gtk_reserved1_func_ptr_anon_122 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1220 :: #type proc()
		_gtk_reserved1_func_ptr_anon_1249 :: #type proc()
		_gtk_reserved1_func_ptr_anon_127 :: #type proc()
		_gtk_reserved1_func_ptr_anon_13 :: #type proc()
		_gtk_reserved1_func_ptr_anon_132 :: #type proc()
		_gtk_reserved1_func_ptr_anon_136 :: #type proc()
		_gtk_reserved1_func_ptr_anon_140 :: #type proc()
		_gtk_reserved1_func_ptr_anon_148 :: #type proc()
		_gtk_reserved1_func_ptr_anon_156 :: #type proc()
		_gtk_reserved1_func_ptr_anon_169 :: #type proc()
		_gtk_reserved1_func_ptr_anon_175 :: #type proc()
		_gtk_reserved1_func_ptr_anon_179 :: #type proc()
		_gtk_reserved1_func_ptr_anon_249 :: #type proc()
		_gtk_reserved1_func_ptr_anon_258 :: #type proc()
		_gtk_reserved1_func_ptr_anon_262 :: #type proc()
		_gtk_reserved1_func_ptr_anon_267 :: #type proc()
		_gtk_reserved1_func_ptr_anon_297 :: #type proc()
		_gtk_reserved1_func_ptr_anon_309 :: #type proc()
		_gtk_reserved1_func_ptr_anon_317 :: #type proc()
		_gtk_reserved1_func_ptr_anon_323 :: #type proc()
		_gtk_reserved1_func_ptr_anon_333 :: #type proc()
		_gtk_reserved1_func_ptr_anon_335 :: #type proc()
		_gtk_reserved1_func_ptr_anon_352 :: #type proc()
		_gtk_reserved1_func_ptr_anon_373 :: #type proc()
		_gtk_reserved1_func_ptr_anon_383 :: #type proc()
		_gtk_reserved1_func_ptr_anon_390 :: #type proc()
		_gtk_reserved1_func_ptr_anon_394 :: #type proc()
		_gtk_reserved1_func_ptr_anon_402 :: #type proc()
		_gtk_reserved1_func_ptr_anon_407 :: #type proc()
		_gtk_reserved1_func_ptr_anon_413 :: #type proc()
		_gtk_reserved1_func_ptr_anon_437 :: #type proc()
		_gtk_reserved1_func_ptr_anon_448 :: #type proc()
		_gtk_reserved1_func_ptr_anon_452 :: #type proc()
		_gtk_reserved1_func_ptr_anon_460 :: #type proc()
		_gtk_reserved1_func_ptr_anon_476 :: #type proc()
		_gtk_reserved1_func_ptr_anon_483 :: #type proc()
		_gtk_reserved1_func_ptr_anon_487 :: #type proc()
		_gtk_reserved1_func_ptr_anon_491 :: #type proc()
		_gtk_reserved1_func_ptr_anon_495 :: #type proc()
		_gtk_reserved1_func_ptr_anon_499 :: #type proc()
		_gtk_reserved1_func_ptr_anon_503 :: #type proc()
		_gtk_reserved1_func_ptr_anon_508 :: #type proc()
		_gtk_reserved1_func_ptr_anon_512 :: #type proc()
		_gtk_reserved1_func_ptr_anon_517 :: #type proc()
		_gtk_reserved1_func_ptr_anon_522 :: #type proc()
		_gtk_reserved1_func_ptr_anon_528 :: #type proc()
		_gtk_reserved1_func_ptr_anon_533 :: #type proc()
		_gtk_reserved1_func_ptr_anon_541 :: #type proc()
		_gtk_reserved1_func_ptr_anon_545 :: #type proc()
		_gtk_reserved1_func_ptr_anon_553 :: #type proc()
		_gtk_reserved1_func_ptr_anon_561 :: #type proc()
		_gtk_reserved1_func_ptr_anon_565 :: #type proc()
		_gtk_reserved1_func_ptr_anon_570 :: #type proc()
		_gtk_reserved1_func_ptr_anon_574 :: #type proc()
		_gtk_reserved1_func_ptr_anon_583 :: #type proc()
		_gtk_reserved1_func_ptr_anon_590 :: #type proc()
		_gtk_reserved1_func_ptr_anon_594 :: #type proc()
		_gtk_reserved1_func_ptr_anon_605 :: #type proc()
		_gtk_reserved1_func_ptr_anon_612 :: #type proc()
		_gtk_reserved1_func_ptr_anon_615 :: #type proc()
		_gtk_reserved1_func_ptr_anon_626 :: #type proc()
		_gtk_reserved1_func_ptr_anon_630 :: #type proc()
		_gtk_reserved1_func_ptr_anon_641 :: #type proc()
		_gtk_reserved1_func_ptr_anon_649 :: #type proc()
		_gtk_reserved1_func_ptr_anon_653 :: #type proc()
		_gtk_reserved1_func_ptr_anon_657 :: #type proc()
		_gtk_reserved1_func_ptr_anon_665 :: #type proc()
		_gtk_reserved1_func_ptr_anon_670 :: #type proc()
		_gtk_reserved1_func_ptr_anon_682 :: #type proc()
		_gtk_reserved1_func_ptr_anon_686 :: #type proc()
		_gtk_reserved1_func_ptr_anon_692 :: #type proc()
		_gtk_reserved1_func_ptr_anon_696 :: #type proc()
		_gtk_reserved1_func_ptr_anon_700 :: #type proc()
		_gtk_reserved1_func_ptr_anon_718 :: #type proc()
		_gtk_reserved1_func_ptr_anon_722 :: #type proc()
		_gtk_reserved1_func_ptr_anon_732 :: #type proc()
		_gtk_reserved1_func_ptr_anon_737 :: #type proc()
		_gtk_reserved1_func_ptr_anon_741 :: #type proc()
		_gtk_reserved1_func_ptr_anon_747 :: #type proc()
		_gtk_reserved1_func_ptr_anon_752 :: #type proc()
		_gtk_reserved1_func_ptr_anon_757 :: #type proc()
		_gtk_reserved1_func_ptr_anon_761 :: #type proc()
		_gtk_reserved1_func_ptr_anon_765 :: #type proc()
		_gtk_reserved1_func_ptr_anon_780 :: #type proc()
		_gtk_reserved1_func_ptr_anon_788 :: #type proc()
		_gtk_reserved1_func_ptr_anon_793 :: #type proc()
		_gtk_reserved1_func_ptr_anon_807 :: #type proc()
		_gtk_reserved1_func_ptr_anon_816 :: #type proc()
		_gtk_reserved1_func_ptr_anon_835 :: #type proc()
		_gtk_reserved1_func_ptr_anon_843 :: #type proc()
		_gtk_reserved1_func_ptr_anon_848 :: #type proc()
		_gtk_reserved1_func_ptr_anon_853 :: #type proc()
		_gtk_reserved1_func_ptr_anon_858 :: #type proc()
		_gtk_reserved1_func_ptr_anon_862 :: #type proc()
		_gtk_reserved1_func_ptr_anon_872 :: #type proc()
		_gtk_reserved1_func_ptr_anon_894 :: #type proc()
		_gtk_reserved1_func_ptr_anon_902 :: #type proc()
		_gtk_reserved1_func_ptr_anon_909 :: #type proc()
		_gtk_reserved1_func_ptr_anon_914 :: #type proc()
		_gtk_reserved1_func_ptr_anon_919 :: #type proc()
		_gtk_reserved1_func_ptr_anon_925 :: #type proc()
		_gtk_reserved1_func_ptr_anon_929 :: #type proc()
		_gtk_reserved1_func_ptr_anon_937 :: #type proc()
		_gtk_reserved1_func_ptr_anon_941 :: #type proc()
		_gtk_reserved1_func_ptr_anon_945 :: #type proc()
		_gtk_reserved1_func_ptr_anon_949 :: #type proc()
		_gtk_reserved1_func_ptr_anon_953 :: #type proc()
		_gtk_reserved1_func_ptr_anon_962 :: #type proc()
		_gtk_reserved1_func_ptr_anon_966 :: #type proc()
		_gtk_reserved1_func_ptr_anon_970 :: #type proc()
		_gtk_reserved1_func_ptr_anon_976 :: #type proc()
		_gtk_reserved1_func_ptr_anon_990 :: #type proc()
		_gtk_reserved1_func_ptr_anon_994 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1012 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1030 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1037 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1041 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1045 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1063 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1068 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1072 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1076 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1080 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1084 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1088 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1098 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1105 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1109 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1114 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1118 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1122 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1126 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1132 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1138 :: #type proc()
		_gtk_reserved2_func_ptr_anon_114 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1142 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1147 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1152 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1160 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1164 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1206 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1217 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1221 :: #type proc()
		_gtk_reserved2_func_ptr_anon_123 :: #type proc()
		_gtk_reserved2_func_ptr_anon_1250 :: #type proc()
		_gtk_reserved2_func_ptr_anon_128 :: #type proc()
		_gtk_reserved2_func_ptr_anon_133 :: #type proc()
		_gtk_reserved2_func_ptr_anon_137 :: #type proc()
		_gtk_reserved2_func_ptr_anon_14 :: #type proc()
		_gtk_reserved2_func_ptr_anon_141 :: #type proc()
		_gtk_reserved2_func_ptr_anon_149 :: #type proc()
		_gtk_reserved2_func_ptr_anon_157 :: #type proc()
		_gtk_reserved2_func_ptr_anon_170 :: #type proc()
		_gtk_reserved2_func_ptr_anon_176 :: #type proc()
		_gtk_reserved2_func_ptr_anon_180 :: #type proc()
		_gtk_reserved2_func_ptr_anon_221 :: #type proc()
		_gtk_reserved2_func_ptr_anon_250 :: #type proc()
		_gtk_reserved2_func_ptr_anon_259 :: #type proc()
		_gtk_reserved2_func_ptr_anon_263 :: #type proc()
		_gtk_reserved2_func_ptr_anon_268 :: #type proc()
		_gtk_reserved2_func_ptr_anon_298 :: #type proc()
		_gtk_reserved2_func_ptr_anon_310 :: #type proc()
		_gtk_reserved2_func_ptr_anon_318 :: #type proc()
		_gtk_reserved2_func_ptr_anon_324 :: #type proc()
		_gtk_reserved2_func_ptr_anon_334 :: #type proc()
		_gtk_reserved2_func_ptr_anon_336 :: #type proc()
		_gtk_reserved2_func_ptr_anon_353 :: #type proc()
		_gtk_reserved2_func_ptr_anon_374 :: #type proc()
		_gtk_reserved2_func_ptr_anon_384 :: #type proc()
		_gtk_reserved2_func_ptr_anon_391 :: #type proc()
		_gtk_reserved2_func_ptr_anon_395 :: #type proc()
		_gtk_reserved2_func_ptr_anon_403 :: #type proc()
		_gtk_reserved2_func_ptr_anon_408 :: #type proc()
		_gtk_reserved2_func_ptr_anon_414 :: #type proc()
		_gtk_reserved2_func_ptr_anon_438 :: #type proc()
		_gtk_reserved2_func_ptr_anon_449 :: #type proc()
		_gtk_reserved2_func_ptr_anon_453 :: #type proc()
		_gtk_reserved2_func_ptr_anon_461 :: #type proc()
		_gtk_reserved2_func_ptr_anon_477 :: #type proc()
		_gtk_reserved2_func_ptr_anon_484 :: #type proc()
		_gtk_reserved2_func_ptr_anon_488 :: #type proc()
		_gtk_reserved2_func_ptr_anon_492 :: #type proc()
		_gtk_reserved2_func_ptr_anon_496 :: #type proc()
		_gtk_reserved2_func_ptr_anon_500 :: #type proc()
		_gtk_reserved2_func_ptr_anon_504 :: #type proc()
		_gtk_reserved2_func_ptr_anon_509 :: #type proc()
		_gtk_reserved2_func_ptr_anon_513 :: #type proc()
		_gtk_reserved2_func_ptr_anon_518 :: #type proc()
		_gtk_reserved2_func_ptr_anon_523 :: #type proc()
		_gtk_reserved2_func_ptr_anon_529 :: #type proc()
		_gtk_reserved2_func_ptr_anon_534 :: #type proc()
		_gtk_reserved2_func_ptr_anon_542 :: #type proc()
		_gtk_reserved2_func_ptr_anon_546 :: #type proc()
		_gtk_reserved2_func_ptr_anon_554 :: #type proc()
		_gtk_reserved2_func_ptr_anon_558 :: #type proc()
		_gtk_reserved2_func_ptr_anon_562 :: #type proc()
		_gtk_reserved2_func_ptr_anon_566 :: #type proc()
		_gtk_reserved2_func_ptr_anon_571 :: #type proc()
		_gtk_reserved2_func_ptr_anon_575 :: #type proc()
		_gtk_reserved2_func_ptr_anon_584 :: #type proc()
		_gtk_reserved2_func_ptr_anon_591 :: #type proc()
		_gtk_reserved2_func_ptr_anon_595 :: #type proc()
		_gtk_reserved2_func_ptr_anon_606 :: #type proc()
		_gtk_reserved2_func_ptr_anon_613 :: #type proc()
		_gtk_reserved2_func_ptr_anon_616 :: #type proc()
		_gtk_reserved2_func_ptr_anon_627 :: #type proc()
		_gtk_reserved2_func_ptr_anon_631 :: #type proc()
		_gtk_reserved2_func_ptr_anon_642 :: #type proc()
		_gtk_reserved2_func_ptr_anon_650 :: #type proc()
		_gtk_reserved2_func_ptr_anon_654 :: #type proc()
		_gtk_reserved2_func_ptr_anon_658 :: #type proc()
		_gtk_reserved2_func_ptr_anon_666 :: #type proc()
		_gtk_reserved2_func_ptr_anon_671 :: #type proc()
		_gtk_reserved2_func_ptr_anon_683 :: #type proc()
		_gtk_reserved2_func_ptr_anon_687 :: #type proc()
		_gtk_reserved2_func_ptr_anon_693 :: #type proc()
		_gtk_reserved2_func_ptr_anon_697 :: #type proc()
		_gtk_reserved2_func_ptr_anon_701 :: #type proc()
		_gtk_reserved2_func_ptr_anon_719 :: #type proc()
		_gtk_reserved2_func_ptr_anon_723 :: #type proc()
		_gtk_reserved2_func_ptr_anon_733 :: #type proc()
		_gtk_reserved2_func_ptr_anon_738 :: #type proc()
		_gtk_reserved2_func_ptr_anon_742 :: #type proc()
		_gtk_reserved2_func_ptr_anon_748 :: #type proc()
		_gtk_reserved2_func_ptr_anon_753 :: #type proc()
		_gtk_reserved2_func_ptr_anon_758 :: #type proc()
		_gtk_reserved2_func_ptr_anon_762 :: #type proc()
		_gtk_reserved2_func_ptr_anon_766 :: #type proc()
		_gtk_reserved2_func_ptr_anon_781 :: #type proc()
		_gtk_reserved2_func_ptr_anon_789 :: #type proc()
		_gtk_reserved2_func_ptr_anon_794 :: #type proc()
		_gtk_reserved2_func_ptr_anon_808 :: #type proc()
		_gtk_reserved2_func_ptr_anon_817 :: #type proc()
		_gtk_reserved2_func_ptr_anon_836 :: #type proc()
		_gtk_reserved2_func_ptr_anon_844 :: #type proc()
		_gtk_reserved2_func_ptr_anon_849 :: #type proc()
		_gtk_reserved2_func_ptr_anon_854 :: #type proc()
		_gtk_reserved2_func_ptr_anon_859 :: #type proc()
		_gtk_reserved2_func_ptr_anon_863 :: #type proc()
		_gtk_reserved2_func_ptr_anon_873 :: #type proc()
		_gtk_reserved2_func_ptr_anon_895 :: #type proc()
		_gtk_reserved2_func_ptr_anon_903 :: #type proc()
		_gtk_reserved2_func_ptr_anon_910 :: #type proc()
		_gtk_reserved2_func_ptr_anon_915 :: #type proc()
		_gtk_reserved2_func_ptr_anon_920 :: #type proc()
		_gtk_reserved2_func_ptr_anon_926 :: #type proc()
		_gtk_reserved2_func_ptr_anon_930 :: #type proc()
		_gtk_reserved2_func_ptr_anon_938 :: #type proc()
		_gtk_reserved2_func_ptr_anon_942 :: #type proc()
		_gtk_reserved2_func_ptr_anon_946 :: #type proc()
		_gtk_reserved2_func_ptr_anon_950 :: #type proc()
		_gtk_reserved2_func_ptr_anon_954 :: #type proc()
		_gtk_reserved2_func_ptr_anon_963 :: #type proc()
		_gtk_reserved2_func_ptr_anon_967 :: #type proc()
		_gtk_reserved2_func_ptr_anon_971 :: #type proc()
		_gtk_reserved2_func_ptr_anon_977 :: #type proc()
		_gtk_reserved2_func_ptr_anon_991 :: #type proc()
		_gtk_reserved2_func_ptr_anon_995 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1013 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1031 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1038 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1042 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1046 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1064 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1069 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1073 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1077 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1081 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1085 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1089 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1099 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1106 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1110 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1115 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1119 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1123 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1127 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1133 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1139 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1143 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1148 :: #type proc()
		_gtk_reserved3_func_ptr_anon_115 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1153 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1161 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1165 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1207 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1218 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1222 :: #type proc()
		_gtk_reserved3_func_ptr_anon_124 :: #type proc()
		_gtk_reserved3_func_ptr_anon_1251 :: #type proc()
		_gtk_reserved3_func_ptr_anon_129 :: #type proc()
		_gtk_reserved3_func_ptr_anon_134 :: #type proc()
		_gtk_reserved3_func_ptr_anon_138 :: #type proc()
		_gtk_reserved3_func_ptr_anon_142 :: #type proc()
		_gtk_reserved3_func_ptr_anon_15 :: #type proc()
		_gtk_reserved3_func_ptr_anon_150 :: #type proc()
		_gtk_reserved3_func_ptr_anon_158 :: #type proc()
		_gtk_reserved3_func_ptr_anon_163 :: #type proc()
		_gtk_reserved3_func_ptr_anon_171 :: #type proc()
		_gtk_reserved3_func_ptr_anon_177 :: #type proc()
		_gtk_reserved3_func_ptr_anon_181 :: #type proc()
		_gtk_reserved3_func_ptr_anon_222 :: #type proc()
		_gtk_reserved3_func_ptr_anon_251 :: #type proc()
		_gtk_reserved3_func_ptr_anon_260 :: #type proc()
		_gtk_reserved3_func_ptr_anon_264 :: #type proc()
		_gtk_reserved3_func_ptr_anon_269 :: #type proc()
		_gtk_reserved3_func_ptr_anon_299 :: #type proc()
		_gtk_reserved3_func_ptr_anon_311 :: #type proc()
		_gtk_reserved3_func_ptr_anon_319 :: #type proc()
		_gtk_reserved3_func_ptr_anon_325 :: #type proc()
		_gtk_reserved3_func_ptr_anon_337 :: #type proc()
		_gtk_reserved3_func_ptr_anon_354 :: #type proc()
		_gtk_reserved3_func_ptr_anon_375 :: #type proc()
		_gtk_reserved3_func_ptr_anon_385 :: #type proc()
		_gtk_reserved3_func_ptr_anon_392 :: #type proc()
		_gtk_reserved3_func_ptr_anon_396 :: #type proc()
		_gtk_reserved3_func_ptr_anon_404 :: #type proc()
		_gtk_reserved3_func_ptr_anon_409 :: #type proc()
		_gtk_reserved3_func_ptr_anon_415 :: #type proc()
		_gtk_reserved3_func_ptr_anon_439 :: #type proc()
		_gtk_reserved3_func_ptr_anon_450 :: #type proc()
		_gtk_reserved3_func_ptr_anon_454 :: #type proc()
		_gtk_reserved3_func_ptr_anon_462 :: #type proc()
		_gtk_reserved3_func_ptr_anon_478 :: #type proc()
		_gtk_reserved3_func_ptr_anon_485 :: #type proc()
		_gtk_reserved3_func_ptr_anon_489 :: #type proc()
		_gtk_reserved3_func_ptr_anon_493 :: #type proc()
		_gtk_reserved3_func_ptr_anon_497 :: #type proc()
		_gtk_reserved3_func_ptr_anon_501 :: #type proc()
		_gtk_reserved3_func_ptr_anon_505 :: #type proc()
		_gtk_reserved3_func_ptr_anon_510 :: #type proc()
		_gtk_reserved3_func_ptr_anon_514 :: #type proc()
		_gtk_reserved3_func_ptr_anon_519 :: #type proc()
		_gtk_reserved3_func_ptr_anon_524 :: #type proc()
		_gtk_reserved3_func_ptr_anon_530 :: #type proc()
		_gtk_reserved3_func_ptr_anon_535 :: #type proc()
		_gtk_reserved3_func_ptr_anon_543 :: #type proc()
		_gtk_reserved3_func_ptr_anon_547 :: #type proc()
		_gtk_reserved3_func_ptr_anon_555 :: #type proc()
		_gtk_reserved3_func_ptr_anon_559 :: #type proc()
		_gtk_reserved3_func_ptr_anon_563 :: #type proc()
		_gtk_reserved3_func_ptr_anon_567 :: #type proc()
		_gtk_reserved3_func_ptr_anon_572 :: #type proc()
		_gtk_reserved3_func_ptr_anon_576 :: #type proc()
		_gtk_reserved3_func_ptr_anon_585 :: #type proc()
		_gtk_reserved3_func_ptr_anon_592 :: #type proc()
		_gtk_reserved3_func_ptr_anon_596 :: #type proc()
		_gtk_reserved3_func_ptr_anon_607 :: #type proc()
		_gtk_reserved3_func_ptr_anon_617 :: #type proc()
		_gtk_reserved3_func_ptr_anon_628 :: #type proc()
		_gtk_reserved3_func_ptr_anon_632 :: #type proc()
		_gtk_reserved3_func_ptr_anon_643 :: #type proc()
		_gtk_reserved3_func_ptr_anon_651 :: #type proc()
		_gtk_reserved3_func_ptr_anon_655 :: #type proc()
		_gtk_reserved3_func_ptr_anon_659 :: #type proc()
		_gtk_reserved3_func_ptr_anon_667 :: #type proc()
		_gtk_reserved3_func_ptr_anon_672 :: #type proc()
		_gtk_reserved3_func_ptr_anon_684 :: #type proc()
		_gtk_reserved3_func_ptr_anon_688 :: #type proc()
		_gtk_reserved3_func_ptr_anon_694 :: #type proc()
		_gtk_reserved3_func_ptr_anon_698 :: #type proc()
		_gtk_reserved3_func_ptr_anon_702 :: #type proc()
		_gtk_reserved3_func_ptr_anon_720 :: #type proc()
		_gtk_reserved3_func_ptr_anon_734 :: #type proc()
		_gtk_reserved3_func_ptr_anon_739 :: #type proc()
		_gtk_reserved3_func_ptr_anon_743 :: #type proc()
		_gtk_reserved3_func_ptr_anon_749 :: #type proc()
		_gtk_reserved3_func_ptr_anon_754 :: #type proc()
		_gtk_reserved3_func_ptr_anon_759 :: #type proc()
		_gtk_reserved3_func_ptr_anon_763 :: #type proc()
		_gtk_reserved3_func_ptr_anon_767 :: #type proc()
		_gtk_reserved3_func_ptr_anon_782 :: #type proc()
		_gtk_reserved3_func_ptr_anon_790 :: #type proc()
		_gtk_reserved3_func_ptr_anon_795 :: #type proc()
		_gtk_reserved3_func_ptr_anon_809 :: #type proc()
		_gtk_reserved3_func_ptr_anon_818 :: #type proc()
		_gtk_reserved3_func_ptr_anon_837 :: #type proc()
		_gtk_reserved3_func_ptr_anon_845 :: #type proc()
		_gtk_reserved3_func_ptr_anon_850 :: #type proc()
		_gtk_reserved3_func_ptr_anon_855 :: #type proc()
		_gtk_reserved3_func_ptr_anon_860 :: #type proc()
		_gtk_reserved3_func_ptr_anon_864 :: #type proc()
		_gtk_reserved3_func_ptr_anon_874 :: #type proc()
		_gtk_reserved3_func_ptr_anon_896 :: #type proc()
		_gtk_reserved3_func_ptr_anon_904 :: #type proc()
		_gtk_reserved3_func_ptr_anon_911 :: #type proc()
		_gtk_reserved3_func_ptr_anon_916 :: #type proc()
		_gtk_reserved3_func_ptr_anon_921 :: #type proc()
		_gtk_reserved3_func_ptr_anon_927 :: #type proc()
		_gtk_reserved3_func_ptr_anon_931 :: #type proc()
		_gtk_reserved3_func_ptr_anon_939 :: #type proc()
		_gtk_reserved3_func_ptr_anon_943 :: #type proc()
		_gtk_reserved3_func_ptr_anon_947 :: #type proc()
		_gtk_reserved3_func_ptr_anon_951 :: #type proc()
		_gtk_reserved3_func_ptr_anon_955 :: #type proc()
		_gtk_reserved3_func_ptr_anon_964 :: #type proc()
		_gtk_reserved3_func_ptr_anon_968 :: #type proc()
		_gtk_reserved3_func_ptr_anon_972 :: #type proc()
		_gtk_reserved3_func_ptr_anon_978 :: #type proc()
		_gtk_reserved3_func_ptr_anon_992 :: #type proc()
		_gtk_reserved3_func_ptr_anon_996 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1014 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1032 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1039 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1043 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1047 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1065 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1070 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1074 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1078 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1082 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1086 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1090 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1100 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1107 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1111 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1116 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1120 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1124 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1128 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1134 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1140 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1144 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1149 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1154 :: #type proc()
		_gtk_reserved4_func_ptr_anon_116 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1162 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1166 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1208 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1219 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1223 :: #type proc()
		_gtk_reserved4_func_ptr_anon_1252 :: #type proc()
		_gtk_reserved4_func_ptr_anon_130 :: #type proc()
		_gtk_reserved4_func_ptr_anon_135 :: #type proc()
		_gtk_reserved4_func_ptr_anon_139 :: #type proc()
		_gtk_reserved4_func_ptr_anon_143 :: #type proc()
		_gtk_reserved4_func_ptr_anon_151 :: #type proc()
		_gtk_reserved4_func_ptr_anon_159 :: #type proc()
		_gtk_reserved4_func_ptr_anon_16 :: #type proc()
		_gtk_reserved4_func_ptr_anon_164 :: #type proc()
		_gtk_reserved4_func_ptr_anon_172 :: #type proc()
		_gtk_reserved4_func_ptr_anon_178 :: #type proc()
		_gtk_reserved4_func_ptr_anon_182 :: #type proc()
		_gtk_reserved4_func_ptr_anon_223 :: #type proc()
		_gtk_reserved4_func_ptr_anon_252 :: #type proc()
		_gtk_reserved4_func_ptr_anon_261 :: #type proc()
		_gtk_reserved4_func_ptr_anon_265 :: #type proc()
		_gtk_reserved4_func_ptr_anon_270 :: #type proc()
		_gtk_reserved4_func_ptr_anon_300 :: #type proc()
		_gtk_reserved4_func_ptr_anon_312 :: #type proc()
		_gtk_reserved4_func_ptr_anon_320 :: #type proc()
		_gtk_reserved4_func_ptr_anon_326 :: #type proc()
		_gtk_reserved4_func_ptr_anon_338 :: #type proc()
		_gtk_reserved4_func_ptr_anon_355 :: #type proc()
		_gtk_reserved4_func_ptr_anon_376 :: #type proc()
		_gtk_reserved4_func_ptr_anon_393 :: #type proc()
		_gtk_reserved4_func_ptr_anon_397 :: #type proc()
		_gtk_reserved4_func_ptr_anon_405 :: #type proc()
		_gtk_reserved4_func_ptr_anon_410 :: #type proc()
		_gtk_reserved4_func_ptr_anon_416 :: #type proc()
		_gtk_reserved4_func_ptr_anon_440 :: #type proc()
		_gtk_reserved4_func_ptr_anon_451 :: #type proc()
		_gtk_reserved4_func_ptr_anon_455 :: #type proc()
		_gtk_reserved4_func_ptr_anon_463 :: #type proc()
		_gtk_reserved4_func_ptr_anon_479 :: #type proc()
		_gtk_reserved4_func_ptr_anon_486 :: #type proc()
		_gtk_reserved4_func_ptr_anon_490 :: #type proc()
		_gtk_reserved4_func_ptr_anon_494 :: #type proc()
		_gtk_reserved4_func_ptr_anon_498 :: #type proc()
		_gtk_reserved4_func_ptr_anon_502 :: #type proc()
		_gtk_reserved4_func_ptr_anon_506 :: #type proc()
		_gtk_reserved4_func_ptr_anon_511 :: #type proc()
		_gtk_reserved4_func_ptr_anon_515 :: #type proc()
		_gtk_reserved4_func_ptr_anon_520 :: #type proc()
		_gtk_reserved4_func_ptr_anon_525 :: #type proc()
		_gtk_reserved4_func_ptr_anon_531 :: #type proc()
		_gtk_reserved4_func_ptr_anon_536 :: #type proc()
		_gtk_reserved4_func_ptr_anon_544 :: #type proc()
		_gtk_reserved4_func_ptr_anon_548 :: #type proc()
		_gtk_reserved4_func_ptr_anon_556 :: #type proc()
		_gtk_reserved4_func_ptr_anon_560 :: #type proc()
		_gtk_reserved4_func_ptr_anon_564 :: #type proc()
		_gtk_reserved4_func_ptr_anon_568 :: #type proc()
		_gtk_reserved4_func_ptr_anon_573 :: #type proc()
		_gtk_reserved4_func_ptr_anon_577 :: #type proc()
		_gtk_reserved4_func_ptr_anon_586 :: #type proc()
		_gtk_reserved4_func_ptr_anon_593 :: #type proc()
		_gtk_reserved4_func_ptr_anon_597 :: #type proc()
		_gtk_reserved4_func_ptr_anon_608 :: #type proc()
		_gtk_reserved4_func_ptr_anon_618 :: #type proc()
		_gtk_reserved4_func_ptr_anon_629 :: #type proc()
		_gtk_reserved4_func_ptr_anon_633 :: #type proc()
		_gtk_reserved4_func_ptr_anon_644 :: #type proc()
		_gtk_reserved4_func_ptr_anon_652 :: #type proc()
		_gtk_reserved4_func_ptr_anon_656 :: #type proc()
		_gtk_reserved4_func_ptr_anon_660 :: #type proc()
		_gtk_reserved4_func_ptr_anon_668 :: #type proc()
		_gtk_reserved4_func_ptr_anon_673 :: #type proc()
		_gtk_reserved4_func_ptr_anon_685 :: #type proc()
		_gtk_reserved4_func_ptr_anon_689 :: #type proc()
		_gtk_reserved4_func_ptr_anon_695 :: #type proc()
		_gtk_reserved4_func_ptr_anon_699 :: #type proc()
		_gtk_reserved4_func_ptr_anon_703 :: #type proc()
		_gtk_reserved4_func_ptr_anon_735 :: #type proc()
		_gtk_reserved4_func_ptr_anon_740 :: #type proc()
		_gtk_reserved4_func_ptr_anon_744 :: #type proc()
		_gtk_reserved4_func_ptr_anon_750 :: #type proc()
		_gtk_reserved4_func_ptr_anon_755 :: #type proc()
		_gtk_reserved4_func_ptr_anon_760 :: #type proc()
		_gtk_reserved4_func_ptr_anon_764 :: #type proc()
		_gtk_reserved4_func_ptr_anon_768 :: #type proc()
		_gtk_reserved4_func_ptr_anon_783 :: #type proc()
		_gtk_reserved4_func_ptr_anon_791 :: #type proc()
		_gtk_reserved4_func_ptr_anon_796 :: #type proc()
		_gtk_reserved4_func_ptr_anon_810 :: #type proc()
		_gtk_reserved4_func_ptr_anon_819 :: #type proc()
		_gtk_reserved4_func_ptr_anon_838 :: #type proc()
		_gtk_reserved4_func_ptr_anon_846 :: #type proc()
		_gtk_reserved4_func_ptr_anon_851 :: #type proc()
		_gtk_reserved4_func_ptr_anon_856 :: #type proc()
		_gtk_reserved4_func_ptr_anon_861 :: #type proc()
		_gtk_reserved4_func_ptr_anon_865 :: #type proc()
		_gtk_reserved4_func_ptr_anon_897 :: #type proc()
		_gtk_reserved4_func_ptr_anon_905 :: #type proc()
		_gtk_reserved4_func_ptr_anon_912 :: #type proc()
		_gtk_reserved4_func_ptr_anon_917 :: #type proc()
		_gtk_reserved4_func_ptr_anon_922 :: #type proc()
		_gtk_reserved4_func_ptr_anon_928 :: #type proc()
		_gtk_reserved4_func_ptr_anon_932 :: #type proc()
		_gtk_reserved4_func_ptr_anon_940 :: #type proc()
		_gtk_reserved4_func_ptr_anon_944 :: #type proc()
		_gtk_reserved4_func_ptr_anon_948 :: #type proc()
		_gtk_reserved4_func_ptr_anon_952 :: #type proc()
		_gtk_reserved4_func_ptr_anon_956 :: #type proc()
		_gtk_reserved4_func_ptr_anon_965 :: #type proc()
		_gtk_reserved4_func_ptr_anon_969 :: #type proc()
		_gtk_reserved4_func_ptr_anon_973 :: #type proc()
		_gtk_reserved4_func_ptr_anon_979 :: #type proc()
		_gtk_reserved4_func_ptr_anon_993 :: #type proc()
		_gtk_reserved4_func_ptr_anon_997 :: #type proc()
		_gtk_reserved5_func_ptr_anon_1209 :: #type proc()
		_gtk_reserved5_func_ptr_anon_152 :: #type proc()
		_gtk_reserved5_func_ptr_anon_253 :: #type proc()
		_gtk_reserved5_func_ptr_anon_301 :: #type proc()
		_gtk_reserved5_func_ptr_anon_313 :: #type proc()
		_gtk_reserved5_func_ptr_anon_356 :: #type proc()
		_gtk_reserved5_func_ptr_anon_377 :: #type proc()
		_gtk_reserved5_func_ptr_anon_406 :: #type proc()
		_gtk_reserved5_func_ptr_anon_417 :: #type proc()
		_gtk_reserved5_func_ptr_anon_464 :: #type proc()
		_gtk_reserved5_func_ptr_anon_549 :: #type proc()
		_gtk_reserved5_func_ptr_anon_609 :: #type proc()
		_gtk_reserved5_func_ptr_anon_634 :: #type proc()
		_gtk_reserved5_func_ptr_anon_645 :: #type proc()
		_gtk_reserved5_func_ptr_anon_784 :: #type proc()
		_gtk_reserved5_func_ptr_anon_797 :: #type proc()
		_gtk_reserved5_func_ptr_anon_820 :: #type proc()
		_gtk_reserved5_func_ptr_anon_839 :: #type proc()
		_gtk_reserved6_func_ptr_anon_1210 :: #type proc()
		_gtk_reserved6_func_ptr_anon_153 :: #type proc()
		_gtk_reserved6_func_ptr_anon_254 :: #type proc()
		_gtk_reserved6_func_ptr_anon_302 :: #type proc()
		_gtk_reserved6_func_ptr_anon_314 :: #type proc()
		_gtk_reserved6_func_ptr_anon_357 :: #type proc()
		_gtk_reserved6_func_ptr_anon_378 :: #type proc()
		_gtk_reserved6_func_ptr_anon_418 :: #type proc()
		_gtk_reserved6_func_ptr_anon_465 :: #type proc()
		_gtk_reserved6_func_ptr_anon_550 :: #type proc()
		_gtk_reserved6_func_ptr_anon_610 :: #type proc()
		_gtk_reserved6_func_ptr_anon_635 :: #type proc()
		_gtk_reserved6_func_ptr_anon_646 :: #type proc()
		_gtk_reserved6_func_ptr_anon_785 :: #type proc()
		_gtk_reserved6_func_ptr_anon_798 :: #type proc()
		_gtk_reserved6_func_ptr_anon_821 :: #type proc()
		_gtk_reserved6_func_ptr_anon_840 :: #type proc()
		_gtk_reserved6_func_ptr_anon_99 :: #type proc()
		_gtk_reserved7_func_ptr_anon_100 :: #type proc()
		_gtk_reserved7_func_ptr_anon_1211 :: #type proc()
		_gtk_reserved7_func_ptr_anon_154 :: #type proc()
		_gtk_reserved7_func_ptr_anon_255 :: #type proc()
		_gtk_reserved7_func_ptr_anon_315 :: #type proc()
		_gtk_reserved7_func_ptr_anon_379 :: #type proc()
		_gtk_reserved7_func_ptr_anon_419 :: #type proc()
		_gtk_reserved7_func_ptr_anon_551 :: #type proc()
		_gtk_reserved7_func_ptr_anon_636 :: #type proc()
		_gtk_reserved7_func_ptr_anon_647 :: #type proc()
		_gtk_reserved7_func_ptr_anon_786 :: #type proc()
		_gtk_reserved7_func_ptr_anon_799 :: #type proc()
		_gtk_reserved7_func_ptr_anon_822 :: #type proc()
		_gtk_reserved7_func_ptr_anon_841 :: #type proc()
		_gtk_reserved8_func_ptr_anon_1212 :: #type proc()
		_gtk_reserved8_func_ptr_anon_155 :: #type proc()
		_gtk_reserved8_func_ptr_anon_256 :: #type proc()
		_gtk_reserved8_func_ptr_anon_316 :: #type proc()
		_gtk_reserved8_func_ptr_anon_380 :: #type proc()
		_gtk_reserved8_func_ptr_anon_420 :: #type proc()
		_gtk_reserved8_func_ptr_anon_552 :: #type proc()
		_gtk_reserved8_func_ptr_anon_637 :: #type proc()
		_gtk_reserved8_func_ptr_anon_648 :: #type proc()
		_gtk_reserved8_func_ptr_anon_787 :: #type proc()
		_gtk_reserved8_func_ptr_anon_800 :: #type proc()
		_gtk_reserved8_func_ptr_anon_823 :: #type proc()
		_gtk_reserved8_func_ptr_anon_842 :: #type proc()
		_gtk_reserved9_func_ptr_anon_1213 :: #type proc()
		_switch_padding_1_func_ptr_anon_982 :: #type proc()
		_switch_padding_2_func_ptr_anon_983 :: #type proc()
		_switch_padding_3_func_ptr_anon_984 :: #type proc()
		_switch_padding_4_func_ptr_anon_985 :: #type proc()
		_switch_padding_5_func_ptr_anon_986 :: #type proc()
		accel_changed_func_ptr_anon_12 :: #type proc(accel_group: ^AccelGroup, keyval: glib.uint_, modifier: GdkModifierType, accel_closure: ^gobj.Closure)
		accel_cleared_func_ptr_anon_481 :: #type proc(accel: ^CellRendererAccel, path_string: cstring)
		accel_edited_func_ptr_anon_480 :: #type proc(accel: ^CellRendererAccel, path_string: cstring, accel_key: glib.uint_, accel_mods: GdkModifierType, hardware_keycode: glib.uint_)
		accept_position_func_ptr_anon_805 :: #type proc(paned: ^Paned) -> glib.boolean
		action_activated_func_ptr_anon_328 :: #type proc(completion: ^EntryCompletion, index_: glib.int_)
		actions_changed_func_ptr_anon_1242 :: #type proc(manager: ^UIManager)
		activate_cursor_child_func_ptr_anon_600 :: #type proc(box: ^FlowBox)
		activate_cursor_item_func_ptr_anon_681 :: #type proc(icon_view: ^IconView) -> glib.boolean
		activate_cursor_row_func_ptr_anon_712 :: #type proc(box: ^ListBox)
		activate_default_func_ptr_anon_119 :: #type proc(window: ^Window)
		activate_focus_func_ptr_anon_118 :: #type proc(window: ^Window)
		activate_func_ptr_anon_1091 :: #type proc(action: ^Action)
		activate_func_ptr_anon_1167 :: #type proc(status_icon: ^StatusIcon)
		activate_func_ptr_anon_217 :: #type proc(cell: ^CellRenderer, event: ^GdkEvent, widget: ^Widget, path: cstring, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState) -> glib.boolean
		activate_func_ptr_anon_248 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^GdkRectangle, flags: CellRendererState, edit_only: glib.boolean) -> glib.boolean
		activate_func_ptr_anon_340 :: #type proc(entry: ^Entry)
		activate_func_ptr_anon_436 :: #type proc(button: ^Button)
		activate_func_ptr_anon_569 :: #type proc(expander: ^Expander)
		activate_func_ptr_anon_611 :: #type proc(child: ^FlowBoxChild)
		activate_func_ptr_anon_721 :: #type proc(row: ^ListBoxRow)
		activate_func_ptr_anon_980 :: #type proc(sw: ^Switch)
		activate_link_func_ptr_anon_131 :: #type proc(dialog: ^AboutDialog, uri: cstring) -> glib.boolean
		activate_link_func_ptr_anon_147 :: #type proc(label: ^Label, uri: cstring) -> glib.boolean
		activate_link_func_ptr_anon_705 :: #type proc(button: ^LinkButton) -> glib.boolean
		add_attribute_func_ptr_anon_469 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, attribute: cstring, column: glib.int_)
		add_child_func_ptr_anon_423 :: #type proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, type: cstring)
		add_filter_func_ptr_anon_888 :: #type proc(chooser: ^RecentChooser, filter: ^RecentFilter)
		add_func_ptr_anon_103 :: #type proc(container: ^Container, widget: ^Widget)
		add_func_ptr_anon_230 :: #type proc(area: ^CellArea, renderer: ^CellRenderer)
		add_palette_func_ptr_anon_539 :: #type proc(chooser: ^ColorChooser, orientation: Orientation, colors_per_line: glib.int_, n_colors: glib.int_, colors: [^]GdkRGBA)
		add_widget_func_ptr_anon_1241 :: #type proc(manager: ^UIManager, widget: ^Widget)
		adjust_baseline_allocation_func_ptr_anon_97 :: #type proc(widget: ^Widget, baseline: ^glib.int_)
		adjust_baseline_request_func_ptr_anon_96 :: #type proc(widget: ^Widget, minimum_baseline: ^glib.int_, natural_baseline: ^glib.int_)
		adjust_bounds_func_ptr_anon_867 :: #type proc(range: ^Range, new_value: glib.double)
		adjust_size_allocation_func_ptr_anon_92 :: #type proc(widget: ^Widget, orientation: Orientation, minimum_size: ^glib.int_, natural_size: ^glib.int_, allocated_pos: [^]glib.int_, allocated_size: ^glib.int_)
		adjust_size_request_func_ptr_anon_91 :: #type proc(widget: ^Widget, orientation: Orientation, minimum_size: ^glib.int_, natural_size: ^glib.int_)
		allocate_func_ptr_anon_456 :: #type proc(context_p: ^CellAreaContext, width: glib.int_, height: glib.int_)
		application_activated_func_ptr_anon_184 :: #type proc(self: ^AppChooserWidget, app_info: ^gio.AppInfo)
		application_selected_func_ptr_anon_183 :: #type proc(self: ^AppChooserWidget, app_info: ^gio.AppInfo)
		apply_attributes_func_ptr_anon_236 :: #type proc(area: ^CellArea, tree_model: ^TreeModel, iter: ^TreeIter, is_expander: glib.boolean, is_expanded: glib.boolean)
		apply_func_ptr_anon_399 :: #type proc(assistant: ^Assistant)
		apply_tag_func_ptr_anon_1006 :: #type proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter)
		backspace_func_ptr_anon_1020 :: #type proc(text_view: ^TextView)
		backspace_func_ptr_anon_344 :: #type proc(entry: ^Entry)
		begin_print_func_ptr_anon_825 :: #type proc(operation: ^PrintOperation, context_p: ^PrintContext)
		begin_user_action_func_ptr_anon_1008 :: #type proc(buffer: ^TextBuffer)
		button_press_event_func_ptr_anon_1170 :: #type proc(status_icon: ^StatusIcon, event: ^GdkEventButton) -> glib.boolean
		button_press_event_func_ptr_anon_47 :: #type proc(widget: ^Widget, event: ^GdkEventButton) -> glib.boolean
		button_release_event_func_ptr_anon_1171 :: #type proc(status_icon: ^StatusIcon, event: ^GdkEventButton) -> glib.boolean
		button_release_event_func_ptr_anon_48 :: #type proc(widget: ^Widget, event: ^GdkEventButton) -> glib.boolean
		can_activate_accel_func_ptr_anon_87 :: #type proc(widget: ^Widget, signal_id: glib.uint_) -> glib.boolean
		cancel_func_ptr_anon_401 :: #type proc(assistant: ^Assistant)
		cancel_position_func_ptr_anon_806 :: #type proc(paned: ^Paned) -> glib.boolean
		change_current_page_func_ptr_anon_772 :: #type proc(notebook: ^Notebook, offset: glib.int_) -> glib.boolean
		change_value_func_ptr_anon_870 :: #type proc(range: ^Range, scroll: ScrollType, new_value: glib.double) -> glib.boolean
		change_value_func_ptr_anon_960 :: #type proc(spin_button: ^SpinButton, scroll: ScrollType)
		changed_func_ptr_anon_1002 :: #type proc(buffer: ^TextBuffer)
		changed_func_ptr_anon_1066 :: #type proc(selection: ^TreeSelection)
		changed_func_ptr_anon_1135 :: #type proc(hsv: ^HSV)
		changed_func_ptr_anon_1150 :: #type proc(action: ^RadioAction, current: ^RadioAction)
		changed_func_ptr_anon_173 :: #type proc(adjustment: ^Adjustment)
		changed_func_ptr_anon_273 :: #type proc(editable: ^Editable)
		changed_func_ptr_anon_381 :: #type proc(combo_box: ^ComboBox)
		changed_func_ptr_anon_664 :: #type proc(context_p: ^StyleContext)
		changed_func_ptr_anon_669 :: #type proc(icon_theme: ^IconTheme)
		changed_func_ptr_anon_875 :: #type proc(manager: ^RecentManager)
		check_resize_func_ptr_anon_105 :: #type proc(container: ^Container)
		child_activated_func_ptr_anon_598 :: #type proc(box: ^FlowBox, child: ^FlowBoxChild)
		child_attached_func_ptr_anon_1129 :: #type proc(handle_box: ^HandleBox, child: ^Widget)
		child_detached_func_ptr_anon_1130 :: #type proc(handle_box: ^HandleBox, child: ^Widget)
		child_notify_func_ptr_anon_34 :: #type proc(widget: ^Widget, child_property: ^gobj.ParamSpec)
		child_type_func_ptr_anon_108 :: #type proc(container: ^Container) -> gobj.Type
		clear_attributes_func_ptr_anon_471 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer)
		clear_func_ptr_anon_468 :: #type proc(cell_layout: ^CellLayout)
		clicked_func_ptr_anon_257 :: #type proc(tree_column: ^TreeViewColumn)
		clicked_func_ptr_anon_433 :: #type proc(button: ^Button)
		clicked_func_ptr_anon_751 :: #type proc(tool_item: ^ToolButton)
		clone_func_ptr_anon_1181 :: #type proc(style: ^Style) -> ^Style
		close_func_ptr_anon_126 :: #type proc(dialog: ^Dialog)
		close_func_ptr_anon_387 :: #type proc(self: ^ShortcutsWindow)
		close_func_ptr_anon_400 :: #type proc(assistant: ^Assistant)
		close_func_ptr_anon_691 :: #type proc(info_bar: ^InfoBar)
		closed_func_ptr_anon_736 :: #type proc(popover: ^Popover)
		color_activated_func_ptr_anon_540 :: #type proc(chooser: ^ColorChooser, color: ^GdkRGBA)
		color_changed_func_ptr_anon_1112 :: #type proc(color_selection: ^ColorSelection)
		color_set_func_ptr_anon_532 :: #type proc(cp: ^ColorButton)
		columns_changed_func_ptr_anon_363 :: #type proc(tree_view: ^TreeView)
		commit_func_ptr_anon_284 :: #type proc(context_p: ^IMContext, str: cstring)
		composite_name_func_ptr_anon_109 :: #type proc(container: ^Container, child: ^Widget) -> cstring
		composited_changed_func_ptr_anon_88 :: #type proc(widget: ^Widget)
		compute_child_allocation_func_ptr_anon_389 :: #type proc(frame: ^Frame, allocation: ^Allocation)
		compute_expand_func_ptr_anon_90 :: #type proc(widget: ^Widget, hexpand_p: ^glib.boolean, vexpand_p: ^glib.boolean)
		configure_event_func_ptr_anon_57 :: #type proc(widget: ^Widget, event: ^GdkEventConfigure) -> glib.boolean
		connect_proxy_func_ptr_anon_1094 :: #type proc(action: ^Action, proxy: ^Widget)
		connect_proxy_func_ptr_anon_1243 :: #type proc(manager: ^UIManager, action: ^Action, proxy: ^Widget)
		connect_widget_destroyed_func_ptr_anon_160 :: #type proc(accessible: ^Accessible)
		construct_child_func_ptr_anon_425 :: #type proc(buildable: ^Buildable, builder: ^Builder, name: cstring) -> ^gobj.Object
		copy_clipboard_func_ptr_anon_1022 :: #type proc(text_view: ^TextView)
		copy_clipboard_func_ptr_anon_145 :: #type proc(label: ^Label)
		copy_clipboard_func_ptr_anon_346 :: #type proc(entry: ^Entry)
		copy_context_func_ptr_anon_238 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext) -> ^CellAreaContext
		copy_func_ptr_anon_1180 :: #type proc(style: ^Style, src: ^Style)
		create_buffer_func_ptr_anon_1025 :: #type proc(text_view: ^TextView) -> ^TextBuffer
		create_context_func_ptr_anon_237 :: #type proc(area: ^CellArea) -> ^CellAreaContext
		create_context_func_ptr_anon_640 :: #type proc(area: ^LArea) -> ^GdkGLContext
		create_custom_widget_func_ptr_anon_831 :: #type proc(operation: ^PrintOperation) -> ^Widget
		create_menu_func_ptr_anon_1096 :: #type proc(action: ^Action) -> ^Widget
		create_menu_item_func_ptr_anon_1092 :: #type proc(action: ^Action) -> ^Widget
		create_menu_proxy_func_ptr_anon_745 :: #type proc(tool_item: ^ToolItem) -> glib.boolean
		create_rc_style_func_ptr_anon_1155 :: #type proc(rc_style: ^RcStyle) -> ^RcStyle
		create_style_func_ptr_anon_1158 :: #type proc(rc_style: ^RcStyle) -> ^Style
		create_surface_func_ptr_anon_3 :: #type proc(window: ^GdkWindow, width: glib.int_, height: glib.int_) -> ^cairo.surface_t
		create_tool_item_func_ptr_anon_1093 :: #type proc(action: ^Action) -> ^Widget
		create_window_func_ptr_anon_776 :: #type proc(notebook: ^Notebook, page: ^Widget, x: glib.int_, y: glib.int_) -> ^Notebook
		cursor_changed_func_ptr_anon_364 :: #type proc(tree_view: ^TreeView)
		cursor_on_match_func_ptr_anon_330 :: #type proc(completion: ^EntryCompletion, model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		custom_finished_func_ptr_anon_428 :: #type proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: glib.pointer)
		custom_item_activated_func_ptr_anon_386 :: #type proc(self: ^AppChooserButton, item_name: cstring)
		custom_tag_end_func_ptr_anon_427 :: #type proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, data: ^glib.pointer)
		custom_tag_start_func_ptr_anon_426 :: #type proc(buildable: ^Buildable, builder: ^Builder, child: ^gobj.Object, tagname: cstring, parser: ^glib.MarkupParser, data: ^glib.pointer) -> glib.boolean
		custom_widget_apply_func_ptr_anon_832 :: #type proc(operation: ^PrintOperation, widget: ^Widget)
		cut_clipboard_func_ptr_anon_1021 :: #type proc(text_view: ^TextView)
		cut_clipboard_func_ptr_anon_345 :: #type proc(entry: ^Entry)
		cycle_child_focus_func_ptr_anon_801 :: #type proc(paned: ^Paned, reverse: glib.boolean) -> glib.boolean
		cycle_handle_focus_func_ptr_anon_804 :: #type proc(paned: ^Paned, reverse: glib.boolean) -> glib.boolean
		d_union_anon_411 :: struct #raw_union {long_data: glib.long, double_data: glib.double, string_data: cstring}
		damage_event_func_ptr_anon_70 :: #type proc(widget: ^Widget, event: ^GdkEventExpose) -> glib.boolean
		day_selected_double_click_func_ptr_anon_443 :: #type proc(calendar: ^Calendar)
		day_selected_func_ptr_anon_442 :: #type proc(calendar: ^Calendar)
		delete_event_func_ptr_anon_51 :: #type proc(widget: ^Widget, event: ^GdkEventAny) -> glib.boolean
		delete_from_cursor_func_ptr_anon_1019 :: #type proc(text_view: ^TextView, type: DeleteType, count: glib.int_)
		delete_from_cursor_func_ptr_anon_343 :: #type proc(entry: ^Entry, type: DeleteType, count: glib.int_)
		delete_range_func_ptr_anon_1001 :: #type proc(buffer: ^TextBuffer, start: ^TextIter, end: ^TextIter)
		delete_surrounding_func_ptr_anon_286 :: #type proc(context_p: ^IMContext, offset: glib.int_, n_chars: glib.int_) -> glib.boolean
		delete_text_func_ptr_anon_272 :: #type proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_)
		delete_text_func_ptr_anon_308 :: #type proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_) -> glib.uint_
		deleted_text_func_ptr_anon_304 :: #type proc(buffer: ^EntryBuffer, position: glib.uint_, n_chars: glib.uint_)
		destroy_event_func_ptr_anon_52 :: #type proc(widget: ^Widget, event: ^GdkEventAny) -> glib.boolean
		destroy_func_ptr_anon_18 :: #type proc(widget: ^Widget)
		direction_changed_func_ptr_anon_32 :: #type proc(widget: ^Widget, previous_direction: TextDirection)
		disconnect_proxy_func_ptr_anon_1095 :: #type proc(action: ^Action, proxy: ^Widget)
		disconnect_proxy_func_ptr_anon_1244 :: #type proc(manager: ^UIManager, action: ^Action, proxy: ^Widget)
		dispatch_child_properties_changed_func_ptr_anon_17 :: #type proc(widget: ^Widget, n_pspecs: glib.uint_, pspecs: [^]^gobj.ParamSpec)
		do_delete_text_func_ptr_anon_275 :: #type proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_)
		do_insert_text_func_ptr_anon_274 :: #type proc(editable: ^Editable, new_text: cstring, new_text_length: glib.int_, position: ^glib.int_)
		done_func_ptr_anon_824 :: #type proc(operation: ^PrintOperation, result: PrintOperationResult)
		drag_begin_func_ptr_anon_74 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext)
		drag_data_delete_func_ptr_anon_1059 :: #type proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean
		drag_data_delete_func_ptr_anon_77 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext)
		drag_data_get_func_ptr_anon_1058 :: #type proc(drag_source: ^TreeDragSource, path: ^TreePath, selection_data: ^SelectionData) -> glib.boolean
		drag_data_get_func_ptr_anon_76 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, selection_data: ^SelectionData, info: glib.uint_, time_: glib.uint_)
		drag_data_received_func_ptr_anon_1060 :: #type proc(drag_dest: ^TreeDragDest, dest: ^TreePath, selection_data: ^SelectionData) -> glib.boolean
		drag_data_received_func_ptr_anon_81 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, x: glib.int_, y: glib.int_, selection_data: ^SelectionData, info: glib.uint_, time_: glib.uint_)
		drag_drop_func_ptr_anon_80 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, x: glib.int_, y: glib.int_, time_: glib.uint_) -> glib.boolean
		drag_end_func_ptr_anon_75 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext)
		drag_failed_func_ptr_anon_82 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, result: DragResult) -> glib.boolean
		drag_leave_func_ptr_anon_78 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, time_: glib.uint_)
		drag_motion_func_ptr_anon_79 :: #type proc(widget: ^Widget, context_p: ^GdkDragContext, x: glib.int_, y: glib.int_, time_: glib.uint_) -> glib.boolean
		draw_arrow_func_ptr_anon_1188 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, arrow_type: ArrowType, fill: glib.boolean, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_box_func_ptr_anon_1190 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_box_gap_func_ptr_anon_1196 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType, gap_x: glib.int_, gap_width: glib.int_)
		draw_check_func_ptr_anon_1192 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_diamond_func_ptr_anon_1189 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_expander_func_ptr_anon_1201 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, expander_style: ExpanderStyle)
		draw_extension_func_ptr_anon_1197 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType)
		draw_flat_box_func_ptr_anon_1191 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_focus_func_ptr_anon_1198 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_func_ptr_anon_35 :: #type proc(widget: ^Widget, cr: ^cairo.context_t) -> glib.boolean
		draw_handle_func_ptr_anon_1200 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, orientation: Orientation)
		draw_hline_func_ptr_anon_1185 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, x1: glib.int_, x2: glib.int_, y: glib.int_)
		draw_indicator_func_ptr_anon_521 :: #type proc(check_button: ^CheckButton, cr: ^cairo.context_t)
		draw_indicator_func_ptr_anon_527 :: #type proc(check_menu_item: ^CheckMenuItem, cr: ^cairo.context_t)
		draw_layer_func_ptr_anon_1026 :: #type proc(text_view: ^TextView, layer: TextViewLayer, cr: ^cairo.context_t)
		draw_layout_func_ptr_anon_1202 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, use_text: glib.boolean, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, layout: ^pango.Layout)
		draw_option_func_ptr_anon_1193 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_page_func_ptr_anon_828 :: #type proc(operation: ^PrintOperation, context_p: ^PrintContext, page_nr: glib.int_)
		draw_resize_grip_func_ptr_anon_1203 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, edge: GdkWindowEdge, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_shadow_func_ptr_anon_1187 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_shadow_gap_func_ptr_anon_1195 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, gap_side: PositionType, gap_x: glib.int_, gap_width: glib.int_)
		draw_slider_func_ptr_anon_1199 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, orientation: Orientation)
		draw_spinner_func_ptr_anon_1204 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, step: glib.uint_, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_tab_func_ptr_anon_1194 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, shadow_type: ShadowType, widget: ^Widget, detail: cstring, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_)
		draw_value_func_ptr_anon_907 :: #type proc(scale: ^Scale)
		draw_vline_func_ptr_anon_1186 :: #type proc(style: ^Style, cr: ^cairo.context_t, state_type: StateType, widget: ^Widget, detail: cstring, y1_: glib.int_, y2_: glib.int_, x: glib.int_)
		edited_func_ptr_anon_475 :: #type proc(cell_renderer_text: ^CellRendererText, path: cstring, new_text: cstring)
		editing_canceled_func_ptr_anon_219 :: #type proc(cell: ^CellRenderer)
		editing_done_func_ptr_anon_206 :: #type proc(cell_editable: ^CellEditable)
		editing_started_func_ptr_anon_220 :: #type proc(cell: ^CellRenderer, editable: ^CellEditable, path: cstring)
		enable_debugging_func_ptr_anon_121 :: #type proc(window: ^Window, toggle: glib.boolean) -> glib.boolean
		end_preview_func_ptr_anon_815 :: #type proc(preview: ^PrintOperationPreview)
		end_print_func_ptr_anon_829 :: #type proc(operation: ^PrintOperation, context_p: ^PrintContext)
		end_user_action_func_ptr_anon_1009 :: #type proc(buffer: ^TextBuffer)
		enter_func_ptr_anon_434 :: #type proc(button: ^Button)
		enter_notify_event_func_ptr_anon_55 :: #type proc(widget: ^Widget, event: ^GdkEventCrossing) -> glib.boolean
		esture :: Gesture
		estureClass :: GestureClass
		estureDrag :: GestureDrag
		estureDragClass :: GestureDragClass
		estureLongPress :: GestureLongPress
		estureLongPressClass :: GestureLongPressClass
		estureMultiPress :: GestureMultiPress
		estureMultiPressClass :: GestureMultiPressClass
		esturePan :: GesturePan
		esturePanClass :: GesturePanClass
		estureRotate :: GestureRotate
		estureRotateClass :: GestureRotateClass
		estureSingle :: GestureSingle
		estureSingleClass :: GestureSingleClass
		estureStylus :: GestureStylus
		estureStylusClass :: GestureStylusClass
		estureSwipe :: GestureSwipe
		estureSwipeClass :: GestureSwipeClass
		estureZoom :: GestureZoom
		estureZoomClass :: GestureZoomClass
		et_accessible_func_ptr_anon_85 :: #type proc(widget: ^Widget) -> ^atk.Object
		et_action_func_ptr_anon_1103 :: #type proc(action_group: ^ActionGroup, action_name: cstring) -> ^Action
		et_action_func_ptr_anon_1248 :: #type proc(manager: ^UIManager, path: cstring) -> ^Action
		et_action_name_func_ptr_anon_165 :: #type proc(actionable: ^Actionable) -> cstring
		et_action_target_value_func_ptr_anon_167 :: #type proc(actionable: ^Actionable) -> ^glib.Variant
		et_aligned_area_func_ptr_anon_214 :: #type proc(cell: ^CellRenderer, widget: ^Widget, flags: CellRendererState, cell_area: ^GdkRectangle, aligned_area: ^GdkRectangle)
		et_area_func_ptr_anon_474 :: #type proc(cell_layout: ^CellLayout) -> ^CellArea
		et_border_func_ptr_anon_918 :: #type proc(scrollable: ^Scrollable, border: ^Border) -> glib.boolean
		et_cell_property_func_ptr_anon_245 :: #type proc(area: ^CellArea, renderer: ^CellRenderer, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
		et_cells_func_ptr_anon_473 :: #type proc(cell_layout: ^CellLayout) -> ^glib.List
		et_chars_func_ptr_anon_276 :: #type proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_) -> cstring
		et_child_position_func_ptr_anon_792 :: #type proc(overlay: ^Overlay, widget: ^Widget, allocation: ^Allocation) -> glib.boolean
		et_child_property_func_ptr_anon_111 :: #type proc(container: ^Container, child: ^Widget, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
		et_column_type_func_ptr_anon_193 :: #type proc(tree_model: ^TreeModel, index_: glib.int_) -> gobj.Type
		et_current_uri_func_ptr_anon_881 :: #type proc(chooser: ^RecentChooser) -> cstring
		et_ellipsize_mode_func_ptr_anon_1055 :: #type proc(shell: ^ToolShell) -> pango.EllipsizeMode
		et_flags_func_ptr_anon_191 :: #type proc(tree_model: ^TreeModel) -> TreeModelFlags
		et_font_face_func_ptr_anon_620 :: #type proc(fontchooser: ^FontChooser) -> ^pango.FontFace
		et_font_family_func_ptr_anon_619 :: #type proc(fontchooser: ^FontChooser) -> ^pango.FontFamily
		et_font_map_func_ptr_anon_625 :: #type proc(fontchooser: ^FontChooser) -> ^pango.FontMap
		et_font_size_func_ptr_anon_621 :: #type proc(fontchooser: ^FontChooser) -> glib.int_
		et_frame_size_func_ptr_anon_350 :: #type proc(entry: ^Entry, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_)
		et_icon_factory_func_ptr_anon_663 :: #type proc(provider: ^StyleProvider, path: ^WidgetPath) -> ^IconFactory
		et_icon_size_func_ptr_anon_1048 :: #type proc(shell: ^ToolShell) -> IconSize
		et_internal_child_func_ptr_anon_430 :: #type proc(buildable: ^Buildable, builder: ^Builder, childname: cstring) -> ^gobj.Object
		et_items_func_ptr_anon_886 :: #type proc(chooser: ^RecentChooser) -> ^glib.List
		et_iter_func_ptr_anon_194 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
		et_layout_offsets_func_ptr_anon_908 :: #type proc(scale: ^Scale, x: ^glib.int_, y: ^glib.int_)
		et_length_func_ptr_anon_306 :: #type proc(buffer: ^EntryBuffer) -> glib.uint_
		et_n_columns_func_ptr_anon_192 :: #type proc(tree_model: ^TreeModel) -> glib.int_
		et_name_func_ptr_anon_422 :: #type proc(buildable: ^Buildable) -> cstring
		et_orientation_func_ptr_anon_1049 :: #type proc(shell: ^ToolShell) -> Orientation
		et_path_for_child_func_ptr_anon_112 :: #type proc(container: ^Container, child: ^Widget) -> ^WidgetPath
		et_path_func_ptr_anon_195 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter) -> ^TreePath
		et_position_func_ptr_anon_280 :: #type proc(editable: ^Editable) -> glib.int_
		et_preedit_string_func_ptr_anon_288 :: #type proc(context_p: ^IMContext, str: ^cstring, attrs: ^^pango.AttrList, cursor_pos: ^glib.int_)
		et_preferred_height_and_baseline_for_width_func_ptr_anon_95 :: #type proc(widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_, minimum_baseline: ^glib.int_, natural_baseline: ^glib.int_)
		et_preferred_height_for_width_func_ptr_anon_211 :: #type proc(cell: ^CellRenderer, widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_height_for_width_func_ptr_anon_241 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_height_for_width_func_ptr_anon_40 :: #type proc(widget: ^Widget, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_height_for_width_func_ptr_anon_458 :: #type proc(context_p: ^CellAreaContext, width: glib.int_, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_height_func_ptr_anon_212 :: #type proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^glib.int_, natural_size: ^glib.int_)
		et_preferred_height_func_ptr_anon_242 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_height_func_ptr_anon_37 :: #type proc(widget: ^Widget, minimum_height: ^glib.int_, natural_height: ^glib.int_)
		et_preferred_width_for_height_func_ptr_anon_213 :: #type proc(cell: ^CellRenderer, widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_preferred_width_for_height_func_ptr_anon_243 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_preferred_width_for_height_func_ptr_anon_38 :: #type proc(widget: ^Widget, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_preferred_width_for_height_func_ptr_anon_459 :: #type proc(context_p: ^CellAreaContext, height: glib.int_, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_preferred_width_func_ptr_anon_210 :: #type proc(cell: ^CellRenderer, widget: ^Widget, minimum_size: ^glib.int_, natural_size: ^glib.int_)
		et_preferred_width_func_ptr_anon_240 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_preferred_width_func_ptr_anon_39 :: #type proc(widget: ^Widget, minimum_width: ^glib.int_, natural_width: ^glib.int_)
		et_range_border_func_ptr_anon_869 :: #type proc(range: ^Range, border_: ^Border)
		et_range_size_request_func_ptr_anon_871 :: #type proc(range: ^Range, orientation: Orientation, minimum: ^glib.int_, natural: ^glib.int_)
		et_recent_manager_func_ptr_anon_887 :: #type proc(chooser: ^RecentChooser) -> ^RecentManager
		et_relief_style_func_ptr_anon_1051 :: #type proc(shell: ^ToolShell) -> ReliefStyle
		et_request_mode_func_ptr_anon_209 :: #type proc(cell: ^CellRenderer) -> SizeRequestMode
		et_request_mode_func_ptr_anon_239 :: #type proc(area: ^CellArea) -> SizeRequestMode
		et_request_mode_func_ptr_anon_36 :: #type proc(widget: ^Widget) -> SizeRequestMode
		et_rgba_func_ptr_anon_537 :: #type proc(chooser: ^ColorChooser, color: ^GdkRGBA)
		et_selection_bounds_func_ptr_anon_278 :: #type proc(editable: ^Editable, start_pos: [^]glib.int_, end_pos: [^]glib.int_) -> glib.boolean
		et_size_func_ptr_anon_215 :: #type proc(cell: ^CellRenderer, widget: ^Widget, cell_area: ^GdkRectangle, x_offset: ^glib.int_, y_offset: ^glib.int_, width: ^glib.int_, height: ^glib.int_)
		et_sort_column_id_func_ptr_anon_225 :: #type proc(sortable: ^TreeSortable, sort_column_id: ^glib.int_, order: ^SortType) -> glib.boolean
		et_style_func_ptr_anon_1050 :: #type proc(shell: ^ToolShell) -> ToolbarStyle
		et_style_func_ptr_anon_661 :: #type proc(provider: ^StyleProvider, path: ^WidgetPath) -> ^StyleProperties
		et_style_property_func_ptr_anon_662 :: #type proc(provider: ^StyleProvider, path: ^WidgetPath, state: StateFlags, pspec: ^gobj.ParamSpec, value: ^gobj.Value) -> glib.boolean
		et_surrounding_func_ptr_anon_296 :: #type proc(context_p: ^IMContext, text: ^cstring, cursor_index: ^glib.int_) -> glib.boolean
		et_text_alignment_func_ptr_anon_1054 :: #type proc(shell: ^ToolShell) -> glib.float
		et_text_area_size_func_ptr_anon_349 :: #type proc(entry: ^Entry, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_)
		et_text_func_ptr_anon_305 :: #type proc(buffer: ^EntryBuffer, n_bytes: [^]glib.size) -> cstring
		et_text_orientation_func_ptr_anon_1053 :: #type proc(shell: ^ToolShell) -> Orientation
		et_text_size_group_func_ptr_anon_1056 :: #type proc(shell: ^ToolShell) -> ^SizeGroup
		et_type_from_name_func_ptr_anon_412 :: #type proc(builder: ^Builder, type_name: cstring) -> gobj.Type
		et_value_func_ptr_anon_196 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter, column: glib.int_, value: ^gobj.Value)
		et_widget_func_ptr_anon_1247 :: #type proc(manager: ^UIManager, path: cstring) -> ^Widget
		event_func_ptr_anon_234 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, event: ^GdkEvent, cell_area: ^GdkRectangle, flags: CellRendererState) -> glib.int_
		event_func_ptr_anon_266 :: #type proc(tag: ^TextTag, event_object: ^gobj.Object, event: ^GdkEvent, iter: ^TextIter) -> glib.boolean
		event_func_ptr_anon_46 :: #type proc(widget: ^Widget, event: ^GdkEvent) -> glib.boolean
		expand_collapse_cursor_row_func_ptr_anon_370 :: #type proc(tree_view: ^TreeView, logical: glib.boolean, expand: glib.boolean, open_all: glib.boolean) -> glib.boolean
		extend_selection_func_ptr_anon_1027 :: #type proc(text_view: ^TextView, granularity: TextExtendSelection, location: ^TextIter, start: ^TextIter, end: ^TextIter) -> glib.boolean
		file_set_func_ptr_anon_578 :: #type proc(fc: ^FileChooserButton)
		filter_keypress_func_ptr_anon_289 :: #type proc(context_p: ^IMContext, event: ^GdkEventKey) -> glib.boolean
		focus_func_ptr_anon_246 :: #type proc(area: ^CellArea, direction: DirectionType) -> glib.boolean
		focus_func_ptr_anon_43 :: #type proc(widget: ^Widget, direction: DirectionType) -> glib.boolean
		focus_in_event_func_ptr_anon_58 :: #type proc(widget: ^Widget, event: ^GdkEventFocus) -> glib.boolean
		focus_in_func_ptr_anon_290 :: #type proc(context_p: ^IMContext)
		focus_out_event_func_ptr_anon_59 :: #type proc(widget: ^Widget, event: ^GdkEventFocus) -> glib.boolean
		focus_out_func_ptr_anon_291 :: #type proc(context_p: ^IMContext)
		focus_tab_func_ptr_anon_771 :: #type proc(notebook: ^Notebook, type: NotebookTab) -> glib.boolean
		font_activated_func_ptr_anon_623 :: #type proc(chooser: ^FontChooser, fontname: cstring)
		font_set_func_ptr_anon_614 :: #type proc(gfp: ^FontButton)
		forall_func_ptr_anon_106 :: #type proc(container: ^Container, include_internals: glib.boolean, callback: Callback, callback_data: glib.pointer)
		foreach_alloc_func_ptr_anon_233 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cell_area: ^GdkRectangle, background_area: ^GdkRectangle, callback: CellAllocCallback, callback_data: glib.pointer)
		foreach_func_ptr_anon_232 :: #type proc(area: ^CellArea, callback: CellCallback, callback_data: glib.pointer)
		format_entry_text_func_ptr_anon_382 :: #type proc(combo_box: ^ComboBox, path: cstring) -> cstring
		format_value_func_ptr_anon_906 :: #type proc(scale: ^Scale, value: glib.double) -> cstring
		from_embedder_func_ptr_anon_2 :: #type proc(window: ^GdkWindow, embedder_x: glib.double, embedder_y: glib.double, offscreen_x: ^glib.double, offscreen_y: ^glib.double)
		has_default_sort_func_func_ptr_anon_229 :: #type proc(sortable: ^TreeSortable) -> glib.boolean
		hide_func_ptr_anon_21 :: #type proc(widget: ^Widget)
		hide_func_ptr_anon_589 :: #type proc(self: ^NativeDialog)
		hierarchy_changed_func_ptr_anon_30 :: #type proc(widget: ^Widget, previous_toplevel: ^Widget)
		init_from_rc_func_ptr_anon_1182 :: #type proc(style: ^Style, rc_style: ^RcStyle)
		input_func_ptr_anon_957 :: #type proc(spin_button: ^SpinButton, new_value: ^glib.double) -> glib.int_
		insert_at_cursor_func_ptr_anon_1018 :: #type proc(text_view: ^TextView, str: cstring)
		insert_at_cursor_func_ptr_anon_342 :: #type proc(entry: ^Entry, str: cstring)
		insert_child_anchor_func_ptr_anon_1000 :: #type proc(buffer: ^TextBuffer, iter: ^TextIter, anchor: ^TextChildAnchor)
		insert_emoji_func_ptr_anon_1028 :: #type proc(text_view: ^TextView)
		insert_emoji_func_ptr_anon_351 :: #type proc(entry: ^Entry)
		insert_page_func_ptr_anon_775 :: #type proc(notebook: ^Notebook, child: ^Widget, tab_label: ^Widget, menu_label: ^Widget, position: glib.int_) -> glib.int_
		insert_pixbuf_func_ptr_anon_999 :: #type proc(buffer: ^TextBuffer, iter: ^TextIter, pixbuf: ^pixbuf.Pixbuf)
		insert_prefix_func_ptr_anon_329 :: #type proc(completion: ^EntryCompletion, prefix: cstring) -> glib.boolean
		insert_text_func_ptr_anon_271 :: #type proc(editable: ^Editable, new_text: cstring, new_text_length: glib.int_, position: ^glib.int_)
		insert_text_func_ptr_anon_307 :: #type proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_) -> glib.uint_
		insert_text_func_ptr_anon_998 :: #type proc(buffer: ^TextBuffer, pos: [^]TextIter, new_text: cstring, new_text_length: glib.int_)
		inserted_text_func_ptr_anon_303 :: #type proc(buffer: ^EntryBuffer, position: glib.uint_, chars: cstring, n_chars: glib.uint_)
		is_activatable_func_ptr_anon_247 :: #type proc(area: ^CellArea) -> glib.boolean
		is_selected_func_ptr_anon_814 :: #type proc(preview: ^PrintOperationPreview, page_nr: glib.int_) -> glib.boolean
		item_activated_func_ptr_anon_674 :: #type proc(icon_view: ^IconView, path: ^TreePath)
		item_activated_func_ptr_anon_892 :: #type proc(chooser: ^RecentChooser)
		iter_children_func_ptr_anon_199 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter) -> glib.boolean
		iter_has_child_func_ptr_anon_200 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		iter_n_children_func_ptr_anon_201 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.int_
		iter_next_func_ptr_anon_197 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		iter_nth_child_func_ptr_anon_202 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter, parent: ^TreeIter, n: glib.int_) -> glib.boolean
		iter_parent_func_ptr_anon_203 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter, child: ^TreeIter) -> glib.boolean
		iter_previous_func_ptr_anon_198 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		key_press_event_func_ptr_anon_53 :: #type proc(widget: ^Widget, event: ^GdkEventKey) -> glib.boolean
		key_release_event_func_ptr_anon_54 :: #type proc(widget: ^Widget, event: ^GdkEventKey) -> glib.boolean
		keynav_failed_func_ptr_anon_45 :: #type proc(widget: ^Widget, direction: DirectionType) -> glib.boolean
		keys_changed_func_ptr_anon_120 :: #type proc(window: ^Window)
		leave_func_ptr_anon_435 :: #type proc(button: ^Button)
		leave_notify_event_func_ptr_anon_56 :: #type proc(widget: ^Widget, event: ^GdkEventCrossing) -> glib.boolean
		list_filters_func_ptr_anon_890 :: #type proc(chooser: ^RecentChooser) -> ^glib.SList
		map_event_func_ptr_anon_60 :: #type proc(widget: ^Widget, event: ^GdkEventAny) -> glib.boolean
		map_func_ptr_anon_22 :: #type proc(widget: ^Widget)
		mark_deleted_func_ptr_anon_1005 :: #type proc(buffer: ^TextBuffer, mark: ^TextMark)
		mark_set_func_ptr_anon_1004 :: #type proc(buffer: ^TextBuffer, location: ^TextIter, mark: ^TextMark)
		match_selected_func_ptr_anon_327 :: #type proc(completion: ^EntryCompletion, model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		merge_func_ptr_anon_1157 :: #type proc(dest: ^RcStyle, src: ^RcStyle)
		mnemonic_activate_func_ptr_anon_41 :: #type proc(widget: ^Widget, group_cycling: glib.boolean) -> glib.boolean
		modified_changed_func_ptr_anon_1003 :: #type proc(buffer: ^TextBuffer)
		modify_func_ptr_anon_322 :: #type proc(self: ^TreeModelFilter, child_model: ^TreeModel, iter: ^TreeIter, value: ^gobj.Value, column: glib.int_)
		month_changed_func_ptr_anon_441 :: #type proc(calendar: ^Calendar)
		motion_notify_event_func_ptr_anon_50 :: #type proc(widget: ^Widget, event: ^GdkEventMotion) -> glib.boolean
		move_cursor_func_ptr_anon_1016 :: #type proc(text_view: ^TextView, step: MovementStep, count: glib.int_, extend_selection: glib.boolean)
		move_cursor_func_ptr_anon_144 :: #type proc(label: ^Label, step: MovementStep, count: glib.int_, extend_selection: glib.boolean)
		move_cursor_func_ptr_anon_341 :: #type proc(entry: ^Entry, step: MovementStep, count: glib.int_, extend_selection: glib.boolean)
		move_cursor_func_ptr_anon_365 :: #type proc(tree_view: ^TreeView, step: MovementStep, count: glib.int_) -> glib.boolean
		move_cursor_func_ptr_anon_602 :: #type proc(box: ^FlowBox, step: MovementStep, count: glib.int_) -> glib.boolean
		move_cursor_func_ptr_anon_680 :: #type proc(icon_view: ^IconView, step: MovementStep, count: glib.int_) -> glib.boolean
		move_cursor_func_ptr_anon_714 :: #type proc(box: ^ListBox, step: MovementStep, count: glib.int_)
		move_focus_func_ptr_anon_44 :: #type proc(widget: ^Widget, direction: DirectionType)
		move_focus_out_func_ptr_anon_773 :: #type proc(notebook: ^Notebook, direction: DirectionType)
		move_focus_out_func_ptr_anon_924 :: #type proc(scrolled_window: ^ScrolledWindow, direction: DirectionType)
		move_func_ptr_anon_1136 :: #type proc(hsv: ^HSV, type: DirectionType)
		move_handle_func_ptr_anon_803 :: #type proc(paned: ^Paned, scroll: ScrollType) -> glib.boolean
		move_slider_func_ptr_anon_868 :: #type proc(range: ^Range, scroll: ScrollType)
		next_match_func_ptr_anon_934 :: #type proc(entry: ^SearchEntry)
		next_month_func_ptr_anon_445 :: #type proc(calendar: ^Calendar)
		next_year_func_ptr_anon_447 :: #type proc(calendar: ^Calendar)
		no_matches_func_ptr_anon_331 :: #type proc(completion: ^EntryCompletion)
		offset_changed_func_ptr_anon_704 :: #type proc(self: ^LevelBar, name: cstring)
		orientation_changed_func_ptr_anon_1033 :: #type proc(toolbar: ^Toolbar, orientation: Orientation)
		ot_page_size_func_ptr_anon_812 :: #type proc(preview: ^PrintOperationPreview, context_p: ^PrintContext, page_setup: ^PageSetup)
		output_func_ptr_anon_958 :: #type proc(spin_button: ^SpinButton) -> glib.int_
		pack_end_func_ptr_anon_467 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean)
		pack_start_func_ptr_anon_466 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, expand: glib.boolean)
		page_added_func_ptr_anon_779 :: #type proc(notebook: ^Notebook, child: ^Widget, page_num: glib.uint_)
		page_removed_func_ptr_anon_778 :: #type proc(notebook: ^Notebook, child: ^Widget, page_num: glib.uint_)
		page_reordered_func_ptr_anon_777 :: #type proc(notebook: ^Notebook, child: ^Widget, page_num: glib.uint_)
		paginate_func_ptr_anon_826 :: #type proc(operation: ^PrintOperation, context_p: ^PrintContext) -> glib.boolean
		parent_set_func_ptr_anon_29 :: #type proc(widget: ^Widget, previous_parent: ^Widget)
		parse_func_ptr_anon_1156 :: #type proc(rc_style: ^RcStyle, settings: [^]Settings, scanner: ^glib.Scanner) -> glib.uint_
		parser_finished_func_ptr_anon_429 :: #type proc(buildable: ^Buildable, builder: ^Builder)
		parsing_error_func_ptr_anon_557 :: #type proc(provider: ^CssProvider, section: ^CssSection, error: ^glib.Error)
		paste_clipboard_func_ptr_anon_1023 :: #type proc(text_view: ^TextView)
		paste_clipboard_func_ptr_anon_347 :: #type proc(entry: ^Entry)
		paste_done_func_ptr_anon_1010 :: #type proc(buffer: ^TextBuffer, clipboard: ^Clipboard)
		pick_embedded_child_func_ptr_anon_0 :: #type proc(window: ^GdkWindow, x: glib.double, y: glib.double) -> ^GdkWindow
		populate_popup_func_ptr_anon_1015 :: #type proc(text_view: ^TextView, popup: ^Widget)
		populate_popup_func_ptr_anon_146 :: #type proc(label: ^Label, menu: ^Menu)
		populate_popup_func_ptr_anon_185 :: #type proc(self: ^AppChooserWidget, menu: ^Menu, app_info: ^gio.AppInfo)
		populate_popup_func_ptr_anon_339 :: #type proc(entry: ^Entry, popup: ^Widget)
		popup_context_menu_func_ptr_anon_1035 :: #type proc(toolbar: ^Toolbar, x: glib.int_, y: glib.int_, button_number: glib.int_) -> glib.boolean
		popup_menu_func_ptr_anon_1168 :: #type proc(status_icon: ^StatusIcon, button: glib.uint_, activate_time: glib.uint32)
		popup_menu_func_ptr_anon_83 :: #type proc(widget: ^Widget) -> glib.boolean
		post_activate_func_ptr_anon_1246 :: #type proc(manager: ^UIManager, action: ^Action)
		pre_activate_func_ptr_anon_1245 :: #type proc(manager: ^UIManager, action: ^Action)
		preedit_changed_func_ptr_anon_283 :: #type proc(context_p: ^IMContext)
		preedit_end_func_ptr_anon_282 :: #type proc(context_p: ^IMContext)
		preedit_start_func_ptr_anon_281 :: #type proc(context_p: ^IMContext)
		prepare_func_ptr_anon_398 :: #type proc(assistant: ^Assistant, page: ^Widget)
		pressed_func_ptr_anon_431 :: #type proc(button: ^Button)
		prev_month_func_ptr_anon_444 :: #type proc(calendar: ^Calendar)
		prev_year_func_ptr_anon_446 :: #type proc(calendar: ^Calendar)
		preview_func_ptr_anon_833 :: #type proc(operation: ^PrintOperation, preview: ^PrintOperationPreview, context_p: ^PrintContext, parent: ^Window) -> glib.boolean
		previous_match_func_ptr_anon_935 :: #type proc(entry: ^SearchEntry)
		property_notify_event_func_ptr_anon_62 :: #type proc(widget: ^Widget, event: ^GdkEventProperty) -> glib.boolean
		proximity_in_event_func_ptr_anon_66 :: #type proc(widget: ^Widget, event: ^GdkEventProximity) -> glib.boolean
		proximity_out_event_func_ptr_anon_67 :: #type proc(widget: ^Widget, event: ^GdkEventProximity) -> glib.boolean
		query_tooltip_func_ptr_anon_1173 :: #type proc(status_icon: ^StatusIcon, x: glib.int_, y: glib.int_, keyboard_mode: glib.boolean, tooltip: ^Tooltip) -> glib.boolean
		query_tooltip_func_ptr_anon_89 :: #type proc(widget: ^Widget, x: glib.int_, y: glib.int_, keyboard_tooltip: glib.boolean, tooltip: ^Tooltip) -> glib.boolean
		queue_draw_region_func_ptr_anon_98 :: #type proc(widget: ^Widget, region: ^cairo.region_t)
		rab_broken_event_func_ptr_anon_71 :: #type proc(widget: ^Widget, event: ^GdkEventGrabBroken) -> glib.boolean
		rab_focus_func_ptr_anon_42 :: #type proc(widget: ^Widget)
		rab_notify_func_ptr_anon_33 :: #type proc(widget: ^Widget, was_grabbed: glib.boolean)
		radient :: Gradient
		ready_func_ptr_anon_811 :: #type proc(preview: ^PrintOperationPreview, context_p: ^PrintContext)
		realize_func_ptr_anon_1178 :: #type proc(style: ^Style)
		realize_func_ptr_anon_24 :: #type proc(widget: ^Widget)
		rebuild_menu_func_ptr_anon_1052 :: #type proc(shell: ^ToolShell)
		ref_node_func_ptr_anon_204 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter)
		released_func_ptr_anon_432 :: #type proc(button: ^Button)
		remove_filter_func_ptr_anon_889 :: #type proc(chooser: ^RecentChooser, filter: ^RecentFilter)
		remove_func_ptr_anon_104 :: #type proc(container: ^Container, widget: ^Widget)
		remove_func_ptr_anon_231 :: #type proc(area: ^CellArea, renderer: ^CellRenderer)
		remove_tag_func_ptr_anon_1007 :: #type proc(buffer: ^TextBuffer, tag: ^TextTag, start: ^TextIter, end: ^TextIter)
		remove_widget_func_ptr_anon_207 :: #type proc(cell_editable: ^CellEditable)
		render_activity_func_ptr_anon_1237 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_arrow_func_ptr_anon_1231 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, angle: glib.double, x: glib.double, y: glib.double, size_p: glib.double)
		render_background_func_ptr_anon_1225 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_check_func_ptr_anon_1229 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_expander_func_ptr_anon_1232 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_extension_func_ptr_anon_1228 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, gap_side: PositionType)
		render_focus_func_ptr_anon_1233 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_frame_func_ptr_anon_1226 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_frame_gap_func_ptr_anon_1227 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, gap_side: PositionType, xy0_gap: glib.double, xy1_gap: glib.double)
		render_func_ptr_anon_216 :: #type proc(cell: ^CellRenderer, cr: ^cairo.context_t, widget: ^Widget, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState)
		render_func_ptr_anon_235 :: #type proc(area: ^CellArea, context_p: ^CellAreaContext, widget: ^Widget, cr: ^cairo.context_t, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState, paint_focus: glib.boolean)
		render_func_ptr_anon_638 :: #type proc(area: ^LArea, context_p: ^GdkGLContext) -> glib.boolean
		render_handle_func_ptr_anon_1236 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_icon_func_ptr_anon_1184 :: #type proc(style: ^Style, source: ^IconSource, direction: TextDirection, state: StateType, size_p: IconSize, widget: ^Widget, detail: cstring) -> ^pixbuf.Pixbuf
		render_icon_func_ptr_anon_1239 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, pixbuf: ^pixbuf.Pixbuf, x: glib.double, y: glib.double)
		render_icon_pixbuf_func_ptr_anon_1238 :: #type proc(engine: ^ThemingEngine, source: ^IconSource, size_p: IconSize) -> ^pixbuf.Pixbuf
		render_icon_surface_func_ptr_anon_1240 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, surface: ^cairo.surface_t, x: glib.double, y: glib.double)
		render_layout_func_ptr_anon_1234 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, layout: ^pango.Layout)
		render_line_func_ptr_anon_1224 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x0: glib.double, y0: glib.double, x1: glib.double, y1: glib.double)
		render_option_func_ptr_anon_1230 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double)
		render_page_func_ptr_anon_813 :: #type proc(preview: ^PrintOperationPreview, page_nr: glib.int_)
		render_slider_func_ptr_anon_1235 :: #type proc(engine: ^ThemingEngine, cr: ^cairo.context_t, x: glib.double, y: glib.double, width: glib.double, height: glib.double, orientation: Orientation)
		reorder_func_ptr_anon_472 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, position: glib.int_)
		reorder_tab_func_ptr_anon_774 :: #type proc(notebook: ^Notebook, direction: DirectionType, move_to_last: glib.boolean) -> glib.boolean
		request_page_setup_func_ptr_anon_827 :: #type proc(operation: ^PrintOperation, context_p: ^PrintContext, page_nr: glib.int_, setup: ^PageSetup)
		reserved0_func_ptr_anon_724 :: #type proc()
		reserved1_func_ptr_anon_725 :: #type proc()
		reserved2_func_ptr_anon_726 :: #type proc()
		reserved3_func_ptr_anon_727 :: #type proc()
		reserved4_func_ptr_anon_728 :: #type proc()
		reserved5_func_ptr_anon_729 :: #type proc()
		reserved6_func_ptr_anon_730 :: #type proc()
		reserved7_func_ptr_anon_731 :: #type proc()
		reset_func_ptr_anon_292 :: #type proc(context_p: ^IMContext)
		reset_func_ptr_anon_457 :: #type proc(context_p: ^CellAreaContext)
		resize_func_ptr_anon_639 :: #type proc(area: ^LArea, width: i32, height: i32)
		response_func_ptr_anon_125 :: #type proc(dialog: ^Dialog, response_id: glib.int_)
		response_func_ptr_anon_587 :: #type proc(self: ^NativeDialog, response_id: glib.int_)
		response_func_ptr_anon_690 :: #type proc(info_bar: ^InfoBar, response_id: glib.int_)
		retrieve_surrounding_func_ptr_anon_285 :: #type proc(context_p: ^IMContext) -> glib.boolean
		rid :: Grid
		ridClass :: GridClass
		ridPrivate :: GridPrivate
		roup_changed_func_ptr_anon_847 :: #type proc(radio_button: ^RadioButton)
		roup_changed_func_ptr_anon_852 :: #type proc(radio_menu_item: ^RadioMenuItem)
		row_activated_func_ptr_anon_358 :: #type proc(tree_view: ^TreeView, path: ^TreePath, column: ^TreeViewColumn)
		row_activated_func_ptr_anon_711 :: #type proc(box: ^ListBox, row: ^ListBoxRow)
		row_changed_func_ptr_anon_186 :: #type proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
		row_collapsed_func_ptr_anon_362 :: #type proc(tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath)
		row_deleted_func_ptr_anon_189 :: #type proc(tree_model: ^TreeModel, path: ^TreePath)
		row_draggable_func_ptr_anon_1057 :: #type proc(drag_source: ^TreeDragSource, path: ^TreePath) -> glib.boolean
		row_drop_possible_func_ptr_anon_1061 :: #type proc(drag_dest: ^TreeDragDest, dest_path: ^TreePath, selection_data: ^SelectionData) -> glib.boolean
		row_expanded_func_ptr_anon_361 :: #type proc(tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath)
		row_has_child_toggled_func_ptr_anon_188 :: #type proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
		row_inserted_func_ptr_anon_187 :: #type proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter)
		row_selected_func_ptr_anon_710 :: #type proc(box: ^ListBox, row: ^ListBoxRow)
		rows_reordered_func_ptr_anon_190 :: #type proc(tree_model: ^TreeModel, path: ^TreePath, iter: ^TreeIter, new_order: ^glib.int_)
		screen_changed_func_ptr_anon_86 :: #type proc(widget: ^Widget, previous_screen: ^GdkScreen)
		scroll_child_func_ptr_anon_923 :: #type proc(scrolled_window: ^ScrolledWindow, scroll: ScrollType, horizontal: glib.boolean) -> glib.boolean
		scroll_event_func_ptr_anon_1172 :: #type proc(status_icon: ^StatusIcon, event: ^GdkEventScroll) -> glib.boolean
		scroll_event_func_ptr_anon_49 :: #type proc(widget: ^Widget, event: ^GdkEventScroll) -> glib.boolean
		search_changed_func_ptr_anon_933 :: #type proc(entry: ^SearchEntry)
		search_func_ptr_anon_388 :: #type proc(self: ^ShortcutsWindow)
		select_all_func_ptr_anon_366 :: #type proc(tree_view: ^TreeView) -> glib.boolean
		select_all_func_ptr_anon_603 :: #type proc(box: ^FlowBox)
		select_all_func_ptr_anon_676 :: #type proc(icon_view: ^IconView)
		select_all_func_ptr_anon_716 :: #type proc(box: ^ListBox)
		select_all_func_ptr_anon_884 :: #type proc(chooser: ^RecentChooser)
		select_cursor_item_func_ptr_anon_678 :: #type proc(icon_view: ^IconView)
		select_cursor_parent_func_ptr_anon_371 :: #type proc(tree_view: ^TreeView) -> glib.boolean
		select_cursor_row_func_ptr_anon_368 :: #type proc(tree_view: ^TreeView, start_editing: glib.boolean) -> glib.boolean
		select_page_func_ptr_anon_770 :: #type proc(notebook: ^Notebook, move_focus: glib.boolean) -> glib.boolean
		select_uri_func_ptr_anon_882 :: #type proc(chooser: ^RecentChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean
		selected_children_changed_func_ptr_anon_599 :: #type proc(box: ^FlowBox)
		selected_rows_changed_func_ptr_anon_715 :: #type proc(box: ^ListBox)
		selection_changed_func_ptr_anon_675 :: #type proc(icon_view: ^IconView)
		selection_changed_func_ptr_anon_893 :: #type proc(chooser: ^RecentChooser)
		selection_clear_event_func_ptr_anon_63 :: #type proc(widget: ^Widget, event: ^GdkEventSelection) -> glib.boolean
		selection_get_func_ptr_anon_72 :: #type proc(widget: ^Widget, selection_data: ^SelectionData, info: glib.uint_, time_: glib.uint_)
		selection_notify_event_func_ptr_anon_65 :: #type proc(widget: ^Widget, event: ^GdkEventSelection) -> glib.boolean
		selection_received_func_ptr_anon_73 :: #type proc(widget: ^Widget, selection_data: ^SelectionData, time_: glib.uint_)
		selection_request_event_func_ptr_anon_64 :: #type proc(widget: ^Widget, event: ^GdkEventSelection) -> glib.boolean
		set_action_name_func_ptr_anon_166 :: #type proc(actionable: ^Actionable, action_name: cstring)
		set_action_target_value_func_ptr_anon_168 :: #type proc(actionable: ^Actionable, target_value: ^glib.Variant)
		set_anchor_func_ptr_anon_1017 :: #type proc(text_view: ^TextView)
		set_background_func_ptr_anon_1183 :: #type proc(style: ^Style, window: ^GdkWindow, state_type: StateType)
		set_buildable_property_func_ptr_anon_424 :: #type proc(buildable: ^Buildable, builder: ^Builder, name: cstring, value: ^gobj.Value)
		set_cell_data_func_func_ptr_anon_470 :: #type proc(cell_layout: ^CellLayout, cell: ^CellRenderer, func: CellLayoutDataFunc, func_data: glib.pointer, destroy: glib.DestroyNotify)
		set_cell_property_func_ptr_anon_244 :: #type proc(area: ^CellArea, renderer: ^CellRenderer, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
		set_child_property_func_ptr_anon_110 :: #type proc(container: ^Container, child: ^Widget, property_id: glib.uint_, value: ^gobj.Value, pspec: ^gobj.ParamSpec)
		set_client_window_func_ptr_anon_287 :: #type proc(context_p: ^IMContext, window: ^GdkWindow)
		set_current_uri_func_ptr_anon_880 :: #type proc(chooser: ^RecentChooser, uri: cstring, error: ^^glib.Error) -> glib.boolean
		set_cursor_location_func_ptr_anon_293 :: #type proc(context_p: ^IMContext, area: ^GdkRectangle)
		set_default_sort_func_func_ptr_anon_228 :: #type proc(sortable: ^TreeSortable, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
		set_filter_func_func_ptr_anon_622 :: #type proc(fontchooser: ^FontChooser, filter: FontFilterFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
		set_focus_child_func_ptr_anon_107 :: #type proc(container: ^Container, child: ^Widget)
		set_focus_func_ptr_anon_117 :: #type proc(window: ^Window, focus: [^]Widget)
		set_font_map_func_ptr_anon_624 :: #type proc(fontchooser: ^FontChooser, fontmap: ^pango.FontMap)
		set_name_func_ptr_anon_421 :: #type proc(buildable: ^Buildable, name: cstring)
		set_position_func_ptr_anon_279 :: #type proc(editable: ^Editable, position: glib.int_)
		set_rgba_func_ptr_anon_538 :: #type proc(chooser: ^ColorChooser, color: ^GdkRGBA)
		set_selection_bounds_func_ptr_anon_277 :: #type proc(editable: ^Editable, start_pos: glib.int_, end_pos: glib.int_)
		set_sort_column_id_func_ptr_anon_226 :: #type proc(sortable: ^TreeSortable, sort_column_id: glib.int_, order: SortType)
		set_sort_func_func_ptr_anon_227 :: #type proc(sortable: ^TreeSortable, sort_column_id: glib.int_, sort_func: TreeIterCompareFunc, user_data: glib.pointer, destroy: glib.DestroyNotify)
		set_sort_func_func_ptr_anon_891 :: #type proc(chooser: ^RecentChooser, sort_func: RecentSortFunc, sort_data: glib.pointer, data_destroy: glib.DestroyNotify)
		set_surrounding_func_ptr_anon_295 :: #type proc(context_p: ^IMContext, text: cstring, len: glib.int_, cursor_index: glib.int_)
		set_use_preedit_func_ptr_anon_294 :: #type proc(context_p: ^IMContext, use_preedit: glib.boolean)
		show_all_func_ptr_anon_20 :: #type proc(widget: ^Widget)
		show_func_ptr_anon_19 :: #type proc(widget: ^Widget)
		show_func_ptr_anon_588 :: #type proc(self: ^NativeDialog)
		show_help_func_ptr_anon_84 :: #type proc(widget: ^Widget, help_type: WidgetHelpType) -> glib.boolean
		show_menu_func_ptr_anon_756 :: #type proc(button: ^MenuToolButton)
		size_allocate_func_ptr_anon_26 :: #type proc(widget: ^Widget, allocation: ^Allocation)
		size_changed_func_ptr_anon_1169 :: #type proc(status_icon: ^StatusIcon, size_p: glib.int_) -> glib.boolean
		sort_column_changed_func_ptr_anon_224 :: #type proc(sortable: ^TreeSortable)
		start_editing_func_ptr_anon_208 :: #type proc(cell_editable: ^CellEditable, event: ^GdkEvent)
		start_editing_func_ptr_anon_218 :: #type proc(cell: ^CellRenderer, event: ^GdkEvent, widget: ^Widget, path: cstring, background_area: ^GdkRectangle, cell_area: ^GdkRectangle, flags: CellRendererState) -> ^CellEditable
		start_interactive_search_func_ptr_anon_372 :: #type proc(tree_view: ^TreeView) -> glib.boolean
		state_changed_func_ptr_anon_27 :: #type proc(widget: ^Widget, previous_state: StateType)
		state_flags_changed_func_ptr_anon_28 :: #type proc(widget: ^Widget, previous_state_flags: StateFlags)
		state_set_func_ptr_anon_981 :: #type proc(sw: ^Switch, state: glib.boolean) -> glib.boolean
		status_changed_func_ptr_anon_830 :: #type proc(operation: ^PrintOperation)
		stop_search_func_ptr_anon_936 :: #type proc(entry: ^SearchEntry)
		style_changed_func_ptr_anon_1034 :: #type proc(toolbar: ^Toolbar, style: ToolbarStyle)
		style_set_func_ptr_anon_31 :: #type proc(widget: ^Widget, previous_style: ^Style)
		style_updated_func_ptr_anon_93 :: #type proc(widget: ^Widget)
		switch_page_func_ptr_anon_769 :: #type proc(notebook: ^Notebook, page: ^Widget, page_num: glib.uint_)
		sync_action_properties_func_ptr_anon_1102 :: #type proc(activatable: ^Activatable, action: ^Action)
		tag_added_func_ptr_anon_988 :: #type proc(table: ^TextTagTable, tag: ^TextTag)
		tag_changed_func_ptr_anon_987 :: #type proc(table: ^TextTagTable, tag: ^TextTag, size_changed: glib.boolean)
		tag_removed_func_ptr_anon_989 :: #type proc(table: ^TextTagTable, tag: ^TextTag)
		test_collapse_row_func_ptr_anon_360 :: #type proc(tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
		test_expand_row_func_ptr_anon_359 :: #type proc(tree_view: ^TreeView, iter: ^TreeIter, path: ^TreePath) -> glib.boolean
		text_popped_func_ptr_anon_975 :: #type proc(statusbar: ^Statusbar, context_id: glib.uint_, text: cstring)
		text_pushed_func_ptr_anon_974 :: #type proc(statusbar: ^Statusbar, context_id: glib.uint_, text: cstring)
		time_t :: i32
		tk_recent1_func_ptr_anon_898 :: #type proc()
		tk_recent2_func_ptr_anon_899 :: #type proc()
		tk_recent3_func_ptr_anon_900 :: #type proc()
		tk_recent4_func_ptr_anon_901 :: #type proc()
		to_embedder_func_ptr_anon_1 :: #type proc(window: ^GdkWindow, offscreen_x: glib.double, offscreen_y: glib.double, embedder_x: ^glib.double, embedder_y: ^glib.double)
		toggle_cursor_child_func_ptr_anon_601 :: #type proc(box: ^FlowBox)
		toggle_cursor_item_func_ptr_anon_679 :: #type proc(icon_view: ^IconView)
		toggle_cursor_row_func_ptr_anon_369 :: #type proc(tree_view: ^TreeView) -> glib.boolean
		toggle_cursor_row_func_ptr_anon_713 :: #type proc(box: ^ListBox)
		toggle_handle_focus_func_ptr_anon_802 :: #type proc(paned: ^Paned) -> glib.boolean
		toggle_overwrite_func_ptr_anon_1024 :: #type proc(text_view: ^TextView)
		toggle_overwrite_func_ptr_anon_348 :: #type proc(entry: ^Entry)
		toggled_func_ptr_anon_1145 :: #type proc(action: ^ToggleAction)
		toggled_func_ptr_anon_507 :: #type proc(cell_renderer_toggle: ^CellRendererToggle, path: cstring)
		toggled_func_ptr_anon_516 :: #type proc(toggle_button: ^ToggleButton)
		toggled_func_ptr_anon_526 :: #type proc(check_menu_item: ^CheckMenuItem)
		toggled_func_ptr_anon_857 :: #type proc(button: ^ToggleToolButton)
		toolbar_reconfigured_func_ptr_anon_746 :: #type proc(tool_item: ^ToolItem)
		touch_event_func_ptr_anon_94 :: #type proc(widget: ^Widget, event: ^GdkEventTouch) -> glib.boolean
		unmap_event_func_ptr_anon_61 :: #type proc(widget: ^Widget, event: ^GdkEventAny) -> glib.boolean
		unmap_func_ptr_anon_23 :: #type proc(widget: ^Widget)
		unrealize_func_ptr_anon_1179 :: #type proc(style: ^Style)
		unrealize_func_ptr_anon_25 :: #type proc(widget: ^Widget)
		unref_node_func_ptr_anon_205 :: #type proc(tree_model: ^TreeModel, iter: ^TreeIter)
		unselect_all_func_ptr_anon_367 :: #type proc(tree_view: ^TreeView) -> glib.boolean
		unselect_all_func_ptr_anon_604 :: #type proc(box: ^FlowBox)
		unselect_all_func_ptr_anon_677 :: #type proc(icon_view: ^IconView)
		unselect_all_func_ptr_anon_717 :: #type proc(box: ^ListBox)
		unselect_all_func_ptr_anon_885 :: #type proc(chooser: ^RecentChooser)
		unselect_uri_func_ptr_anon_883 :: #type proc(chooser: ^RecentChooser, uri: cstring)
		update_custom_widget_func_ptr_anon_834 :: #type proc(operation: ^PrintOperation, widget: ^Widget, setup: ^PageSetup, settings: [^]PrintSettings)
		update_func_ptr_anon_1101 :: #type proc(activatable: ^Activatable, action: ^Action, property_name: cstring)
		value_changed_func_ptr_anon_174 :: #type proc(adjustment: ^Adjustment)
		value_changed_func_ptr_anon_866 :: #type proc(range: ^Range)
		value_changed_func_ptr_anon_913 :: #type proc(button: ^ScaleButton, value: glib.double)
		value_changed_func_ptr_anon_959 :: #type proc(spin_button: ^SpinButton)
		visibility_notify_event_func_ptr_anon_68 :: #type proc(widget: ^Widget, event: ^GdkEventVisibility) -> glib.boolean
		visible_func_ptr_anon_321 :: #type proc(self: ^TreeModelFilter, child_model: ^TreeModel, iter: ^TreeIter) -> glib.boolean
		widget_set_func_ptr_anon_161 :: #type proc(accessible: ^Accessible)
		widget_unset_func_ptr_anon_162 :: #type proc(accessible: ^Accessible)
		window_added_func_ptr_anon_101 :: #type proc(application: ^Application, window: ^Window)
		window_removed_func_ptr_anon_102 :: #type proc(application: ^Application, window: ^Window)
		window_state_event_func_ptr_anon_69 :: #type proc(widget: ^Widget, event: ^GdkEventWindowState) -> glib.boolean
		wrapped_func_ptr_anon_961 :: #type proc(spin_button: ^SpinButton)

	files:
		gtk3.odin
		hand.odin
		patched.odin
```
