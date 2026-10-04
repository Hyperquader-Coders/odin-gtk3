package atk

import glib "glib:glib"
import gobj "glib:gobject"

MAJOR_VERSION :: 2
MINOR_VERSION :: 52
MICRO_VERSION :: 0
BINARY_AGE :: 25210
INTERFACE_AGE :: 1
VERSION_2_2 :: (2 << 16 | 2 << 8)
VERSION_2_4 :: (2 << 16 | 4 << 8)
VERSION_2_6 :: (2 << 16 | 6 << 8)
VERSION_2_8 :: (2 << 16 | 8 << 8)
VERSION_2_10 :: (2 << 16 | 10 << 8)
VERSION_2_12 :: (2 << 16 | 12 << 8)
VERSION_2_14 :: (2 << 16 | 14 << 8)
VERSION_2_30 :: (2 << 16 | 30 << 8)
VERSION_2_32 :: (2 << 16 | 32 << 8)
VERSION_2_36 :: (2 << 16 | 36 << 8)
VERSION_2_52 :: (2 << 16 | 52 << 8)
VERSION_CUR_STABLE :: ((((2)) << 16 | ((52)) << 8))
VERSION_PREV_STABLE :: ((((2)) << 16 | ((52) - 2) << 8))
TYPE_SCROLL_TYPE :: scroll_type_get_type
TYPE_HYPERLINK_STATE_FLAGS :: hyperlink_state_flags_get_type
TYPE_ROLE :: role_get_type
TYPE_LAYER :: layer_get_type
TYPE_LIVE :: live_get_type
TYPE_RELATION_TYPE :: relation_type_get_type
TYPE_STATE_TYPE :: state_type_get_type
TYPE_TEXT_ATTRIBUTE :: text_attribute_get_type
TYPE_TEXT_BOUNDARY :: text_boundary_get_type
TYPE_TEXT_GRANULARITY :: text_granularity_get_type
TYPE_TEXT_CLIP_TYPE :: text_clip_type_get_type
TYPE_KEY_EVENT_TYPE :: key_event_type_get_type
TYPE_COORD_TYPE :: coord_type_get_type
TYPE_VALUE_TYPE :: value_type_get_type
TYPE_OBJECT :: object_get_type
TYPE_IMPLEMENTOR :: implementor_get_type
TYPE_ACTION :: action_get_type
TYPE_UTIL :: util_get_type
TYPE_COMPONENT :: component_get_type
TYPE_RECTANGLE :: rectangle_get_type
TYPE_DOCUMENT :: document_get_type
TYPE_TEXT :: text_get_type
TYPE_EDITABLE_TEXT :: editable_text_get_type
TYPE_GOBJECT_ACCESSIBLE :: gobject_accessible_get_type
TYPE_HYPERLINK :: hyperlink_get_type
TYPE_HYPERLINK_IMPL :: hyperlink_impl_get_type
TYPE_HYPERTEXT :: hypertext_get_type
TYPE_IMAGE :: image_get_type
TYPE_MISC :: misc_get_type
TYPE_NO_OP_OBJECT :: no_op_object_get_type
TYPE_OBJECT_FACTORY :: object_factory_get_type
TYPE_NO_OP_OBJECT_FACTORY :: no_op_object_factory_get_type
TYPE_PLUG :: plug_get_type
TYPE_RANGE :: range_get_type
TYPE_REGISTRY :: registry_get_type
TYPE_RELATION :: relation_get_type
TYPE_RELATION_SET :: relation_set_get_type
TYPE_SELECTION :: selection_get_type
TYPE_SOCKET :: socket_get_type
TYPE_STATE_SET :: state_set_get_type
TYPE_STREAMABLE_CONTENT :: streamable_content_get_type
TYPE_TABLE :: table_get_type
TYPE_TABLE_CELL :: table_cell_get_type
TYPE_VALUE :: value_get_type
TYPE_WINDOW :: window_get_type

RelationType :: enum u32 {RELATION_NULL = 0, RELATION_CONTROLLED_BY = 1, RELATION_CONTROLLER_FOR = 2, RELATION_LABEL_FOR = 3, RELATION_LABELLED_BY = 4, RELATION_MEMBER_OF = 5, RELATION_NODE_CHILD_OF = 6, RELATION_FLOWS_TO = 7, RELATION_FLOWS_FROM = 8, RELATION_SUBWINDOW_OF = 9, RELATION_EMBEDS = 10, RELATION_EMBEDDED_BY = 11, RELATION_POPUP_FOR = 12, RELATION_PARENT_WINDOW_OF = 13, RELATION_DESCRIBED_BY = 14, RELATION_DESCRIPTION_FOR = 15, RELATION_NODE_PARENT_OF = 16, RELATION_DETAILS = 17, RELATION_DETAILS_FOR = 18, RELATION_ERROR_MESSAGE = 19, RELATION_ERROR_FOR = 20, RELATION_LAST_DEFINED = 21 }
StateType :: enum u32 {STATE_INVALID = 0, STATE_ACTIVE = 1, STATE_ARMED = 2, STATE_BUSY = 3, STATE_CHECKED = 4, STATE_DEFUNCT = 5, STATE_EDITABLE = 6, STATE_ENABLED = 7, STATE_EXPANDABLE = 8, STATE_EXPANDED = 9, STATE_FOCUSABLE = 10, STATE_FOCUSED = 11, STATE_HORIZONTAL = 12, STATE_ICONIFIED = 13, STATE_MODAL = 14, STATE_MULTI_LINE = 15, STATE_MULTISELECTABLE = 16, STATE_OPAQUE = 17, STATE_PRESSED = 18, STATE_RESIZABLE = 19, STATE_SELECTABLE = 20, STATE_SELECTED = 21, STATE_SENSITIVE = 22, STATE_SHOWING = 23, STATE_SINGLE_LINE = 24, STATE_STALE = 25, STATE_TRANSIENT = 26, STATE_VERTICAL = 27, STATE_VISIBLE = 28, STATE_MANAGES_DESCENDANTS = 29, STATE_INDETERMINATE = 30, STATE_TRUNCATED = 31, STATE_REQUIRED = 32, STATE_INVALID_ENTRY = 33, STATE_SUPPORTS_AUTOCOMPLETION = 34, STATE_SELECTABLE_TEXT = 35, STATE_DEFAULT = 36, STATE_ANIMATED = 37, STATE_VISITED = 38, STATE_CHECKABLE = 39, STATE_HAS_POPUP = 40, STATE_HAS_TOOLTIP = 41, STATE_READ_ONLY = 42, STATE_COLLAPSED = 43, STATE_LAST_DEFINED = 44 }
State :: glib.uint64
Role :: enum u32 {INVALID = 0, ACCEL_LABEL = 1, ALERT = 2, ANIMATION = 3, ARROW = 4, CALENDAR = 5, CANVAS = 6, CHECK_BOX = 7, CHECK_MENU_ITEM = 8, COLOR_CHOOSER = 9, COLUMN_HEADER = 10, COMBO_BOX = 11, DATE_EDITOR = 12, DESKTOP_ICON = 13, DESKTOP_FRAME = 14, DIAL = 15, DIALOG = 16, DIRECTORY_PANE = 17, DRAWING_AREA = 18, FILE_CHOOSER = 19, FILLER = 20, FONT_CHOOSER = 21, FRAME = 22, GLASS_PANE = 23, HTML_CONTAINER = 24, ICON = 25, IMAGE = 26, INTERNAL_FRAME = 27, LABEL = 28, LAYERED_PANE = 29, LIST = 30, LIST_ITEM = 31, MENU = 32, MENU_BAR = 33, MENU_ITEM = 34, OPTION_PANE = 35, PAGE_TAB = 36, PAGE_TAB_LIST = 37, PANEL = 38, PASSWORD_TEXT = 39, POPUP_MENU = 40, PROGRESS_BAR = 41, PUSH_BUTTON = 42, RADIO_BUTTON = 43, RADIO_MENU_ITEM = 44, ROOT_PANE = 45, ROW_HEADER = 46, SCROLL_BAR = 47, SCROLL_PANE = 48, SEPARATOR = 49, SLIDER = 50, SPLIT_PANE = 51, SPIN_BUTTON = 52, STATUSBAR = 53, TABLE = 54, TABLE_CELL = 55, TABLE_COLUMN_HEADER = 56, TABLE_ROW_HEADER = 57, TEAR_OFF_MENU_ITEM = 58, TERMINAL = 59, TEXT = 60, TOGGLE_BUTTON = 61, TOOL_BAR = 62, TOOL_TIP = 63, TREE = 64, TREE_TABLE = 65, UNKNOWN = 66, VIEWPORT = 67, WINDOW = 68, HEADER = 69, FOOTER = 70, PARAGRAPH = 71, RULER = 72, APPLICATION = 73, AUTOCOMPLETE = 74, EDITBAR = 75, EMBEDDED = 76, ENTRY = 77, CHART = 78, CAPTION = 79, DOCUMENT_FRAME = 80, HEADING = 81, PAGE = 82, SECTION = 83, REDUNDANT_OBJECT = 84, FORM = 85, LINK = 86, INPUT_METHOD_WINDOW = 87, TABLE_ROW = 88, TREE_ITEM = 89, DOCUMENT_SPREADSHEET = 90, DOCUMENT_PRESENTATION = 91, DOCUMENT_TEXT = 92, DOCUMENT_WEB = 93, DOCUMENT_EMAIL = 94, COMMENT = 95, LIST_BOX = 96, GROUPING = 97, IMAGE_MAP = 98, NOTIFICATION = 99, INFO_BAR = 100, LEVEL_BAR = 101, TITLE_BAR = 102, BLOCK_QUOTE = 103, AUDIO = 104, VIDEO = 105, DEFINITION = 106, ARTICLE = 107, LANDMARK = 108, LOG = 109, MARQUEE = 110, MATH = 111, RATING = 112, TIMER = 113, DESCRIPTION_LIST = 114, DESCRIPTION_TERM = 115, DESCRIPTION_VALUE = 116, STATIC = 117, MATH_FRACTION = 118, MATH_ROOT = 119, SUBSCRIPT = 120, SUPERSCRIPT = 121, FOOTNOTE = 122, CONTENT_DELETION = 123, CONTENT_INSERTION = 124, MARK = 125, SUGGESTION = 126, PUSH_BUTTON_MENU = 127, LAST_DEFINED = 128 }
Layer :: enum u32 {INVALID = 0, BACKGROUND = 1, CANVAS = 2, WIDGET = 3, MDI = 4, POPUP = 5, OVERLAY = 6, WINDOW = 7 }
Live :: enum u32 {NONE = 0, POLITE = 1, ASSERTIVE = 2 }
AttributeSet :: glib.SList
Attribute :: struct {
    name: cstring,
    value: cstring,
}

Implementor :: struct #packed {}


ref_accessible_func_ptr_anon_26 :: #type proc "c" (implementor: ^Implementor) -> ^Object
ImplementorIface :: struct {
    parent: gobj.TypeInterface,
    ref_accessible: ref_accessible_func_ptr_anon_26,
}

