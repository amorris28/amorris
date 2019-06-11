#' Rarefy mean
#'
#' \code{rarefy_mean} rarefies a community matrix \code{n} times and averages
#' the outcomes.
#' 
#' @param comm Community matrix
#' @param sample Sample size to rarefy to based on the minimum row sum from
#'     the community matrix
#' @param n Number of iterations to run \code{rrarefy}
#' @param remove.singlets Boolean to determine whether to remove singletons
#' @param digits Boolean to determine whether to include decimals 
#'
#' @return \code{matrix}
#'
#' @importFrom vegan rrarefy
#'
#' @export
rarefy_mean <- function(comm, sample = min(rowSums(comm)), n = 10, remove.singlets = TRUE, digits = FALSE) {
#  require(vegan)
  if (remove.singlets) {
    comm <- comm[, which(colSums(comm) > 1)]
  }
  i <- 0
  while (i != n) {
    cat(paste("..", i, sep = ""))
    if (!exists("comm.r.sum")) {
      comm.r.sum <- rrarefy(comm, sample)
      i <- i + 1
    } else {
      comm.r.sum <- comm.r.sum + rrarefy(comm, sample)
      if (i%%10 == 0) {
        cat("\n")
      }
      i <- i + 1
    }
  }
  comm.rar <- comm.r.sum/n
  if (digits) {
    comm.rar <- round(comm.rar, digits = digits)
  }
  cat("\n")
  comm.rar
}

