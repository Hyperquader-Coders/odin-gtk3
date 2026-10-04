package atk

import glib "glib:glib"

// Single-object parameters: the C header passes one `T *`, so the parameter is `^T`, not the
// `[^]T` runic writes for a name ending in "s" (scripts/single-object-params.*.txt). One pin per
// type; a regeneration that brings `[^]T` back fails to compile here.

@(private = "file")
patched_document_set_text_selections_single_object: proc "c" (_: ^Document, _: ^glib.Array) -> glib.boolean = document_set_text_selections
