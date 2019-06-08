#' Filter by \%notin\% similar to \%in\%
#'
#' \code{\%notin\%} returns a logical vector indicating \code{TRUE} if there is
#' not a match for its left operand
#'
#' @param x vector: the values to be matched
#'
#' @param y vector: the values to be matched against
#'
#' @return A vector of the same length as x.
#'
#' @examples
#' 1:10 %notin% c(1,3,5,9)
#'
#' @export
'%notin%' <- function(x,y)!('%in%'(x,y))