et_name_func_ptr_anon_0 :: #type proc "c" (accessible: ^Object) -> cstring
et_description_func_ptr_anon_1 :: #type proc "c" (accessible: ^Object) -> cstring
et_parent_func_ptr_anon_2 :: #type proc "c" (accessible: ^Object) -> ^Object
et_n_children_func_ptr_anon_3 :: #type proc "c" (accessible: ^Object) -> glib.int_
ref_child_func_ptr_anon_4 :: #type proc "c" (accessible: ^Object, i: glib.int_) -> ^Object
et_index_in_parent_func_ptr_anon_5 :: #type proc "c" (accessible: ^Object) -> glib.int_
RelationSet :: struct {
    parent: gobj.Object,
    relations: [^]glib.PtrArray,
}

ref_relation_set_func_ptr_anon_6 :: #type proc "c" (accessible: ^Object) -> ^RelationSet
et_role_func_ptr_anon_7 :: #type proc "c" (accessible: ^Object) -> Role
et_layer_func_ptr_anon_8 :: #type proc "c" (accessible: ^Object) -> Layer
et_mdi_zorder_func_ptr_anon_9 :: #type proc "c" (accessible: ^Object) -> glib.int_
StateSet :: struct {
    parent: gobj.Object,
}

ref_state_set_func_ptr_anon_10 :: #type proc "c" (accessible: ^Object) -> ^StateSet
set_name_func_ptr_anon_11 :: #type proc "c" (accessible: ^Object, name: cstring)
set_description_func_ptr_anon_12 :: #type proc "c" (accessible: ^Object, description: cstring)
set_parent_func_ptr_anon_13 :: #type proc "c" (accessible: ^Object, parent: ^Object)
set_role_func_ptr_anon_14 :: #type proc "c" (accessible: ^Object, role: Role)
PropertyValues :: struct {
    property_name: cstring,
    old_value: gobj.Value,
    new_value: gobj.Value,
}

PropertyChangeHandler :: #type proc "c" (obj: ^Object, vals: [^]PropertyValues)
connect_property_change_handler_func_ptr_anon_15 :: #type proc "c" (accessible: ^Object, handler: ^PropertyChangeHandler) -> glib.uint_
remove_property_change_handler_func_ptr_anon_16 :: #type proc "c" (accessible: ^Object, handler_id: glib.uint_)
initialize_func_ptr_anon_17 :: #type proc "c" (accessible: ^Object, data: glib.pointer)
children_changed_func_ptr_anon_18 :: #type proc "c" (accessible: ^Object, change_index: glib.uint_, changed_child: glib.pointer)
focus_event_func_ptr_anon_19 :: #type proc "c" (accessible: ^Object, focus_in: glib.boolean)
property_change_func_ptr_anon_20 :: #type proc "c" (accessible: ^Object, values: [^]PropertyValues)
state_change_func_ptr_anon_21 :: #type proc "c" (accessible: ^Object, name: cstring, state_set: glib.boolean)
visible_data_changed_func_ptr_anon_22 :: #type proc "c" (accessible: ^Object)
active_descendant_changed_func_ptr_anon_23 :: #type proc "c" (accessible: ^Object, child: ^glib.pointer)
et_attributes_func_ptr_anon_24 :: #type proc "c" (accessible: ^Object) -> ^AttributeSet
et_object_locale_func_ptr_anon_25 :: #type proc "c" (accessible: ^Object) -> cstring
Function :: #type proc "c" (user_data: glib.pointer) -> glib.boolean
ObjectClass :: struct {
    parent: gobj.ObjectClass,
    get_name: et_name_func_ptr_anon_0,
    get_description: et_description_func_ptr_anon_1,
    get_parent: et_parent_func_ptr_anon_2,
    get_n_children: et_n_children_func_ptr_anon_3,
    ref_child: ref_child_func_ptr_anon_4,
    get_index_in_parent: et_index_in_parent_func_ptr_anon_5,
    ref_relation_set: ref_relation_set_func_ptr_anon_6,
    get_role: et_role_func_ptr_anon_7,
    get_layer: et_layer_func_ptr_anon_8,
    get_mdi_zorder: et_mdi_zorder_func_ptr_anon_9,
    ref_state_set: ref_state_set_func_ptr_anon_10,
    set_name: set_name_func_ptr_anon_11,
    set_description: set_description_func_ptr_anon_12,
    set_parent: set_parent_func_ptr_anon_13,
    set_role: set_role_func_ptr_anon_14,
    connect_property_change_handler: connect_property_change_handler_func_ptr_anon_15,
    remove_property_change_handler: remove_property_change_handler_func_ptr_anon_16,
    initialize: initialize_func_ptr_anon_17,
    children_changed: children_changed_func_ptr_anon_18,
    focus_event: focus_event_func_ptr_anon_19,
    property_change: property_change_func_ptr_anon_20,
    state_change: state_change_func_ptr_anon_21,
    visible_data_changed: visible_data_changed_func_ptr_anon_22,
    active_descendant_changed: active_descendant_changed_func_ptr_anon_23,
    get_attributes: et_attributes_func_ptr_anon_24,
    get_object_locale: et_object_locale_func_ptr_anon_25,
    pad1: Function,
}

Object :: struct {
    parent: gobj.Object,
    description: cstring,
    name: cstring,
    accessible_parent: ^Object,
    role: Role,
    relation_set: ^RelationSet,
    layer: Layer,
}
Action :: struct #packed {}

do_action_func_ptr_anon_27 :: #type proc "c" (action: ^Action, i: glib.int_) -> glib.boolean
et_n_actions_func_ptr_anon_28 :: #type proc "c" (action: ^Action) -> glib.int_
et_description_func_ptr_anon_29 :: #type proc "c" (action: ^Action, i: glib.int_) -> cstring
et_name_func_ptr_anon_30 :: #type proc "c" (action: ^Action, i: glib.int_) -> cstring
et_keybinding_func_ptr_anon_31 :: #type proc "c" (action: ^Action, i: glib.int_) -> cstring
set_description_func_ptr_anon_32 :: #type proc "c" (action: ^Action, i: glib.int_, desc: cstring) -> glib.boolean
et_localized_name_func_ptr_anon_33 :: #type proc "c" (action: ^Action, i: glib.int_) -> cstring
ActionIface :: struct {
    parent: gobj.TypeInterface,
    do_action: do_action_func_ptr_anon_27,
    get_n_actions: et_n_actions_func_ptr_anon_28,
    get_description: et_description_func_ptr_anon_29,
    get_name: et_name_func_ptr_anon_30,
    get_keybinding: et_keybinding_func_ptr_anon_31,
    set_description: set_description_func_ptr_anon_32,
    get_localized_name: et_localized_name_func_ptr_anon_33,
}

Util :: struct {
    parent: gobj.Object,
}

add_global_event_listener_func_ptr_anon_34 :: #type proc "c" (listener: gobj.SignalEmissionHook, event_type: cstring) -> glib.uint_
remove_global_event_listener_func_ptr_anon_35 :: #type proc "c" (listener_id: glib.uint_)
KeyEventStruct :: struct {
    type: glib.int_,
    state: glib.uint_,
    keyval: glib.uint_,
    length: glib.int_,
    string_m: cstring,
    keycode: glib.uint16,
    timestamp: glib.uint32,
}

KeySnoopFunc :: #type proc "c" (event: ^KeyEventStruct, user_data: glib.pointer) -> glib.int_
add_key_event_listener_func_ptr_anon_36 :: #type proc "c" (listener: KeySnoopFunc, data: glib.pointer) -> glib.uint_
remove_key_event_listener_func_ptr_anon_37 :: #type proc "c" (listener_id: glib.uint_)
et_root_func_ptr_anon_38 :: #type proc "c" () -> ^Object
et_toolkit_name_func_ptr_anon_39 :: #type proc "c" () -> cstring
et_toolkit_version_func_ptr_anon_40 :: #type proc "c" () -> cstring
UtilClass :: struct {
    parent: gobj.ObjectClass,
    add_global_event_listener: add_global_event_listener_func_ptr_anon_34,
    remove_global_event_listener: remove_global_event_listener_func_ptr_anon_35,
    add_key_event_listener: add_key_event_listener_func_ptr_anon_36,
    remove_key_event_listener: remove_key_event_listener_func_ptr_anon_37,
    get_root: et_root_func_ptr_anon_38,
    get_toolkit_name: et_toolkit_name_func_ptr_anon_39,
    get_toolkit_version: et_toolkit_version_func_ptr_anon_40,
}

EventListener :: #type proc "c" (obj: ^Object)
EventListenerInit :: #type proc "c" ()
KeyEventType :: enum u32 {KEY_EVENT_PRESS = 0, KEY_EVENT_RELEASE = 1, KEY_EVENT_LAST_DEFINED = 2 }
CoordType :: enum u32 {XY_SCREEN = 0, XY_WINDOW = 1, XY_PARENT = 2 }
ScrollType :: enum u32 {SCROLL_TOP_LEFT = 0, SCROLL_BOTTOM_RIGHT = 1, SCROLL_TOP_EDGE = 2, SCROLL_BOTTOM_EDGE = 3, SCROLL_LEFT_EDGE = 4, SCROLL_RIGHT_EDGE = 5, SCROLL_ANYWHERE = 6 }
Component :: struct #packed {}

FocusHandler :: #type proc "c" (object: ^Object, focus_in: glib.boolean)
add_focus_handler_func_ptr_anon_41 :: #type proc "c" (component: ^Component, handler: FocusHandler) -> glib.uint_
contains_func_ptr_anon_42 :: #type proc "c" (component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean
ref_accessible_at_point_func_ptr_anon_43 :: #type proc "c" (component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> ^Object
et_extents_func_ptr_anon_44 :: #type proc "c" (component: ^Component, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coord_type: CoordType)
et_position_func_ptr_anon_45 :: #type proc "c" (component: ^Component, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType)
et_size_func_ptr_anon_46 :: #type proc "c" (component: ^Component, width: ^glib.int_, height: ^glib.int_)
rab_focus_func_ptr_anon_47 :: #type proc "c" (component: ^Component) -> glib.boolean
remove_focus_handler_func_ptr_anon_48 :: #type proc "c" (component: ^Component, handler_id: glib.uint_)
set_extents_func_ptr_anon_49 :: #type proc "c" (component: ^Component, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, coord_type: CoordType) -> glib.boolean
set_position_func_ptr_anon_50 :: #type proc "c" (component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean
set_size_func_ptr_anon_51 :: #type proc "c" (component: ^Component, width: glib.int_, height: glib.int_) -> glib.boolean
et_layer_func_ptr_anon_52 :: #type proc "c" (component: ^Component) -> Layer
et_mdi_zorder_func_ptr_anon_53 :: #type proc "c" (component: ^Component) -> glib.int_
Rectangle :: struct {
    x: glib.int_,
    y: glib.int_,
    width: glib.int_,
    height: glib.int_,
}

