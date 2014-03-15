#' Determines the number of factor levels of a factor type vector
#' that are actually occuring in a given vector.
#'
#' @param x [\code{vector}]\cr
#'   Source vector of factors.
#' @return [\code{character}]
#'   Character vector of used levels.
#' @export
usedFactors = function(x) {
  stopifnot(is.factor(x))
  return(intersect(levels(x), unique(x)))
}
