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
#' animalsounds("dog","ouah ouah")
#'

#animalsounds <- function(animal, country, sound) {
#  stopifnot(is.character(animal) & length(animal) == 1)
#  stopifnot(is.character(sound) & length(sound) == 1)
#  paste0("The ", animal, "in ", country, "goes ", sound, "!")
#}
#

animalsounds <- function(animal, sound) {

  if (!rlang::is_character(animal, 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
                   "i" = "It was {.type {animal}} of length {length(animal)} instead."),
    class = "error_not_single_string"
    )
  }

  if (is.null(sound)){
    return(paste0("The ", animal, " makes no sound."))
  }

  if (!rlang::is_character(sound, 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
    "i" = "It was {.type {sound}} of length {length(sound)} instead."),
class = "error_not_single_string"
  )
  }

  paste0("The ", animal, " goes ", sound, "!")
}

check_org <- function(arg) {
  NULL
}

