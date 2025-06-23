#' Print the Sounds that Animals Make
#'
#' Print the sound that an animal makes in the console
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
	stopifnot(is.character(animal) & length(animal) == 1)
	stopifnot(is.character(sound) & length(sound) == 1)
	paste0("The ", animal, " says ", sound, "!")
}