bounds_changed_func_ptr_anon_54 :: #type proc "c" (component: ^Component, bounds: [^]Rectangle)
et_alpha_func_ptr_anon_55 :: #type proc "c" (component: ^Component) -> glib.double
scroll_to_func_ptr_anon_56 :: #type proc "c" (component: ^Component, type: ScrollType) -> glib.boolean
scroll_to_point_func_ptr_anon_57 :: #type proc "c" (component: ^Component, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean
ComponentIface :: struct {
    parent: gobj.TypeInterface,
    add_focus_handler: add_focus_handler_func_ptr_anon_41,
    contains: contains_func_ptr_anon_42,
    ref_accessible_at_point: ref_accessible_at_point_func_ptr_anon_43,
    get_extents: et_extents_func_ptr_anon_44,
    get_position: et_position_func_ptr_anon_45,
    get_size: et_size_func_ptr_anon_46,
    grab_focus: rab_focus_func_ptr_anon_47,
    remove_focus_handler: remove_focus_handler_func_ptr_anon_48,
    set_extents: set_extents_func_ptr_anon_49,
    set_position: set_position_func_ptr_anon_50,
    set_size: set_size_func_ptr_anon_51,
    get_layer: et_layer_func_ptr_anon_52,
    get_mdi_zorder: et_mdi_zorder_func_ptr_anon_53,
    bounds_changed: bounds_changed_func_ptr_anon_54,
    get_alpha: et_alpha_func_ptr_anon_55,
    scroll_to: scroll_to_func_ptr_anon_56,
    scroll_to_point: scroll_to_point_func_ptr_anon_57,
}

TextSelection :: struct {
    start_object: ^Object,
    start_offset: glib.int_,
    end_object: ^Object,
    end_offset: glib.int_,
    start_is_active: glib.boolean,
}

Document :: struct #packed {}

et_document_type_func_ptr_anon_58 :: #type proc "c" (document: ^Document) -> cstring
et_document_func_ptr_anon_59 :: #type proc "c" (document: ^Document) -> glib.pointer
et_document_locale_func_ptr_anon_60 :: #type proc "c" (document: ^Document) -> cstring
et_document_attributes_func_ptr_anon_61 :: #type proc "c" (document: ^Document) -> ^AttributeSet
et_document_attribute_value_func_ptr_anon_62 :: #type proc "c" (document: ^Document, attribute_name: cstring) -> cstring
set_document_attribute_func_ptr_anon_63 :: #type proc "c" (document: ^Document, attribute_name: cstring, attribute_value: cstring) -> glib.boolean
et_current_page_number_func_ptr_anon_64 :: #type proc "c" (document: ^Document) -> glib.int_
et_page_count_func_ptr_anon_65 :: #type proc "c" (document: ^Document) -> glib.int_
et_text_selections_func_ptr_anon_66 :: #type proc "c" (document: ^Document) -> ^glib.Array
set_text_selections_func_ptr_anon_67 :: #type proc "c" (document: ^Document, selections: [^]glib.Array) -> glib.boolean
DocumentIface :: struct {
    parent: gobj.TypeInterface,
    get_document_type: et_document_type_func_ptr_anon_58,
    get_document: et_document_func_ptr_anon_59,
    get_document_locale: et_document_locale_func_ptr_anon_60,
    get_document_attributes: et_document_attributes_func_ptr_anon_61,
    get_document_attribute_value: et_document_attribute_value_func_ptr_anon_62,
    set_document_attribute: set_document_attribute_func_ptr_anon_63,
    get_current_page_number: et_current_page_number_func_ptr_anon_64,
    get_page_count: et_page_count_func_ptr_anon_65,
    get_text_selections: et_text_selections_func_ptr_anon_66,
    set_text_selections: set_text_selections_func_ptr_anon_67,
}

TextAttribute :: enum u32 {TEXT_ATTR_INVALID = 0, TEXT_ATTR_LEFT_MARGIN = 1, TEXT_ATTR_RIGHT_MARGIN = 2, TEXT_ATTR_INDENT = 3, TEXT_ATTR_INVISIBLE = 4, TEXT_ATTR_EDITABLE = 5, TEXT_ATTR_PIXELS_ABOVE_LINES = 6, TEXT_ATTR_PIXELS_BELOW_LINES = 7, TEXT_ATTR_PIXELS_INSIDE_WRAP = 8, TEXT_ATTR_BG_FULL_HEIGHT = 9, TEXT_ATTR_RISE = 10, TEXT_ATTR_UNDERLINE = 11, TEXT_ATTR_STRIKETHROUGH = 12, TEXT_ATTR_SIZE = 13, TEXT_ATTR_SCALE = 14, TEXT_ATTR_WEIGHT = 15, TEXT_ATTR_LANGUAGE = 16, TEXT_ATTR_FAMILY_NAME = 17, TEXT_ATTR_BG_COLOR = 18, TEXT_ATTR_FG_COLOR = 19, TEXT_ATTR_BG_STIPPLE = 20, TEXT_ATTR_FG_STIPPLE = 21, TEXT_ATTR_WRAP_MODE = 22, TEXT_ATTR_DIRECTION = 23, TEXT_ATTR_JUSTIFICATION = 24, TEXT_ATTR_STRETCH = 25, TEXT_ATTR_VARIANT = 26, TEXT_ATTR_STYLE = 27, TEXT_ATTR_TEXT_POSITION = 28, TEXT_ATTR_LAST_DEFINED = 29 }
Text :: struct #packed {}

et_text_func_ptr_anon_68 :: #type proc "c" (text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> cstring
TextBoundary :: enum u32 {CHAR = 0, WORD_START = 1, WORD_END = 2, SENTENCE_START = 3, SENTENCE_END = 4, LINE_START = 5, LINE_END = 6 }
et_text_after_offset_func_ptr_anon_69 :: #type proc "c" (text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
et_text_at_offset_func_ptr_anon_70 :: #type proc "c" (text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
et_character_at_offset_func_ptr_anon_71 :: #type proc "c" (text: ^Text, offset: glib.int_) -> glib.unichar
et_text_before_offset_func_ptr_anon_72 :: #type proc "c" (text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
et_caret_offset_func_ptr_anon_73 :: #type proc "c" (text: ^Text) -> glib.int_
et_run_attributes_func_ptr_anon_74 :: #type proc "c" (text: ^Text, offset: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> ^AttributeSet
et_default_attributes_func_ptr_anon_75 :: #type proc "c" (text: ^Text) -> ^AttributeSet
et_character_extents_func_ptr_anon_76 :: #type proc "c" (text: ^Text, offset: glib.int_, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coords: CoordType)
et_character_count_func_ptr_anon_77 :: #type proc "c" (text: ^Text) -> glib.int_
et_offset_at_point_func_ptr_anon_78 :: #type proc "c" (text: ^Text, x: glib.int_, y: glib.int_, coords: CoordType) -> glib.int_
et_n_selections_func_ptr_anon_79 :: #type proc "c" (text: ^Text) -> glib.int_
et_selection_func_ptr_anon_80 :: #type proc "c" (text: ^Text, selection_num: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
add_selection_func_ptr_anon_81 :: #type proc "c" (text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
remove_selection_func_ptr_anon_82 :: #type proc "c" (text: ^Text, selection_num: glib.int_) -> glib.boolean
set_selection_func_ptr_anon_83 :: #type proc "c" (text: ^Text, selection_num: glib.int_, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
set_caret_offset_func_ptr_anon_84 :: #type proc "c" (text: ^Text, offset: glib.int_) -> glib.boolean
text_changed_func_ptr_anon_85 :: #type proc "c" (text: ^Text, position: glib.int_, length: glib.int_)
text_caret_moved_func_ptr_anon_86 :: #type proc "c" (text: ^Text, location: glib.int_)
text_selection_changed_func_ptr_anon_87 :: #type proc "c" (text: ^Text)
text_attributes_changed_func_ptr_anon_88 :: #type proc "c" (text: ^Text)
TextRectangle :: struct {
    x: glib.int_,
    y: glib.int_,
    width: glib.int_,
    height: glib.int_,
}

et_range_extents_func_ptr_anon_89 :: #type proc "c" (text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coord_type: CoordType, rect: ^TextRectangle)
TextRange :: struct {
    bounds: TextRectangle,
    start_offset: glib.int_,
    end_offset: glib.int_,
    content: cstring,
}

TextClipType :: enum u32 {TEXT_CLIP_NONE = 0, TEXT_CLIP_MIN = 1, TEXT_CLIP_MAX = 2, TEXT_CLIP_BOTH = 3 }
et_bounded_ranges_func_ptr_anon_90 :: #type proc "c" (text: ^Text, rect: ^TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) -> ^^TextRange
TextGranularity :: enum u32 {CHAR = 0, WORD = 1, SENTENCE = 2, LINE = 3, PARAGRAPH = 4 }
et_string_at_offset_func_ptr_anon_91 :: #type proc "c" (text: ^Text, offset: glib.int_, granularity: TextGranularity, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring
scroll_substring_to_func_ptr_anon_92 :: #type proc "c" (text: ^Text, start_offset: glib.int_, end_offset: glib.int_, type: ScrollType) -> glib.boolean
scroll_substring_to_point_func_ptr_anon_93 :: #type proc "c" (text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean
TextIface :: struct {
    parent: gobj.TypeInterface,
    get_text: et_text_func_ptr_anon_68,
    get_text_after_offset: et_text_after_offset_func_ptr_anon_69,
    get_text_at_offset: et_text_at_offset_func_ptr_anon_70,
    get_character_at_offset: et_character_at_offset_func_ptr_anon_71,
    get_text_before_offset: et_text_before_offset_func_ptr_anon_72,
    get_caret_offset: et_caret_offset_func_ptr_anon_73,
    get_run_attributes: et_run_attributes_func_ptr_anon_74,
    get_default_attributes: et_default_attributes_func_ptr_anon_75,
    get_character_extents: et_character_extents_func_ptr_anon_76,
    get_character_count: et_character_count_func_ptr_anon_77,
    get_offset_at_point: et_offset_at_point_func_ptr_anon_78,
    get_n_selections: et_n_selections_func_ptr_anon_79,
    get_selection: et_selection_func_ptr_anon_80,
    add_selection: add_selection_func_ptr_anon_81,
    remove_selection: remove_selection_func_ptr_anon_82,
    set_selection: set_selection_func_ptr_anon_83,
    set_caret_offset: set_caret_offset_func_ptr_anon_84,
    text_changed: text_changed_func_ptr_anon_85,
    text_caret_moved: text_caret_moved_func_ptr_anon_86,
    text_selection_changed: text_selection_changed_func_ptr_anon_87,
    text_attributes_changed: text_attributes_changed_func_ptr_anon_88,
    get_range_extents: et_range_extents_func_ptr_anon_89,
    get_bounded_ranges: et_bounded_ranges_func_ptr_anon_90,
    get_string_at_offset: et_string_at_offset_func_ptr_anon_91,
    scroll_substring_to: scroll_substring_to_func_ptr_anon_92,
    scroll_substring_to_point: scroll_substring_to_point_func_ptr_anon_93,
}

EditableText :: struct #packed {}

set_run_attributes_func_ptr_anon_94 :: #type proc "c" (text: ^EditableText, attrib_set: ^AttributeSet, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean
set_text_contents_func_ptr_anon_95 :: #type proc "c" (text: ^EditableText, string_p: cstring)
insert_text_func_ptr_anon_96 :: #type proc "c" (text: ^EditableText, string_p: cstring, length: glib.int_, position: ^glib.int_)
copy_text_func_ptr_anon_97 :: #type proc "c" (text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
cut_text_func_ptr_anon_98 :: #type proc "c" (text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
delete_text_func_ptr_anon_99 :: #type proc "c" (text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_)
paste_text_func_ptr_anon_100 :: #type proc "c" (text: ^EditableText, position: glib.int_)
EditableTextIface :: struct {
    parent_interface: gobj.TypeInterface,
    set_run_attributes: set_run_attributes_func_ptr_anon_94,
    set_text_contents: set_text_contents_func_ptr_anon_95,
    insert_text: insert_text_func_ptr_anon_96,
    copy_text: copy_text_func_ptr_anon_97,
    cut_text: cut_text_func_ptr_anon_98,
    delete_text: delete_text_func_ptr_anon_99,
    paste_text: paste_text_func_ptr_anon_100,
}

