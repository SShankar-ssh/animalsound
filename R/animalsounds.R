#' Title Test package Animal sounds
#'
#' @param animal A character variable giving names of animals
#' @param sound A character variable giving corresponding sounds animal make
#' @param country A character variable giving information on the country
#'
#' @return A vector with the values pasted together
#' @export
#'
#' @examples
#'
#' animalsounds("dog","France","ouah ouah")
#'

animalsounds <- function(animal, country, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, "in ", country, "goes ", sound, "!")
}


