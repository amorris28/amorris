#' Reverse a string
#'
#' \code{reverse_str} takes a vector of strings and returns those strings backwards
#'
#' @param string vector of strings to be reversed
#'
#' @return Vector of strings the same length as \code{string}
#'
#' @examples
#' x <- 'abcd'
#' reverse_str(x)
#'
#' @export
reverse_str <- function(string) sapply(lapply(strsplit(string, NULL), rev), paste, collapse = "")
