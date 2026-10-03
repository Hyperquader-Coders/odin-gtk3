# odin-gtk3 cheat sheet

One screen per job: the calls a program makes, in the order it makes them, and the few rules
worth remembering. Every `gtk3.` and `atk.` name here is a public declaration in
[API.md](API.md), and `make lint` fails when one is not. GTK 3's own documentation is the
reference; this is the idiom layer over the generated names. Suite programs that still use GTK 3
(Copal's About window, Amberlin's) show a window, a dialog and a few signals, and nothing more.

Conventions that hold everywhere: `import "gtk3:gtk3"` (and `"gtk3:atk"`) beside `glib:glib` and
`glib:gobject` ([Use](../README.md#use)); the Gtk prefix is trimmed and the Gdk prefix is kept,
so `window_new` and `gdk_window_get_origin`, `Window` and `GdkWindow`
([DECISIONS §3](DECISIONS.md#3-gtk-and-gdk-share-one-package-gtk-is-trimmed-and-gdk-is-not));
a `gboolean` is `glib.boolean`; flag sets are `bit_set`s. There are no `FOO(w)` casts: a widget
constructor returns `^gtk3.Widget` and a subclass is reached by a plain cast,
`(^gtk3.Window)(w)`. A callback is a `proc "c"`: its first line is `context = app_ctx`, the
`runtime.Context` saved at startup.

## gtk3:Window — init, a window, its contents, the loop

```odin
import "glib:glib"
import "glib:gobject"
import "gtk3:gtk3"

if !bool(gtk3.init_check(nil, nil)) { return }           // false when there is no display; gtk3.init aborts instead

widget := gtk3.window_new(.WINDOW_TOPLEVEL)               // ^gtk3.Widget
win := (^gtk3.Window)(widget)
gtk3.window_set_title(win, "Example")
gtk3.window_set_default_size(win, 480, 320)
gtk3.window_set_position(win, .WIN_POS_CENTER)
gtk3.window_set_icon_name(win, "example")

box := gtk3.box_new(.VERTICAL, 6)
gtk3.container_add((^gtk3.Container)(widget), box)
gtk3.box_pack_start((^gtk3.Box)(box), gtk3.label_new("hello"), false, true, 0)   // expand, fill, padding
gobject.signal_connect(widget, "delete-event", on_delete, nil)
gtk3.widget_show_all(widget)
gtk3.window_present(win)

css := gtk3.css_provider_new()
err: ^glib.Error
gtk3.css_provider_load_from_data(css, "label { color: #c80; }", -1, &err)
gtk3.style_context_add_provider_for_screen(gtk3.gdk_screen_get_default(), (^gtk3.StyleProvider)(css), gtk3.STYLE_PROVIDER_PRIORITY_APPLICATION)

gtk3.gtk_main()                                           // or iterate the GLib main context yourself
for gtk3.events_pending() { gtk3.main_iteration_do(false) }
glib.main_context_iteration(nil, false)                   // the same, when your loop owns the GLib context
gtk3.widget_destroy(widget)

on_delete :: proc "c" (w: ^gtk3.Widget, event: ^gtk3.GdkEvent, data: rawptr) -> glib.boolean {
	context = app_ctx
	return false                                          // true (GDK_EVENT_STOP) keeps the window open
}
```

| remember | |
|---|---|
| `gtk3.init_check(nil, nil)` once, before the first widget | it is the test for a display, and it must succeed before any widget is made |
| `gtk_main` keeps its C name, `gtk3.gtk_main` | trimmed it would be `main`, which Odin reserves; `gtk_true` and `gtk_false` likewise ([PATCHED.md](PATCHED.md#gtk3)) |
| A program with its own frame loop never calls `gtk_main` | it iterates the GLib main context, which dispatches GTK's events beside its own sources |
| `window_new` returns the widget, and `widget_show_all` takes the widget | `window_present` takes the `^gtk3.Window`; `destroy` takes the widget |
| A `GtkWindow` is owned by GTK until `widget_destroy` | there is no `object_unref` for a top-level |

## gtk3:AboutDialog — the one dialog suite programs use

```odin
import "glib:glib"
import "glib:gobject"
import "gtk3:gtk3"

d := gtk3.about_dialog_new()                              // ^gtk3.Widget
about := (^gtk3.AboutDialog)(d)
win := (^gtk3.Window)(d)
gtk3.about_dialog_set_program_name(about, "Example")
gtk3.about_dialog_set_version(about, "1.0")
gtk3.about_dialog_set_copyright(about, "Copyright © 2025 Name")
gtk3.about_dialog_set_license(about, "MIT")
gtk3.about_dialog_set_wrap_license(about, true)
gtk3.about_dialog_set_website(about, "https://example.org")
gtk3.about_dialog_set_website_label(about, "Project page")
gtk3.about_dialog_set_logo_icon_name(about, "example")
comments: cstring = "What it is."
gtk3.about_dialog_set_comments(about, ([^]glib.char)(rawptr(comments)))   // typed [^]char: cast the cstring

gtk3.window_set_title(win, "About Example")
gtk3.window_set_transient_for(win, (^gtk3.Window)(parent))   // nil for none
gobject.signal_connect(d, "response", on_response, nil)
gtk3.widget_show_all(d)
gtk3.window_present(win)

on_response :: proc "c" (dlg: ^gtk3.Widget, response: i32, data: rawptr) {
	context = app_ctx
	gtk3.widget_destroy(dlg)                              // every response closes it: Close, Esc, the title bar
}
```

| remember | |
|---|---|
| A dialog is not blocking unless you call `dialog_run` | `"response"` plus `widget_destroy` keeps the caller's loop running |
| Most `gchar *` parameters are `cstring`; one with an array or out-parameter can still be `[^]glib.char` | cast with `([^]glib.char)(rawptr(s))`; the compiler names the parameter |
| Keep the dialog pointer in a variable while it is open | a second request presents the one that exists |
| The response id is the `gtk3.ResponseType` value | `.RESPONSE_CLOSE` is `-7`; the signal's `response: i32` compares with `i32(gtk3.ResponseType.RESPONSE_CLOSE)` |

## gtk3:Events — handlers, event structs, modifiers

```odin
import "glib:glib"
import "glib:gobject"
import "gtk3:gtk3"

gtk3.widget_add_events(widget, transmute(i32)gtk3.GdkEventMask{.KEY_PRESS_MASK, .BUTTON_PRESS_MASK, .SCROLL_MASK})
gtk3.widget_set_can_focus(widget, true)
gobject.signal_connect(widget, "key-press-event", on_key, nil)
gobject.signal_connect(widget, "button-press-event", on_button, nil)
gobject.signal_connect(widget, "scroll-event", on_scroll, nil)

on_key :: proc "c" (w: ^gtk3.Widget, ev: ^gtk3.GdkEventKey, data: rawptr) -> glib.boolean {
	context = app_ctx
	if ev.keyval == gtk3.GDK_KEY_Escape { return gtk3.GDK_EVENT_STOP != 0 }
	if .CONTROL_MASK in ev.state && ev.keyval == gtk3.GDK_KEY_a { return true }
	if ev.is_modifier != 0 { return false }                // a bit field, declared by hand in hand.odin
	name := gtk3.gdk_keyval_name(ev.keyval)                // borrowed
	return false                                           // false: let the widget have the key
}

on_button :: proc "c" (w: ^gtk3.Widget, ev: ^gtk3.GdkEventButton, data: rawptr) -> glib.boolean {
	context = app_ctx
	double := ev.type == .GDK_2BUTTON_PRESS
	if ev.button == gtk3.GDK_BUTTON_PRIMARY && !(.SHIFT_MASK in ev.state) { _ = double; _ = ev.x; _ = ev.y }
	return false
}

on_scroll :: proc "c" (w: ^gtk3.Widget, ev: ^gtk3.GdkEventScroll, data: rawptr) -> glib.boolean {
	context = app_ctx
	if ev.direction == .GDK_SCROLL_SMOOTH && ev.is_stop == 0 { _ = ev.delta_y }
	return false
}

key: u32
mods: gtk3.GdkModifierType
gtk3.accelerator_parse("<Control>s", &key, &mods)         // key and mods of an accelerator string
label := gtk3.accelerator_get_label(key, mods)            // "Ctrl+S"; the caller frees it
```

| remember | |
|---|---|
| A handler's second parameter is the event struct of its signal | `GdkEventKey`, `GdkEventButton`, `GdkEventMotion`, `GdkEventScroll`; the `GdkEvent` union holds all of them |
| Return `GDK_EVENT_STOP` (true) when you used the event, `GDK_EVENT_PROPAGATE` (false) when you did not | |
| `state` is a `GdkModifierType` set: test with `in`, build with `{.SHIFT_MASK}` | the member names have `GDK_` stripped; composites like `gtk3.GDK_MODIFIER_MASK` are constants ([DECISIONS §8](DECISIONS.md#8-flag-enums-are-bit_sets-chosen-by-a-list)) |
| `widget_add_events` takes an `int`, not the set | `transmute(i32)` of a `GdkEventMask` literal; `GdkEventType` and `GdkScrollDirection` members keep `GDK_` |
| The structs with bit fields are written by hand, so `ev.is_modifier` and `ev.is_stop` read and write like any field | `GdkEventKey` and `GdkEventScroll` are in `hand.odin` ([PATCHED.md](PATCHED.md#gtk3)) |

## gtk3:Text — structs with bit fields

```odin
import "gtk3:gtk3"

attrs := gtk3.text_view_get_default_attributes((^gtk3.TextView)(view))   // a copy: yours to release
defer gtk3.text_attributes_unref(attrs)
editable := attrs.editable != 0                           // a one-bit field of TextAttributes
hidden := attrs.invisible != 0
line := attrs.appearance.underline                        // TextAppearance: a four-bit field, a pango underline value
margin := attrs.left_margin                               // the plain fields beside them are ordinary

fresh := gtk3.text_attributes_new()                       // refcount 1
fresh.editable = 1
fresh.appearance.strikethrough = 1
gtk3.text_attributes_unref(fresh)
```

| remember | |
|---|---|
| `TextAttributes`, `TextAppearance`, `BindingSet`, `BindingEntry`, `GdkEventKey` and `GdkEventScroll` are declared by hand | their bit fields are Odin `bit_field`s whose type is `glib.uint_`: compare with `!= 0` or assign `1` |
| `RcStyle`, `ContainerClass`, `MenuShellClass`, `MenuItemClass`, `TableChild` and `TableRowCol` are the C size of opaque bytes | their fields are not reachable, and a widget subclass cannot override those vfuncs from Odin |
| A regeneration that emits one of the hand-written names fails to compile | the hand-written file is the only declaration ([PATCHED.md](PATCHED.md#gtk3)) |
| `text_attributes_unref` takes a `[^]TextAttributes` where C has a `TextAttributes *` | a `^TextAttributes` converts; so do the other `[^]T` parameters |

## atk:Object — what a screen reader hears

```odin
import "gtk3:atk"
import "gtk3:gtk3"

acc := gtk3.widget_get_accessible(widget)                 // ^atk.Object, borrowed from the widget
atk.object_set_name(acc, "Search")
atk.object_set_description(acc, "Filters the list as you type")
atk.object_set_role(acc, .TEXT)                           // an atk.Role; the widget's own is usually right
name := atk.object_get_name(acc)                          // borrowed
```

| remember | |
|---|---|
| `atk` is its own package, imported as `gtk3:atk` | `gtk3` imports it; a program that touches accessibility adds the second import ([DECISIONS §4](DECISIONS.md#4-atk-is-its-own-package)) |
| `widget_get_accessible` returns a borrowed `^atk.Object` | do not unref it |
| `atk.Object` is not `gobject.Object`; the two are separate packages' types | pass `^atk.Object` to `atk.` procedures only |
