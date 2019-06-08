#' Calculate root mean squared error
#'
#' Calculates root mean squared error from observed and predicted values from a model
#'
#' @param observed vector of observed numeric response values
#'
#' @param predicted vector of numeric values output from predict() or similar
#'
#' @return Single numeric value of the root mean squared error
#'
#' @examples
#' require(stats)
#' x <- rnorm(10, 1, 1)
#' y <- rnorm(10, x * 0.5, 1)
#' fit <- lm(y ~ x)
#' pred_y <- predict(fit)
#' rmse(y, pred_y)
#'
#' @import stats
#'
#' @export
rmse <- function(observed, predicted) {
  sqrt(((sum(observed - predicted)^2)/length(observed)))
}
