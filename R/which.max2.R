#' More conventient function to get the index of the minimal index in a numeric vector.
#' (base::which.min only returns the first position of the minimum value).
#'
#' @param x [\code{vector}]\cr
#'   Source vector with numeric values.
#' @param type [\code{character}]\cr
#'   String indicating how to handle multiple occurences of the maximal value. Possible values are
#'   "first", which leads to the know behavior of base::which.max, "last" which returns the index
#'   of the last occurence of the maximal element, "random", which chooses the position by dice roling
#'   and finally all, which returns a vector of all positions.
#' @return [\code{vector}]
#'   Position(s) of the occurence(s) of the maximal value.
#' @export
which.max2 = function(x, type = "first") {
  idx = which(x == max(x))
  return(get(idx, type))
}
