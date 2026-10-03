#+test
package atk

import "core:strings"
import "core:testing"

// ATK version recorded in README.md: "**Bound ATK version:** X.Y.Z".
README :: #load("../README.md", string)

bound_version :: proc() -> (major, minor, micro: int, ok: bool) {
    marker :: "**Bound ATK version:** "
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
    testing.expect(t, ok, "README.md has no '**Bound ATK version:** X.Y.Z'")
    testing.expect_value(t, major, MAJOR_VERSION)
    testing.expect_value(t, minor, MINOR_VERSION)
    testing.expect_value(t, micro, MICRO_VERSION)
}

@(test)
test_loaded_library_matches_the_headers :: proc(t: ^testing.T) {
    testing.expect_value(t, int(get_major_version()), MAJOR_VERSION)
    testing.expect_value(t, int(get_minor_version()), MINOR_VERSION)
    testing.expect_value(t, int(get_micro_version()), MICRO_VERSION)
}

@(test)
test_role_and_state_names :: proc(t: ^testing.T) {
    testing.expect_value(t, string(role_get_name(.PUSH_BUTTON)), "push button")
    testing.expect_value(t, string(state_type_get_name(.STATE_FOCUSED)), "focused")
    testing.expect_value(t, state_type_for_name("focused"), StateType.STATE_FOCUSED)
}

@(test)
test_type_names :: proc(t: ^testing.T) {
    testing.expect(t, TYPE_OBJECT() != 0, "atk_object_get_type returned 0")
    testing.expect(t, TYPE_STATE_SET() != TYPE_OBJECT(), "types are not distinct")
}
