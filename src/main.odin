package main

import "core:fmt"
import "greeting"

main :: proc() {
	greeting_message := greeting.get_greeting_message()
	fmt.println(greeting_message)
}
