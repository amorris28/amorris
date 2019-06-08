#' Calculate standard error
#'
#' Calculates standard error based on the standard deviation and number of elements
#'
#' @param x vector of numeric values
#'
#' @return Single numeric value of the standard error
#'
#' @examples
#' x <- rnorm(10, 1, 1)
#' se(x)
#'
#' @importFrom stats sd
#'
#' @export
se <- function(x) {return(sd(x)/sqrt(length(x)))}
