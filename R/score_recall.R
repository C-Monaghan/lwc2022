#' Score Word Recall Task
#'
#' This function scores a word recall task where respondents are given 1 for a correct recall
#' and 0 for an incorrect recall. Missing values (NA) are retained as NA in the output.
#'
#' @param x A numeric vector representing respondents' word recall responses.
#'   Specific numeric codes are used to define incorrect responses.
#'
#' @return A numeric vector where:
#' \itemize{
#'   \item \code{1}: Correct recall.
#'   \item \code{0}: Incorrect recall (based on specific codes).
#'   \item \code{NA}: If the original value was missing, it remains NA.
#' }
#'
#' @details
#' The function assigns a score of 1 for a correct word recall. Incorrect recall is determined
#' by specific numeric codes (51 to 67, 96, 98, and 99) and assigned a score of 0.
#' Any NA values in the input will remain NA in the output.
#'
#' @examples
#' responses <- c(53, 62, 100, NA, 66)
#' score_recall(responses)
#'
#' @export
score_recall <- function(x) {
  ifelse(is.na(x), NA, ifelse(x %in% c(51:67, 96, 98, 99), 0, 1))
}
