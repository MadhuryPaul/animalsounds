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
animal_sounds <- function(animal, sound = NULL) {

	check_arg(animal)

	if (is.null(sound)){
		return(paste0("The ", animal, " makes no sound."))
	}

	check_arg(sound)

	paste0("The ", animal, " goes ", sound, "!")
}

check_arg <- function(arg, n = 1) {
	if (!rlang::is_character(arg, n = n)) {
		cli::cli_abort(
			c("{.var {rlang::caller_arg(arg)}} must be a single string!",
			  "i" = "It was {.type {arg}} of length {length(arg)} instead.",
			  "i" = "You typed {arg}."),
			call = rlang::caller_env(),
			class = "error_not_single_string"
		)
	}
}
