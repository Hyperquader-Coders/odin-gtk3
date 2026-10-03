# Architecture — odin-gtk3

## Generation

`make generate` runs runic over each package's `rune.yml`. The headers are /usr/include/gtk-3.0 and /usr/include/atk-1.0 (libgtk-3-dev, libatk1.0-dev).
`scripts/postprocess.sh` then rewrites what runic gets wrong ([PATCHED.md](PATCHED.md)).
The output is committed, so consumers need neither runic nor the headers to build.

## Patches

Where runic gets a signature wrong, the fix is made by hand, listed in
[PATCHED.md](PATCHED.md), and pinned in `<pkg>/patched.odin` by a typed variable. A
regeneration that drops a patch then fails to compile.

## Collections

The collection `gtk3` points at this repo's root. Packages import their siblings and the
bindings below them through collections, never by relative path.

![dependency graph](../diags/odin-gtk3.svg)
