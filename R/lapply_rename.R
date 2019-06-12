#' \code{lapply} and rename list elements
#'
#' \code{lapplyWithRename} works the same as \code{lapply} except it renames
#' the elements of the output with the names of the elements of the input
#'
#' @param ... Arguments passed to lapply
#'
#' @return \code{list} with elements named bast on the elements of
#'      the first argument to \code{lapplyWithRename}
#'
#' @examples
#' f <- function(x) structure(x, .Names = paste("Name", x))
#' L <- list(a="A", b="B")
#' lapplyWithRename(L, f) 
#'
#' @export
lapplyWithRename <- function(...) {
        x <- lapply(...)
        names(x) <- sapply(x, names)
        lapply(x, function(x) { names(x) <- NULL; x })
} 
