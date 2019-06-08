#' Calculate water-filled pore space
#'
#' \code{calc_wfps} calculates water-filled pore space from gravimetric water content,
#' bulk density, and particle density. 
#'
#' @param Mois_cont vector of gravimetric water contents
#' @param Bulk_dens vector of bulk densities
#' @param Pd vector of particle densities
#'
#' @return Vector length \code{Mois_cont} of WFPS
#'
#' @examples
#' gwc <- 0.60
#' Bd <- 1.0 # Low bulk density (g/cm3)
#' Pd <- 2.65 # Typical particle density for mineral soil (g/cm3)
#' wfps <- calc_wfps(gwc, Bd, Pd)
#'
#' @references Linn, D. M. and Doran, J. W. (1984), \emph{Effect of
#' Water-Filled Pore Space on Carbon Dioxide and Nitrous Oxide Production in
#' Tilled and Nontilled Soils} Soil Sci Soc Am J 48(6), 1267-1272
#'
#' @export
# Calculate WFPS from gravimetric water content
calc_wfps <- function(Mois_cont, Bulk_dens, Pd) {(Bulk_dens * Mois_cont)/((1-(Bulk_dens/Pd))*100)}
