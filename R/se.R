#' Calculate standard error
#'
#' Calculates standard error based on the standard deviation and number of elements
#'
#' @param x vector of numeric values
#' @param na.rm whether or not to remove NAs, default is FALSE.
#' @return Single numeric value of the standard error
#'
#' @examples
#' x <- rnorm(10, 1, 1)
#' se(x)
#'
#' @importFrom stats sd
#'
#' @export
se <- function(x, na.rm = FALSE){
  sqrt(var(if (is.vector(x) || is.factor(x)) x else as.double(x), 
    na.rm = na.rm)) / sqrt(length(if (na.rm == TRUE) na.omit(x) else x))
}