GObjectAccessible :: struct {
    parent: Object,
}

GObjectAccessibleClass :: struct {
    parent_class: ObjectClass,
    pad1: Function,
    pad2: Function,
}

HyperlinkStateFlagsBit :: enum u32 {HYPERLINK_IS_INLINE = 0}
HyperlinkStateFlags :: bit_set[HyperlinkStateFlagsBit; u32]
Hyperlink :: struct {
    parent: gobj.Object,
}

et_uri_func_ptr_anon_101 :: #type proc "c" (link_: ^Hyperlink, i: glib.int_) -> cstring
et_object_func_ptr_anon_102 :: #type proc "c" (link_: ^Hyperlink, i: glib.int_) -> ^Object
et_end_index_func_ptr_anon_103 :: #type proc "c" (link_: ^Hyperlink) -> glib.int_
et_start_index_func_ptr_anon_104 :: #type proc "c" (link_: ^Hyperlink) -> glib.int_
is_valid_func_ptr_anon_105 :: #type proc "c" (link_: ^Hyperlink) -> glib.boolean
et_n_anchors_func_ptr_anon_106 :: #type proc "c" (link_: ^Hyperlink) -> glib.int_
link_state_func_ptr_anon_107 :: #type proc "c" (link_: ^Hyperlink) -> glib.uint_
is_selected_link_func_ptr_anon_108 :: #type proc "c" (link_: ^Hyperlink) -> glib.boolean
link_activated_func_ptr_anon_109 :: #type proc "c" (link_: ^Hyperlink)
HyperlinkClass :: struct {
    parent: gobj.ObjectClass,
    get_uri: et_uri_func_ptr_anon_101,
    get_object: et_object_func_ptr_anon_102,
    get_end_index: et_end_index_func_ptr_anon_103,
    get_start_index: et_start_index_func_ptr_anon_104,
    is_valid: is_valid_func_ptr_anon_105,
    get_n_anchors: et_n_anchors_func_ptr_anon_106,
    link_state: link_state_func_ptr_anon_107,
    is_selected_link: is_selected_link_func_ptr_anon_108,
    link_activated: link_activated_func_ptr_anon_109,
    pad1: Function,
}

HyperlinkImpl :: struct #packed {}

et_hyperlink_func_ptr_anon_110 :: #type proc "c" (impl: ^HyperlinkImpl) -> ^Hyperlink
HyperlinkImplIface :: struct {
    parent: gobj.TypeInterface,
    get_hyperlink: et_hyperlink_func_ptr_anon_110,
}

Hypertext :: struct #packed {}

et_link_func_ptr_anon_111 :: #type proc "c" (hypertext: ^Hypertext, link_index: glib.int_) -> ^Hyperlink
et_n_links_func_ptr_anon_112 :: #type proc "c" (hypertext: ^Hypertext) -> glib.int_
et_link_index_func_ptr_anon_113 :: #type proc "c" (hypertext: ^Hypertext, char_index: glib.int_) -> glib.int_
link_selected_func_ptr_anon_114 :: #type proc "c" (hypertext: ^Hypertext, link_index: glib.int_)
HypertextIface :: struct {
    parent: gobj.TypeInterface,
    get_link: et_link_func_ptr_anon_111,
    get_n_links: et_n_links_func_ptr_anon_112,
    get_link_index: et_link_index_func_ptr_anon_113,
    link_selected: link_selected_func_ptr_anon_114,
}

Image :: struct #packed {}

et_image_position_func_ptr_anon_115 :: #type proc "c" (image: ^Image, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType)
et_image_description_func_ptr_anon_116 :: #type proc "c" (image: ^Image) -> cstring
et_image_size_func_ptr_anon_117 :: #type proc "c" (image: ^Image, width: ^glib.int_, height: ^glib.int_)
set_image_description_func_ptr_anon_118 :: #type proc "c" (image: ^Image, description: cstring) -> glib.boolean
et_image_locale_func_ptr_anon_119 :: #type proc "c" (image: ^Image) -> cstring
ImageIface :: struct {
    parent: gobj.TypeInterface,
    get_image_position: et_image_position_func_ptr_anon_115,
    get_image_description: et_image_description_func_ptr_anon_116,
    get_image_size: et_image_size_func_ptr_anon_117,
    set_image_description: set_image_description_func_ptr_anon_118,
    get_image_locale: et_image_locale_func_ptr_anon_119,
}

Misc :: struct {
    parent: gobj.Object,
}

threads_enter_func_ptr_anon_120 :: #type proc "c" (misc: ^Misc)
threads_leave_func_ptr_anon_121 :: #type proc "c" (misc: ^Misc)
MiscClass :: struct {
    parent: gobj.ObjectClass,
    threads_enter: threads_enter_func_ptr_anon_120,
    threads_leave: threads_leave_func_ptr_anon_121,
    vfuncs: [32]glib.pointer,
}

NoOpObject :: struct {
    parent: Object,
}

NoOpObjectClass :: struct {
    parent_class: ObjectClass,
}

ObjectFactory :: struct {
    parent: gobj.Object,
}

create_accessible_func_ptr_anon_122 :: #type proc "c" (obj: ^gobj.Object) -> ^Object
invalidate_func_ptr_anon_123 :: #type proc "c" (factory: ^ObjectFactory)
et_accessible_type_func_ptr_anon_124 :: #type proc "c" () -> gobj.Type
ObjectFactoryClass :: struct {
    parent_class: gobj.ObjectClass,
    create_accessible: create_accessible_func_ptr_anon_122,
    invalidate: invalidate_func_ptr_anon_123,
    get_accessible_type: et_accessible_type_func_ptr_anon_124,
    pad1: Function,
    pad2: Function,
}

NoOpObjectFactory :: struct {
    parent: ObjectFactory,
}

NoOpObjectFactoryClass :: struct {
    parent_class: ObjectFactoryClass,
}

Plug :: struct {
    parent: Object,
}

et_object_id_func_ptr_anon_125 :: #type proc "c" (obj: ^Plug) -> cstring
PlugClass :: struct {
    parent_class: ObjectClass,
    get_object_id: et_object_id_func_ptr_anon_125,
}

Range :: struct #packed {}

Registry :: struct {
    parent: gobj.Object,
    factory_type_registry: ^glib.HashTable,
    factory_singleton_cache: ^glib.HashTable,
}
RegistryClass :: struct {
    parent_class: gobj.ObjectClass,
}


Relation :: struct {
    parent: gobj.Object,
    target: ^glib.PtrArray,
    relationship: RelationType,
}

RelationClass :: struct {
    parent: gobj.ObjectClass,
}

RelationSetClass :: struct {
    parent: gobj.ObjectClass,
    pad1: Function,
    pad2: Function,
}

Selection :: struct #packed {}

add_selection_func_ptr_anon_126 :: #type proc "c" (selection: ^Selection, i: glib.int_) -> glib.boolean
clear_selection_func_ptr_anon_127 :: #type proc "c" (selection: ^Selection) -> glib.boolean
ref_selection_func_ptr_anon_128 :: #type proc "c" (selection: ^Selection, i: glib.int_) -> ^Object
et_selection_count_func_ptr_anon_129 :: #type proc "c" (selection: ^Selection) -> glib.int_
is_child_selected_func_ptr_anon_130 :: #type proc "c" (selection: ^Selection, i: glib.int_) -> glib.boolean
remove_selection_func_ptr_anon_131 :: #type proc "c" (selection: ^Selection, i: glib.int_) -> glib.boolean
select_all_selection_func_ptr_anon_132 :: #type proc "c" (selection: ^Selection) -> glib.boolean
selection_changed_func_ptr_anon_133 :: #type proc "c" (selection: ^Selection)
SelectionIface :: struct {
    parent: gobj.TypeInterface,
    add_selection: add_selection_func_ptr_anon_126,
    clear_selection: clear_selection_func_ptr_anon_127,
    ref_selection: ref_selection_func_ptr_anon_128,
    get_selection_count: et_selection_count_func_ptr_anon_129,
    is_child_selected: is_child_selected_func_ptr_anon_130,
    remove_selection: remove_selection_func_ptr_anon_131,
    select_all_selection: select_all_selection_func_ptr_anon_132,
    selection_changed: selection_changed_func_ptr_anon_133,
}

Socket :: struct {
    parent: Object,
    embedded_plug_id: cstring,
}

embed_func_ptr_anon_134 :: #type proc "c" (obj: ^Socket, plug_id: cstring)
SocketClass :: struct {
    parent_class: ObjectClass,
    embed: embed_func_ptr_anon_134,
}

StateSetClass :: struct {
    parent: gobj.ObjectClass,
}

StreamableContent :: struct #packed {}

et_n_mime_types_func_ptr_anon_135 :: #type proc "c" (streamable: ^StreamableContent) -> glib.int_
et_mime_type_func_ptr_anon_136 :: #type proc "c" (streamable: ^StreamableContent, i: glib.int_) -> cstring
et_stream_func_ptr_anon_137 :: #type proc "c" (streamable: ^StreamableContent, mime_type: cstring) -> ^glib.IOChannel
et_uri_func_ptr_anon_138 :: #type proc "c" (streamable: ^StreamableContent, mime_type: cstring) -> cstring
StreamableContentIface :: struct {
    parent: gobj.TypeInterface,
    get_n_mime_types: et_n_mime_types_func_ptr_anon_135,
    get_mime_type: et_mime_type_func_ptr_anon_136,
    get_stream: et_stream_func_ptr_anon_137,
    get_uri: et_uri_func_ptr_anon_138,
    pad1: Function,
    pad2: Function,
    pad3: Function,
}

Table :: struct #packed {}

