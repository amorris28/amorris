#' Calculate mtry for randomForest
#'
#' Calculates mtry, the number of variables to try at each split, from
#' a \code{data.frame} for \code{randomForest}.
#'
#' @param df \code{data.frame}
#'
#' @return Single numeric value for mtry
#'
#' @examples
#' data(iris)
#' mtry <- mtry_finder(iris)
#'
#' @export
mtry_finder <- function(df) sqrt(length(df) - 1)
