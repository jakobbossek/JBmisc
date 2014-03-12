#' Check if given object has certain attributes.
#'
#' @param x\cr
#'   Arbitrary R object.
#' @param attributeNames [\code{character}]\cr
#'   Vector of strings, i.e., attribute names.
#' @return [\code{logical(1)}]
#'   \code{TRUE} if object \code{x} contains all attributes from \code{attributeNames}.
#'   and otherwise \code{FALSE}.
#' @export
hasAttributes = function(x, attributeNames) {
  return(isSubset(attributeNames, getAttributeNames(x)))
}
