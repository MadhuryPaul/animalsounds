test_that("animal_sounds produces expected strings", {
	dog_woof <- animal_sounds("dog", "woof")
	expect_equal(dog_woof, "The dog goes woof!")
	expect_equal(animal_sounds("cat", "miaow"), "The cat goes miaow!")
	giraffe <- animal_sounds("giraffe")
	expect_equal(giraffe,
				 "The giraffe makes no sound.")
})

test_that("handles invalid inputs", {
	expect_error(animal_sounds("dog", c("woof", "bow wow wow")),
				 class = "error_not_single_string")
	expect_error(animal_sounds("cat", factor(c("miaow"))),
				 class = "error_not_single_string")
})

test_that("error message for invalid input", {
	expect_snapshot(animal_sounds("dog", c("woof", "bow wow wow")),
					error = TRUE)
})
