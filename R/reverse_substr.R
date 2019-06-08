#' Backwards substring
#'
#' \code{reverse_substr} performs \code{substr} from back to front
#'
#' @param string vector of strings to be substringed
#' @param start starting position (from end of string)
#' @param stop stopping position (from end of string)
#'
#' @return Vector of strings the same length as \code{string}
#'
#' @examples
#' x <- 'abcd'
#' reverse_substr(x, 1, 3)
#'
#' @export
reverse_substr <- function(string, start, stop) reverse_str(substr(reverse_str(string), start, stop))
