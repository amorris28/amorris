#' Conditional mutate
#'
#' \code{mutate_cond} mutates the \code{data.frame} only on the rows that
#' satisfy the condition.
#' 
#' @param .data \code{data.frame}
#' @param condition expression with the condition to be evaluated
#' @param ... arguments passed to \code{mutate}
#' @param envir environment inherited from \code{parent.frame()}
#'
#' @return \code{data.frame}
#' @importFrom dplyr mutate
#' @importFrom magrittr %>%
#'
#' @examples
#' require(dplyr)
#' require(magrittr)
#' data(iris)
#' iris %>%
#'    mutate(aux = 0) %>%
#'    mutate_cond(Petal.Length > 1.3,aux = 3)
#'
#' @export
mutate_cond <- function(.data, condition, ..., envir = parent.frame()) {
  condition <- eval(substitute(condition), .data, envir)
  .data[condition, ] <- .data[condition, ] %>% mutate(...)
  .data
}