ref_at_func_ptr_anon_139 :: #type proc "c" (table: ^Table, row: glib.int_, column: glib.int_) -> ^Object
et_index_at_func_ptr_anon_140 :: #type proc "c" (table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
et_column_at_index_func_ptr_anon_141 :: #type proc "c" (table: ^Table, index_: glib.int_) -> glib.int_
et_row_at_index_func_ptr_anon_142 :: #type proc "c" (table: ^Table, index_: glib.int_) -> glib.int_
et_n_columns_func_ptr_anon_143 :: #type proc "c" (table: ^Table) -> glib.int_
et_n_rows_func_ptr_anon_144 :: #type proc "c" (table: ^Table) -> glib.int_
et_column_extent_at_func_ptr_anon_145 :: #type proc "c" (table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
et_row_extent_at_func_ptr_anon_146 :: #type proc "c" (table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_
et_caption_func_ptr_anon_147 :: #type proc "c" (table: ^Table) -> ^Object
et_column_description_func_ptr_anon_148 :: #type proc "c" (table: ^Table, column: glib.int_) -> cstring
et_column_header_func_ptr_anon_149 :: #type proc "c" (table: ^Table, column: glib.int_) -> ^Object
et_row_description_func_ptr_anon_150 :: #type proc "c" (table: ^Table, row: glib.int_) -> cstring
et_row_header_func_ptr_anon_151 :: #type proc "c" (table: ^Table, row: glib.int_) -> ^Object
et_summary_func_ptr_anon_152 :: #type proc "c" (table: ^Table) -> ^Object
set_caption_func_ptr_anon_153 :: #type proc "c" (table: ^Table, caption: ^Object)
set_column_description_func_ptr_anon_154 :: #type proc "c" (table: ^Table, column: glib.int_, description: cstring)
set_column_header_func_ptr_anon_155 :: #type proc "c" (table: ^Table, column: glib.int_, header: ^Object)
set_row_description_func_ptr_anon_156 :: #type proc "c" (table: ^Table, row: glib.int_, description: cstring)
set_row_header_func_ptr_anon_157 :: #type proc "c" (table: ^Table, row: glib.int_, header: ^Object)
set_summary_func_ptr_anon_158 :: #type proc "c" (table: ^Table, accessible: ^Object)
et_selected_columns_func_ptr_anon_159 :: #type proc "c" (table: ^Table, selected: ^^glib.int_) -> glib.int_
et_selected_rows_func_ptr_anon_160 :: #type proc "c" (table: ^Table, selected: ^^glib.int_) -> glib.int_
is_column_selected_func_ptr_anon_161 :: #type proc "c" (table: ^Table, column: glib.int_) -> glib.boolean
is_row_selected_func_ptr_anon_162 :: #type proc "c" (table: ^Table, row: glib.int_) -> glib.boolean
is_selected_func_ptr_anon_163 :: #type proc "c" (table: ^Table, row: glib.int_, column: glib.int_) -> glib.boolean
add_row_selection_func_ptr_anon_164 :: #type proc "c" (table: ^Table, row: glib.int_) -> glib.boolean
remove_row_selection_func_ptr_anon_165 :: #type proc "c" (table: ^Table, row: glib.int_) -> glib.boolean
add_column_selection_func_ptr_anon_166 :: #type proc "c" (table: ^Table, column: glib.int_) -> glib.boolean
remove_column_selection_func_ptr_anon_167 :: #type proc "c" (table: ^Table, column: glib.int_) -> glib.boolean
row_inserted_func_ptr_anon_168 :: #type proc "c" (table: ^Table, row: glib.int_, num_inserted: glib.int_)
column_inserted_func_ptr_anon_169 :: #type proc "c" (table: ^Table, column: glib.int_, num_inserted: glib.int_)
row_deleted_func_ptr_anon_170 :: #type proc "c" (table: ^Table, row: glib.int_, num_deleted: glib.int_)
column_deleted_func_ptr_anon_171 :: #type proc "c" (table: ^Table, column: glib.int_, num_deleted: glib.int_)
row_reordered_func_ptr_anon_172 :: #type proc "c" (table: ^Table)
column_reordered_func_ptr_anon_173 :: #type proc "c" (table: ^Table)
model_changed_func_ptr_anon_174 :: #type proc "c" (table: ^Table)
TableIface :: struct {
    parent: gobj.TypeInterface,
    ref_at: ref_at_func_ptr_anon_139,
    get_index_at: et_index_at_func_ptr_anon_140,
    get_column_at_index: et_column_at_index_func_ptr_anon_141,
    get_row_at_index: et_row_at_index_func_ptr_anon_142,
    get_n_columns: et_n_columns_func_ptr_anon_143,
    get_n_rows: et_n_rows_func_ptr_anon_144,
    get_column_extent_at: et_column_extent_at_func_ptr_anon_145,
    get_row_extent_at: et_row_extent_at_func_ptr_anon_146,
    get_caption: et_caption_func_ptr_anon_147,
    get_column_description: et_column_description_func_ptr_anon_148,
    get_column_header: et_column_header_func_ptr_anon_149,
    get_row_description: et_row_description_func_ptr_anon_150,
    get_row_header: et_row_header_func_ptr_anon_151,
    get_summary: et_summary_func_ptr_anon_152,
    set_caption: set_caption_func_ptr_anon_153,
    set_column_description: set_column_description_func_ptr_anon_154,
    set_column_header: set_column_header_func_ptr_anon_155,
    set_row_description: set_row_description_func_ptr_anon_156,
    set_row_header: set_row_header_func_ptr_anon_157,
    set_summary: set_summary_func_ptr_anon_158,
    get_selected_columns: et_selected_columns_func_ptr_anon_159,
    get_selected_rows: et_selected_rows_func_ptr_anon_160,
    is_column_selected: is_column_selected_func_ptr_anon_161,
    is_row_selected: is_row_selected_func_ptr_anon_162,
    is_selected: is_selected_func_ptr_anon_163,
    add_row_selection: add_row_selection_func_ptr_anon_164,
    remove_row_selection: remove_row_selection_func_ptr_anon_165,
    add_column_selection: add_column_selection_func_ptr_anon_166,
    remove_column_selection: remove_column_selection_func_ptr_anon_167,
    row_inserted: row_inserted_func_ptr_anon_168,
    column_inserted: column_inserted_func_ptr_anon_169,
    row_deleted: row_deleted_func_ptr_anon_170,
    column_deleted: column_deleted_func_ptr_anon_171,
    row_reordered: row_reordered_func_ptr_anon_172,
    column_reordered: column_reordered_func_ptr_anon_173,
    model_changed: model_changed_func_ptr_anon_174,
}

TableCell :: struct #packed {}

et_column_span_func_ptr_anon_175 :: #type proc "c" (cell: ^TableCell) -> glib.int_
et_column_header_cells_func_ptr_anon_176 :: #type proc "c" (cell: ^TableCell) -> ^glib.PtrArray
et_position_func_ptr_anon_177 :: #type proc "c" (cell: ^TableCell, row: ^glib.int_, column: ^glib.int_) -> glib.boolean
et_row_span_func_ptr_anon_178 :: #type proc "c" (cell: ^TableCell) -> glib.int_
et_row_header_cells_func_ptr_anon_179 :: #type proc "c" (cell: ^TableCell) -> ^glib.PtrArray
et_row_column_span_func_ptr_anon_180 :: #type proc "c" (cell: ^TableCell, row: ^glib.int_, column: ^glib.int_, row_span: ^glib.int_, column_span: ^glib.int_) -> glib.boolean
et_table_func_ptr_anon_181 :: #type proc "c" (cell: ^TableCell) -> ^Object
TableCellIface :: struct {
    parent: gobj.TypeInterface,
    get_column_span: et_column_span_func_ptr_anon_175,
    get_column_header_cells: et_column_header_cells_func_ptr_anon_176,
    get_position: et_position_func_ptr_anon_177,
    get_row_span: et_row_span_func_ptr_anon_178,
    get_row_header_cells: et_row_header_cells_func_ptr_anon_179,
    get_row_column_span: et_row_column_span_func_ptr_anon_180,
    get_table: et_table_func_ptr_anon_181,
}

Value :: struct #packed {}

et_current_value_func_ptr_anon_182 :: #type proc "c" (obj: ^Value, value: ^gobj.Value)
et_maximum_value_func_ptr_anon_183 :: #type proc "c" (obj: ^Value, value: ^gobj.Value)
et_minimum_value_func_ptr_anon_184 :: #type proc "c" (obj: ^Value, value: ^gobj.Value)
set_current_value_func_ptr_anon_185 :: #type proc "c" (obj: ^Value, value: ^gobj.Value) -> glib.boolean
et_minimum_increment_func_ptr_anon_186 :: #type proc "c" (obj: ^Value, value: ^gobj.Value)
et_value_and_text_func_ptr_anon_187 :: #type proc "c" (obj: ^Value, value: ^glib.double, text: ^cstring)
et_range_func_ptr_anon_188 :: #type proc "c" (obj: ^Value) -> ^Range
et_increment_func_ptr_anon_189 :: #type proc "c" (obj: ^Value) -> glib.double
et_sub_ranges_func_ptr_anon_190 :: #type proc "c" (obj: ^Value) -> ^glib.SList
set_value_func_ptr_anon_191 :: #type proc "c" (obj: ^Value, new_value: glib.double)
ValueIface :: struct {
    parent: gobj.TypeInterface,
    get_current_value: et_current_value_func_ptr_anon_182,
    get_maximum_value: et_maximum_value_func_ptr_anon_183,
    get_minimum_value: et_minimum_value_func_ptr_anon_184,
    set_current_value: set_current_value_func_ptr_anon_185,
    get_minimum_increment: et_minimum_increment_func_ptr_anon_186,
    get_value_and_text: et_value_and_text_func_ptr_anon_187,
    get_range: et_range_func_ptr_anon_188,
    get_increment: et_increment_func_ptr_anon_189,
    get_sub_ranges: et_sub_ranges_func_ptr_anon_190,
    set_value: set_value_func_ptr_anon_191,
}

ValueType :: enum u32 {VALUE_VERY_WEAK = 0, VALUE_WEAK = 1, VALUE_ACCEPTABLE = 2, VALUE_STRONG = 3, VALUE_VERY_STRONG = 4, VALUE_VERY_LOW = 5, VALUE_LOW = 6, VALUE_MEDIUM = 7, VALUE_HIGH = 8, VALUE_VERY_HIGH = 9, VALUE_VERY_BAD = 10, VALUE_BAD = 11, VALUE_GOOD = 12, VALUE_VERY_GOOD = 13, VALUE_BEST = 14, VALUE_LAST_DEFINED = 15 }
Window :: struct #packed {}

WindowIface :: struct {
    parent: gobj.TypeInterface,
}


