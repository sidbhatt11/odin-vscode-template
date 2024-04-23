package greeting

import "core:fmt"
import "core:strings"
import "core:testing"

/**
	I know this is idiotic; this is just a dirty/starter project
	for demonstration purposes. 
	
	No one is shipping this to production. Relax. Turn off the caps lock.

	If the file name has a _test suffix, it is only picked up during testing.

	%q is how you safely format and escape strings for printing:
	@see https://github.com/odin-lang/Odin/blob/master/core/fmt/doc.odin

	string comparison docs:
	@see https://pkg.odin-lang.org/core/strings/#compare
*/

@(test)
test_get_greeting_message :: proc(t: ^testing.T) {
	expected_greeting_message := greeting_message
	actual_greeting_message := get_greeting_message()

	testing.expect(
		t, // This is the pointer to the struct that keeps track of all the tests
		strings.compare(expected_greeting_message, actual_greeting_message) == 0,
		fmt.tprintf(
			"Expected greeting message %q got %q instead",
			expected_greeting_message,
			actual_greeting_message,
		),
	)
}
