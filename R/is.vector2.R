#' Checks safely if a given object is a vector.
#' (base::is.vector return \code{TRUE} only if the given vector has no attributes
#' beside \code{names()}).
#'
#' @param x [\code{mixed}]\cr
#'   Object to check.
#' @return [\code{logical(1)}]\cr
#'   Logical value indicating whether the given object is a vector or not
#' @export
is.vector2 = function(x) {
  return (is.atomic(x) || is.list(x))
}
