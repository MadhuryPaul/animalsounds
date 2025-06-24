## code to prepare `farm_animals` dataset goes here

animals <- c("cow", "horse", "chicken")
sounds <- c("moo", "neigh", "cluck")

farm_animals <- data.frame(animals = animals, sounds = sounds)

usethis::use_data(farm_animals, overwrite = TRUE)
