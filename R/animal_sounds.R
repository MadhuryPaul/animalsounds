#' Print the Sounds that Animals Make
#'
#' Print the sound that an animal makes in the console.
#'
#' Is a wrapper to [paste0()]. This is a *silly* function in a **toy package**.
#'
#' @param animal A string - the name of an animal
#' @param sound A string - the sound the animal makes
#'
#' @returns A string of the form "The \{animal\} says \{sound\}!"
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
animal_sounds <- function(animal, sound) {

	if (!rlang::is_character(animal, n = 1)) {
		cli::cli_abort(
			c("{.var animal} must be a single string!",
			  "i" = "It was {.type {animal}} of length {length(animal)} instead.",
			  "i" = "You typed {animal}."),
			class = "error_not_single_string"
		)
	}

	if (!rlang::is_character(sound, n = 1)) {
		cli::cli_abort(
			c("{.var sound} must be a {.cls character} vector of length 1!",
			  "i" = "It was {.type {sound}} of length {length(sound)} instead."),
			class = "error_not_single_string"
		)
	}

	paste0("The ", animal, " says ", sound, "!")
}

check_arg <- function(arg) {
	NULL
}
