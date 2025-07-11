% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animal_sounds.R
\name{animal_sounds}
\alias{animal_sounds}
\title{Print the Sounds that Animals Make}
\usage{
animal_sounds(animal, sound = NULL)
}
\arguments{
\item{animal}{A string - the name of an animal}

\item{sound}{A string - the sound the animal makes}
}
\value{
A string of the form "The \{animal\} says \{sound\}!"
}
\description{
Print the sound that an animal makes in the console.
}
\details{
Is a wrapper to \code{\link[=paste0]{paste0()}}. This is a \emph{silly} function in a \strong{toy package}.
}
\examples{
animal_sounds("dog", "woof")
}
