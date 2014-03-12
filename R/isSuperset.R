#' Check superset relation on two vectors.
#'
#' @param x [\code{vector}]\cr
#'   Source vector.
#' @param y [\code{vector}]\cr
#'   Vector of the same mode as \code{x}.
#' @return [\code{logical(1)}]
#'   \code{TRUE} if each element of \code{y} is also contained in \code{x}, i. e.,
#'   if \code{y} is a subset of \code{x} and \code{FALSE} otherwise.
#' @export
isSuperset = function(x, y) {
  return(isSubset(y, x))
}