@(default_calling_convention = "c")
foreign atk_runic {
    @(link_name = "atk_get_major_version")
    get_major_version :: proc() -> glib.uint_ ---

    @(link_name = "atk_get_minor_version")
    get_minor_version :: proc() -> glib.uint_ ---

    @(link_name = "atk_get_micro_version")
    get_micro_version :: proc() -> glib.uint_ ---

    @(link_name = "atk_get_binary_age")
    get_binary_age :: proc() -> glib.uint_ ---

    @(link_name = "atk_get_interface_age")
    get_interface_age :: proc() -> glib.uint_ ---

    @(link_name = "atk_scroll_type_get_type")
    scroll_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_hyperlink_state_flags_get_type")
    hyperlink_state_flags_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_role_get_type")
    role_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_layer_get_type")
    layer_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_live_get_type")
    live_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_relation_type_get_type")
    relation_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_state_type_get_type")
    state_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_attribute_get_type")
    text_attribute_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_boundary_get_type")
    text_boundary_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_granularity_get_type")
    text_granularity_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_clip_type_get_type")
    text_clip_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_key_event_type_get_type")
    key_event_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_coord_type_get_type")
    coord_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_value_type_get_type")
    value_type_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_state_type_register")
    state_type_register :: proc(name: cstring) -> StateType ---

    @(link_name = "atk_state_type_get_name")
    state_type_get_name :: proc(type: StateType) -> cstring ---

    @(link_name = "atk_state_type_for_name")
    state_type_for_name :: proc(name: cstring) -> StateType ---

    @(link_name = "atk_object_get_type")
    object_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_implementor_get_type")
    implementor_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_implementor_ref_accessible")
    implementor_ref_accessible :: proc(implementor: ^Implementor) -> ^Object ---

    @(link_name = "atk_object_get_name")
    object_get_name :: proc(accessible: ^Object) -> cstring ---

    @(link_name = "atk_object_get_description")
    object_get_description :: proc(accessible: ^Object) -> cstring ---

    @(link_name = "atk_object_get_parent")
    object_get_parent :: proc(accessible: ^Object) -> ^Object ---

    @(link_name = "atk_object_peek_parent")
    object_peek_parent :: proc(accessible: ^Object) -> ^Object ---

    @(link_name = "atk_object_get_n_accessible_children")
    object_get_n_accessible_children :: proc(accessible: ^Object) -> glib.int_ ---

    @(link_name = "atk_object_ref_accessible_child")
    object_ref_accessible_child :: proc(accessible: ^Object, i: glib.int_) -> ^Object ---

    @(link_name = "atk_object_ref_relation_set")
    object_ref_relation_set :: proc(accessible: ^Object) -> ^RelationSet ---

    @(link_name = "atk_object_get_role")
    object_get_role :: proc(accessible: ^Object) -> Role ---

    @(link_name = "atk_object_get_layer")
    object_get_layer :: proc(accessible: ^Object) -> Layer ---

    @(link_name = "atk_object_get_mdi_zorder")
    object_get_mdi_zorder :: proc(accessible: ^Object) -> glib.int_ ---

    @(link_name = "atk_object_get_attributes")
    object_get_attributes :: proc(accessible: ^Object) -> ^AttributeSet ---

    @(link_name = "atk_object_ref_state_set")
    object_ref_state_set :: proc(accessible: ^Object) -> ^StateSet ---

    @(link_name = "atk_object_get_index_in_parent")
    object_get_index_in_parent :: proc(accessible: ^Object) -> glib.int_ ---

    @(link_name = "atk_object_set_name")
    object_set_name :: proc(accessible: ^Object, name: cstring) ---

    @(link_name = "atk_object_set_description")
    object_set_description :: proc(accessible: ^Object, description: cstring) ---

    @(link_name = "atk_object_set_parent")
    object_set_parent :: proc(accessible: ^Object, parent: ^Object) ---

    @(link_name = "atk_object_set_role")
    object_set_role :: proc(accessible: ^Object, role: Role) ---

    @(link_name = "atk_object_connect_property_change_handler")
    object_connect_property_change_handler :: proc(accessible: ^Object, handler: ^PropertyChangeHandler) -> glib.uint_ ---

    @(link_name = "atk_object_remove_property_change_handler")
    object_remove_property_change_handler :: proc(accessible: ^Object, handler_id: glib.uint_) ---

    @(link_name = "atk_object_notify_state_change")
    object_notify_state_change :: proc(accessible: ^Object, state: State, value: glib.boolean) ---

    @(link_name = "atk_object_initialize")
    object_initialize :: proc(accessible: ^Object, data: glib.pointer) ---

    @(link_name = "atk_role_get_name")
    role_get_name :: proc(role: Role) -> cstring ---

    @(link_name = "atk_role_for_name")
    role_for_name :: proc(name: cstring) -> Role ---

    @(link_name = "atk_object_add_relationship")
    object_add_relationship :: proc(object: ^Object, relationship: RelationType, target: ^Object) -> glib.boolean ---

    @(link_name = "atk_object_remove_relationship")
    object_remove_relationship :: proc(object: ^Object, relationship: RelationType, target: ^Object) -> glib.boolean ---

    @(link_name = "atk_role_get_localized_name")
    role_get_localized_name :: proc(role: Role) -> cstring ---

    @(link_name = "atk_role_register")
    role_register :: proc(name: cstring) -> Role ---

    @(link_name = "atk_object_get_object_locale")
    object_get_object_locale :: proc(accessible: ^Object) -> cstring ---

    @(link_name = "atk_object_get_accessible_id")
    object_get_accessible_id :: proc(accessible: ^Object) -> cstring ---

    @(link_name = "atk_object_set_accessible_id")
    object_set_accessible_id :: proc(accessible: ^Object, id: cstring) ---

    @(link_name = "atk_object_get_help_text")
    object_get_help_text :: proc(accessible: ^Object) -> cstring ---

    @(link_name = "atk_object_set_help_text")
    object_set_help_text :: proc(accessible: ^Object, help_text: cstring) ---

    @(link_name = "atk_action_get_type")
    action_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_action_do_action")
    action_do_action :: proc(action: ^Action, i: glib.int_) -> glib.boolean ---

    @(link_name = "atk_action_get_n_actions")
    action_get_n_actions :: proc(action: ^Action) -> glib.int_ ---

    @(link_name = "atk_action_get_description")
    action_get_description :: proc(action: ^Action, i: glib.int_) -> cstring ---

    @(link_name = "atk_action_get_name")
    action_get_name :: proc(action: ^Action, i: glib.int_) -> cstring ---

    @(link_name = "atk_action_get_keybinding")
    action_get_keybinding :: proc(action: ^Action, i: glib.int_) -> cstring ---

    @(link_name = "atk_action_set_description")
    action_set_description :: proc(action: ^Action, i: glib.int_, desc: cstring) -> glib.boolean ---

    @(link_name = "atk_action_get_localized_name")
    action_get_localized_name :: proc(action: ^Action, i: glib.int_) -> cstring ---

    @(link_name = "atk_util_get_type")
    util_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_add_focus_tracker")
    add_focus_tracker :: proc(focus_tracker: EventListener) -> glib.uint_ ---

    @(link_name = "atk_remove_focus_tracker")
    remove_focus_tracker :: proc(tracker_id: glib.uint_) ---

    @(link_name = "atk_focus_tracker_init")
    focus_tracker_init :: proc(init: EventListenerInit) ---

    @(link_name = "atk_focus_tracker_notify")
    focus_tracker_notify :: proc(object: ^Object) ---

    @(link_name = "atk_add_global_event_listener")
    add_global_event_listener :: proc(listener: gobj.SignalEmissionHook, event_type: cstring) -> glib.uint_ ---

    @(link_name = "atk_remove_global_event_listener")
    remove_global_event_listener :: proc(listener_id: glib.uint_) ---

    @(link_name = "atk_add_key_event_listener")
    add_key_event_listener :: proc(listener: KeySnoopFunc, data: glib.pointer) -> glib.uint_ ---

    @(link_name = "atk_remove_key_event_listener")
    remove_key_event_listener :: proc(listener_id: glib.uint_) ---

    @(link_name = "atk_get_root")
    get_root :: proc() -> ^Object ---

    @(link_name = "atk_get_focus_object")
    get_focus_object :: proc() -> ^Object ---

    @(link_name = "atk_get_toolkit_name")
    get_toolkit_name :: proc() -> cstring ---

    @(link_name = "atk_get_toolkit_version")
    get_toolkit_version :: proc() -> cstring ---

    @(link_name = "atk_get_version")
    get_version :: proc() -> cstring ---

    @(link_name = "atk_rectangle_get_type")
    rectangle_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_component_get_type")
    component_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_component_add_focus_handler")
    component_add_focus_handler :: proc(component: ^Component, handler: FocusHandler) -> glib.uint_ ---

    @(link_name = "atk_component_contains")
    component_contains :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean ---

    @(link_name = "atk_component_ref_accessible_at_point")
    component_ref_accessible_at_point :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> ^Object ---

    @(link_name = "atk_component_get_extents")
    component_get_extents :: proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coord_type: CoordType) ---

    @(link_name = "atk_component_get_position")
    component_get_position :: proc(component: ^Component, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType) ---

    @(link_name = "atk_component_get_size")
    component_get_size :: proc(component: ^Component, width: ^glib.int_, height: ^glib.int_) ---

    @(link_name = "atk_component_get_layer")
    component_get_layer :: proc(component: ^Component) -> Layer ---

    @(link_name = "atk_component_get_mdi_zorder")
    component_get_mdi_zorder :: proc(component: ^Component) -> glib.int_ ---

    @(link_name = "atk_component_grab_focus")
    component_grab_focus :: proc(component: ^Component) -> glib.boolean ---

    @(link_name = "atk_component_remove_focus_handler")
    component_remove_focus_handler :: proc(component: ^Component, handler_id: glib.uint_) ---

    @(link_name = "atk_component_set_extents")
    component_set_extents :: proc(component: ^Component, x: glib.int_, y: glib.int_, width: glib.int_, height: glib.int_, coord_type: CoordType) -> glib.boolean ---

    @(link_name = "atk_component_set_position")
    component_set_position :: proc(component: ^Component, x: glib.int_, y: glib.int_, coord_type: CoordType) -> glib.boolean ---

    @(link_name = "atk_component_set_size")
    component_set_size :: proc(component: ^Component, width: glib.int_, height: glib.int_) -> glib.boolean ---

    @(link_name = "atk_component_get_alpha")
    component_get_alpha :: proc(component: ^Component) -> glib.double ---

    @(link_name = "atk_component_scroll_to")
    component_scroll_to :: proc(component: ^Component, type: ScrollType) -> glib.boolean ---

    @(link_name = "atk_component_scroll_to_point")
    component_scroll_to_point :: proc(component: ^Component, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean ---

    @(link_name = "atk_document_get_type")
    document_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_document_get_document_type")
    document_get_document_type :: proc(document: ^Document) -> cstring ---

    @(link_name = "atk_document_get_document")
    document_get_document :: proc(document: ^Document) -> glib.pointer ---

    @(link_name = "atk_document_get_locale")
    document_get_locale :: proc(document: ^Document) -> cstring ---

    @(link_name = "atk_document_get_attributes")
    document_get_attributes :: proc(document: ^Document) -> ^AttributeSet ---

    @(link_name = "atk_document_get_attribute_value")
    document_get_attribute_value :: proc(document: ^Document, attribute_name: cstring) -> cstring ---

    @(link_name = "atk_document_set_attribute_value")
    document_set_attribute_value :: proc(document: ^Document, attribute_name: cstring, attribute_value: cstring) -> glib.boolean ---

    @(link_name = "atk_document_get_current_page_number")
    document_get_current_page_number :: proc(document: ^Document) -> glib.int_ ---

    @(link_name = "atk_document_get_page_count")
    document_get_page_count :: proc(document: ^Document) -> glib.int_ ---

    @(link_name = "atk_document_get_text_selections")
    document_get_text_selections :: proc(document: ^Document) -> ^glib.Array ---

    @(link_name = "atk_document_set_text_selections")
    document_set_text_selections :: proc(document: ^Document, selections: ^glib.Array) -> glib.boolean ---

    @(link_name = "atk_text_attribute_register")
    text_attribute_register :: proc(name: cstring) -> TextAttribute ---

    @(link_name = "atk_text_range_get_type")
    text_range_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_get_type")
    text_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_text_get_text")
    text_get_text :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> cstring ---

    @(link_name = "atk_text_get_character_at_offset")
    text_get_character_at_offset :: proc(text: ^Text, offset: glib.int_) -> glib.unichar ---

    @(link_name = "atk_text_get_text_after_offset")
    text_get_text_after_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---

    @(link_name = "atk_text_get_text_at_offset")
    text_get_text_at_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---

    @(link_name = "atk_text_get_text_before_offset")
    text_get_text_before_offset :: proc(text: ^Text, offset: glib.int_, boundary_type: TextBoundary, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---

    @(link_name = "atk_text_get_string_at_offset")
    text_get_string_at_offset :: proc(text: ^Text, offset: glib.int_, granularity: TextGranularity, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---

    @(link_name = "atk_text_get_caret_offset")
    text_get_caret_offset :: proc(text: ^Text) -> glib.int_ ---

    @(link_name = "atk_text_get_character_extents")
    text_get_character_extents :: proc(text: ^Text, offset: glib.int_, x: ^glib.int_, y: ^glib.int_, width: ^glib.int_, height: ^glib.int_, coords: CoordType) ---

    @(link_name = "atk_text_get_run_attributes")
    text_get_run_attributes :: proc(text: ^Text, offset: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> ^AttributeSet ---

    @(link_name = "atk_text_get_default_attributes")
    text_get_default_attributes :: proc(text: ^Text) -> ^AttributeSet ---

    @(link_name = "atk_text_get_character_count")
    text_get_character_count :: proc(text: ^Text) -> glib.int_ ---

    @(link_name = "atk_text_get_offset_at_point")
    text_get_offset_at_point :: proc(text: ^Text, x: glib.int_, y: glib.int_, coords: CoordType) -> glib.int_ ---

    @(link_name = "atk_text_get_n_selections")
    text_get_n_selections :: proc(text: ^Text) -> glib.int_ ---

    @(link_name = "atk_text_get_selection")
    text_get_selection :: proc(text: ^Text, selection_num: glib.int_, start_offset: ^glib.int_, end_offset: ^glib.int_) -> cstring ---

    @(link_name = "atk_text_add_selection")
    text_add_selection :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---

    @(link_name = "atk_text_remove_selection")
    text_remove_selection :: proc(text: ^Text, selection_num: glib.int_) -> glib.boolean ---

    @(link_name = "atk_text_set_selection")
    text_set_selection :: proc(text: ^Text, selection_num: glib.int_, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---

    @(link_name = "atk_text_set_caret_offset")
    text_set_caret_offset :: proc(text: ^Text, offset: glib.int_) -> glib.boolean ---

    @(link_name = "atk_text_get_range_extents")
    text_get_range_extents :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coord_type: CoordType, rect: ^TextRectangle) ---

    @(link_name = "atk_text_get_bounded_ranges")
    text_get_bounded_ranges :: proc(text: ^Text, rect: ^TextRectangle, coord_type: CoordType, x_clip_type: TextClipType, y_clip_type: TextClipType) -> ^^TextRange ---

    @(link_name = "atk_text_free_ranges")
    text_free_ranges :: proc(ranges: [^]^TextRange) ---

    @(link_name = "atk_attribute_set_free")
    attribute_set_free :: proc(attrib_set: ^AttributeSet) ---

    @(link_name = "atk_text_attribute_get_name")
    text_attribute_get_name :: proc(attr: TextAttribute) -> cstring ---

    @(link_name = "atk_text_attribute_for_name")
    text_attribute_for_name :: proc(name: cstring) -> TextAttribute ---

    @(link_name = "atk_text_attribute_get_value")
    text_attribute_get_value :: proc(attr: TextAttribute, index_: glib.int_) -> cstring ---

    @(link_name = "atk_text_scroll_substring_to")
    text_scroll_substring_to :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, type: ScrollType) -> glib.boolean ---

    @(link_name = "atk_text_scroll_substring_to_point")
    text_scroll_substring_to_point :: proc(text: ^Text, start_offset: glib.int_, end_offset: glib.int_, coords: CoordType, x: glib.int_, y: glib.int_) -> glib.boolean ---

    @(link_name = "atk_editable_text_get_type")
    editable_text_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_editable_text_set_run_attributes")
    editable_text_set_run_attributes :: proc(text: ^EditableText, attrib_set: ^AttributeSet, start_offset: glib.int_, end_offset: glib.int_) -> glib.boolean ---

    @(link_name = "atk_editable_text_set_text_contents")
    editable_text_set_text_contents :: proc(text: ^EditableText, string_p: cstring) ---

    @(link_name = "atk_editable_text_insert_text")
    editable_text_insert_text :: proc(text: ^EditableText, string_p: cstring, length: glib.int_, position: ^glib.int_) ---

    @(link_name = "atk_editable_text_copy_text")
    editable_text_copy_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---

    @(link_name = "atk_editable_text_cut_text")
    editable_text_cut_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---

    @(link_name = "atk_editable_text_delete_text")
    editable_text_delete_text :: proc(text: ^EditableText, start_pos: glib.int_, end_pos: glib.int_) ---

    @(link_name = "atk_editable_text_paste_text")
    editable_text_paste_text :: proc(text: ^EditableText, position: glib.int_) ---

    @(link_name = "atk_gobject_accessible_get_type")
    gobject_accessible_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_gobject_accessible_for_object")
    gobject_accessible_for_object :: proc(obj: ^gobj.Object) -> ^Object ---

    @(link_name = "atk_gobject_accessible_get_object")
    gobject_accessible_get_object :: proc(obj: ^GObjectAccessible) -> ^gobj.Object ---

    @(link_name = "atk_hyperlink_get_type")
    hyperlink_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_hyperlink_get_uri")
    hyperlink_get_uri :: proc(link_: ^Hyperlink, i: glib.int_) -> cstring ---

    @(link_name = "atk_hyperlink_get_object")
    hyperlink_get_object :: proc(link_: ^Hyperlink, i: glib.int_) -> ^Object ---

    @(link_name = "atk_hyperlink_get_end_index")
    hyperlink_get_end_index :: proc(link_: ^Hyperlink) -> glib.int_ ---

    @(link_name = "atk_hyperlink_get_start_index")
    hyperlink_get_start_index :: proc(link_: ^Hyperlink) -> glib.int_ ---

    @(link_name = "atk_hyperlink_is_valid")
    hyperlink_is_valid :: proc(link_: ^Hyperlink) -> glib.boolean ---

    @(link_name = "atk_hyperlink_is_inline")
    hyperlink_is_inline :: proc(link_: ^Hyperlink) -> glib.boolean ---

    @(link_name = "atk_hyperlink_get_n_anchors")
    hyperlink_get_n_anchors :: proc(link_: ^Hyperlink) -> glib.int_ ---

    @(link_name = "atk_hyperlink_is_selected_link")
    hyperlink_is_selected_link :: proc(link_: ^Hyperlink) -> glib.boolean ---

    @(link_name = "atk_hyperlink_impl_get_type")
    hyperlink_impl_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_hyperlink_impl_get_hyperlink")
    hyperlink_impl_get_hyperlink :: proc(impl: ^HyperlinkImpl) -> ^Hyperlink ---

    @(link_name = "atk_hypertext_get_type")
    hypertext_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_hypertext_get_link")
    hypertext_get_link :: proc(hypertext: ^Hypertext, link_index: glib.int_) -> ^Hyperlink ---

    @(link_name = "atk_hypertext_get_n_links")
    hypertext_get_n_links :: proc(hypertext: ^Hypertext) -> glib.int_ ---

    @(link_name = "atk_hypertext_get_link_index")
    hypertext_get_link_index :: proc(hypertext: ^Hypertext, char_index: glib.int_) -> glib.int_ ---

    @(link_name = "atk_image_get_type")
    image_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_image_get_image_description")
    image_get_image_description :: proc(image: ^Image) -> cstring ---

    @(link_name = "atk_image_get_image_size")
    image_get_image_size :: proc(image: ^Image, width: ^glib.int_, height: ^glib.int_) ---

    @(link_name = "atk_image_set_image_description")
    image_set_image_description :: proc(image: ^Image, description: cstring) -> glib.boolean ---

    @(link_name = "atk_image_get_image_position")
    image_get_image_position :: proc(image: ^Image, x: ^glib.int_, y: ^glib.int_, coord_type: CoordType) ---

    @(link_name = "atk_image_get_image_locale")
    image_get_image_locale :: proc(image: ^Image) -> cstring ---

    @(link_name = "atk_misc_instance")
    misc_instance: ^Misc

    @(link_name = "atk_misc_get_type")
    misc_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_misc_threads_enter")
    misc_threads_enter :: proc(misc: ^Misc) ---

    @(link_name = "atk_misc_threads_leave")
    misc_threads_leave :: proc(misc: ^Misc) ---

    @(link_name = "atk_misc_get_instance")
    misc_get_instance :: proc() -> ^Misc ---

    @(link_name = "atk_no_op_object_get_type")
    no_op_object_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_no_op_object_new")
    no_op_object_new :: proc(obj: ^gobj.Object) -> ^Object ---

    @(link_name = "atk_object_factory_get_type")
    object_factory_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_object_factory_create_accessible")
    object_factory_create_accessible :: proc(factory: ^ObjectFactory, obj: ^gobj.Object) -> ^Object ---

    @(link_name = "atk_object_factory_invalidate")
    object_factory_invalidate :: proc(factory: ^ObjectFactory) ---

    @(link_name = "atk_object_factory_get_accessible_type")
    object_factory_get_accessible_type :: proc(factory: ^ObjectFactory) -> gobj.Type ---

    @(link_name = "atk_no_op_object_factory_get_type")
    no_op_object_factory_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_no_op_object_factory_new")
    no_op_object_factory_new :: proc() -> ^ObjectFactory ---

    @(link_name = "atk_plug_get_type")
    plug_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_plug_new")
    plug_new :: proc() -> ^Object ---

    @(link_name = "atk_plug_set_child")
    plug_set_child :: proc(plug: ^Plug, child: ^Object) ---

    @(link_name = "atk_plug_get_id")
    plug_get_id :: proc(plug: ^Plug) -> cstring ---

    @(link_name = "atk_range_get_type")
    range_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_range_copy")
    range_copy :: proc(src: ^Range) -> ^Range ---

    @(link_name = "atk_range_free")
    range_free :: proc(range: ^Range) ---

    @(link_name = "atk_range_get_lower_limit")
    range_get_lower_limit :: proc(range: ^Range) -> glib.double ---

    @(link_name = "atk_range_get_upper_limit")
    range_get_upper_limit :: proc(range: ^Range) -> glib.double ---

    @(link_name = "atk_range_get_description")
    range_get_description :: proc(range: ^Range) -> cstring ---

    @(link_name = "atk_range_new")
    range_new :: proc(lower_limit: glib.double, upper_limit: glib.double, description: cstring) -> ^Range ---

    @(link_name = "atk_registry_get_type")
    registry_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_registry_set_factory_type")
    registry_set_factory_type :: proc(registry: ^Registry, type: gobj.Type, factory_type: gobj.Type) ---

    @(link_name = "atk_registry_get_factory_type")
    registry_get_factory_type :: proc(registry: ^Registry, type: gobj.Type) -> gobj.Type ---

    @(link_name = "atk_registry_get_factory")
    registry_get_factory :: proc(registry: ^Registry, type: gobj.Type) -> ^ObjectFactory ---

    @(link_name = "atk_get_default_registry")
    get_default_registry :: proc() -> ^Registry ---

    @(link_name = "atk_relation_get_type")
    relation_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_relation_type_register")
    relation_type_register :: proc(name: cstring) -> RelationType ---

    @(link_name = "atk_relation_type_get_name")
    relation_type_get_name :: proc(type: RelationType) -> cstring ---

    @(link_name = "atk_relation_type_for_name")
    relation_type_for_name :: proc(name: cstring) -> RelationType ---

    @(link_name = "atk_relation_new")
    relation_new :: proc(targets: [^]^Object, n_targets: glib.int_, relationship: RelationType) -> ^Relation ---

    @(link_name = "atk_relation_get_relation_type")
    relation_get_relation_type :: proc(relation: ^Relation) -> RelationType ---

    @(link_name = "atk_relation_get_target")
    relation_get_target :: proc(relation: ^Relation) -> ^glib.PtrArray ---

    @(link_name = "atk_relation_add_target")
    relation_add_target :: proc(relation: ^Relation, target: ^Object) ---

    @(link_name = "atk_relation_remove_target")
    relation_remove_target :: proc(relation: ^Relation, target: ^Object) -> glib.boolean ---

    @(link_name = "atk_relation_set_get_type")
    relation_set_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_relation_set_new")
    relation_set_new :: proc() -> ^RelationSet ---

    @(link_name = "atk_relation_set_contains")
    relation_set_contains :: proc(set: ^RelationSet, relationship: RelationType) -> glib.boolean ---

    @(link_name = "atk_relation_set_contains_target")
    relation_set_contains_target :: proc(set: ^RelationSet, relationship: RelationType, target: ^Object) -> glib.boolean ---

    @(link_name = "atk_relation_set_remove")
    relation_set_remove :: proc(set: ^RelationSet, relation: ^Relation) ---

    @(link_name = "atk_relation_set_add")
    relation_set_add :: proc(set: ^RelationSet, relation: ^Relation) ---

    @(link_name = "atk_relation_set_get_n_relations")
    relation_set_get_n_relations :: proc(set: ^RelationSet) -> glib.int_ ---

    @(link_name = "atk_relation_set_get_relation")
    relation_set_get_relation :: proc(set: ^RelationSet, i: glib.int_) -> ^Relation ---

    @(link_name = "atk_relation_set_get_relation_by_type")
    relation_set_get_relation_by_type :: proc(set: ^RelationSet, relationship: RelationType) -> ^Relation ---

    @(link_name = "atk_relation_set_add_relation_by_type")
    relation_set_add_relation_by_type :: proc(set: ^RelationSet, relationship: RelationType, target: ^Object) ---

    @(link_name = "atk_selection_get_type")
    selection_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_selection_add_selection")
    selection_add_selection :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---

    @(link_name = "atk_selection_clear_selection")
    selection_clear_selection :: proc(selection: ^Selection) -> glib.boolean ---

    @(link_name = "atk_selection_ref_selection")
    selection_ref_selection :: proc(selection: ^Selection, i: glib.int_) -> ^Object ---

    @(link_name = "atk_selection_get_selection_count")
    selection_get_selection_count :: proc(selection: ^Selection) -> glib.int_ ---

    @(link_name = "atk_selection_is_child_selected")
    selection_is_child_selected :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---

    @(link_name = "atk_selection_remove_selection")
    selection_remove_selection :: proc(selection: ^Selection, i: glib.int_) -> glib.boolean ---

    @(link_name = "atk_selection_select_all_selection")
    selection_select_all_selection :: proc(selection: ^Selection) -> glib.boolean ---

    @(link_name = "atk_socket_get_type")
    socket_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_socket_new")
    socket_new :: proc() -> ^Object ---

    @(link_name = "atk_socket_embed")
    socket_embed :: proc(obj: ^Socket, plug_id: cstring) ---

    @(link_name = "atk_socket_is_occupied")
    socket_is_occupied :: proc(obj: ^Socket) -> glib.boolean ---

    @(link_name = "atk_state_set_get_type")
    state_set_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_state_set_new")
    state_set_new :: proc() -> ^StateSet ---

    @(link_name = "atk_state_set_is_empty")
    state_set_is_empty :: proc(set: ^StateSet) -> glib.boolean ---

    @(link_name = "atk_state_set_add_state")
    state_set_add_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---

    @(link_name = "atk_state_set_add_states")
    state_set_add_states :: proc(set: ^StateSet, types: [^]StateType, n_types: glib.int_) ---

    @(link_name = "atk_state_set_clear_states")
    state_set_clear_states :: proc(set: ^StateSet) ---

    @(link_name = "atk_state_set_contains_state")
    state_set_contains_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---

    @(link_name = "atk_state_set_contains_states")
    state_set_contains_states :: proc(set: ^StateSet, types: [^]StateType, n_types: glib.int_) -> glib.boolean ---

    @(link_name = "atk_state_set_remove_state")
    state_set_remove_state :: proc(set: ^StateSet, type: StateType) -> glib.boolean ---

    @(link_name = "atk_state_set_and_sets")
    state_set_and_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---

    @(link_name = "atk_state_set_or_sets")
    state_set_or_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---

    @(link_name = "atk_state_set_xor_sets")
    state_set_xor_sets :: proc(set: ^StateSet, compare_set: ^StateSet) -> ^StateSet ---

    @(link_name = "atk_streamable_content_get_type")
    streamable_content_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_streamable_content_get_n_mime_types")
    streamable_content_get_n_mime_types :: proc(streamable: ^StreamableContent) -> glib.int_ ---

    @(link_name = "atk_streamable_content_get_mime_type")
    streamable_content_get_mime_type :: proc(streamable: ^StreamableContent, i: glib.int_) -> cstring ---

    @(link_name = "atk_streamable_content_get_stream")
    streamable_content_get_stream :: proc(streamable: ^StreamableContent, mime_type: cstring) -> ^glib.IOChannel ---

    @(link_name = "atk_streamable_content_get_uri")
    streamable_content_get_uri :: proc(streamable: ^StreamableContent, mime_type: cstring) -> cstring ---

    @(link_name = "atk_table_get_type")
    table_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_table_ref_at")
    table_ref_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> ^Object ---

    @(link_name = "atk_table_get_index_at")
    table_get_index_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_column_at_index")
    table_get_column_at_index :: proc(table: ^Table, index_: glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_row_at_index")
    table_get_row_at_index :: proc(table: ^Table, index_: glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_n_columns")
    table_get_n_columns :: proc(table: ^Table) -> glib.int_ ---

    @(link_name = "atk_table_get_n_rows")
    table_get_n_rows :: proc(table: ^Table) -> glib.int_ ---

    @(link_name = "atk_table_get_column_extent_at")
    table_get_column_extent_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_row_extent_at")
    table_get_row_extent_at :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_caption")
    table_get_caption :: proc(table: ^Table) -> ^Object ---

    @(link_name = "atk_table_get_column_description")
    table_get_column_description :: proc(table: ^Table, column: glib.int_) -> cstring ---

    @(link_name = "atk_table_get_column_header")
    table_get_column_header :: proc(table: ^Table, column: glib.int_) -> ^Object ---

    @(link_name = "atk_table_get_row_description")
    table_get_row_description :: proc(table: ^Table, row: glib.int_) -> cstring ---

    @(link_name = "atk_table_get_row_header")
    table_get_row_header :: proc(table: ^Table, row: glib.int_) -> ^Object ---

    @(link_name = "atk_table_get_summary")
    table_get_summary :: proc(table: ^Table) -> ^Object ---

    @(link_name = "atk_table_set_caption")
    table_set_caption :: proc(table: ^Table, caption: ^Object) ---

    @(link_name = "atk_table_set_column_description")
    table_set_column_description :: proc(table: ^Table, column: glib.int_, description: cstring) ---

    @(link_name = "atk_table_set_column_header")
    table_set_column_header :: proc(table: ^Table, column: glib.int_, header: ^Object) ---

    @(link_name = "atk_table_set_row_description")
    table_set_row_description :: proc(table: ^Table, row: glib.int_, description: cstring) ---

    @(link_name = "atk_table_set_row_header")
    table_set_row_header :: proc(table: ^Table, row: glib.int_, header: ^Object) ---

    @(link_name = "atk_table_set_summary")
    table_set_summary :: proc(table: ^Table, accessible: ^Object) ---

    @(link_name = "atk_table_get_selected_columns")
    table_get_selected_columns :: proc(table: ^Table, selected: ^^glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_get_selected_rows")
    table_get_selected_rows :: proc(table: ^Table, selected: ^^glib.int_) -> glib.int_ ---

    @(link_name = "atk_table_is_column_selected")
    table_is_column_selected :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_is_row_selected")
    table_is_row_selected :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_is_selected")
    table_is_selected :: proc(table: ^Table, row: glib.int_, column: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_add_row_selection")
    table_add_row_selection :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_remove_row_selection")
    table_remove_row_selection :: proc(table: ^Table, row: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_add_column_selection")
    table_add_column_selection :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_remove_column_selection")
    table_remove_column_selection :: proc(table: ^Table, column: glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_cell_get_type")
    table_cell_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_table_cell_get_column_span")
    table_cell_get_column_span :: proc(cell: ^TableCell) -> glib.int_ ---

    @(link_name = "atk_table_cell_get_column_header_cells")
    table_cell_get_column_header_cells :: proc(cell: ^TableCell) -> ^glib.PtrArray ---

    @(link_name = "atk_table_cell_get_position")
    table_cell_get_position :: proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_cell_get_row_span")
    table_cell_get_row_span :: proc(cell: ^TableCell) -> glib.int_ ---

    @(link_name = "atk_table_cell_get_row_header_cells")
    table_cell_get_row_header_cells :: proc(cell: ^TableCell) -> ^glib.PtrArray ---

    @(link_name = "atk_table_cell_get_row_column_span")
    table_cell_get_row_column_span :: proc(cell: ^TableCell, row: ^glib.int_, column: ^glib.int_, row_span: ^glib.int_, column_span: ^glib.int_) -> glib.boolean ---

    @(link_name = "atk_table_cell_get_table")
    table_cell_get_table :: proc(cell: ^TableCell) -> ^Object ---

    @(link_name = "atk_value_get_type")
    value_get_type :: proc() -> gobj.Type ---

    @(link_name = "atk_value_get_current_value")
    value_get_current_value :: proc(obj: ^Value, value: ^gobj.Value) ---

    @(link_name = "atk_value_get_maximum_value")
    value_get_maximum_value :: proc(obj: ^Value, value: ^gobj.Value) ---

    @(link_name = "atk_value_get_minimum_value")
    value_get_minimum_value :: proc(obj: ^Value, value: ^gobj.Value) ---

    @(link_name = "atk_value_set_current_value")
    value_set_current_value :: proc(obj: ^Value, value: ^gobj.Value) -> glib.boolean ---

    @(link_name = "atk_value_get_minimum_increment")
    value_get_minimum_increment :: proc(obj: ^Value, value: ^gobj.Value) ---

    @(link_name = "atk_value_get_value_and_text")
    value_get_value_and_text :: proc(obj: ^Value, value: ^glib.double, text: ^cstring) ---

    @(link_name = "atk_value_get_range")
    value_get_range :: proc(obj: ^Value) -> ^Range ---

    @(link_name = "atk_value_get_increment")
    value_get_increment :: proc(obj: ^Value) -> glib.double ---

    @(link_name = "atk_value_get_sub_ranges")
    value_get_sub_ranges :: proc(obj: ^Value) -> ^glib.SList ---

    @(link_name = "atk_value_set_value")
    value_set_value :: proc(obj: ^Value, new_value: glib.double) ---

    @(link_name = "atk_value_type_get_name")
    value_type_get_name :: proc(value_type: ValueType) -> cstring ---

    @(link_name = "atk_value_type_get_localized_name")
    value_type_get_localized_name :: proc(value_type: ValueType) -> cstring ---

    @(link_name = "atk_window_get_type")
    window_get_type :: proc() -> gobj.Type ---

}

foreign import atk_runic "system:atk-1.0"

