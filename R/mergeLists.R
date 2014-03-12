# Takes two named lists and replaces each element of the first list, which also
# is located in the second list by the value in the second list.
#
# @param x [\code{list}]\cr
#   Named source list.
# @param y [\code{list}]\cr
#   List with elements which should be replaced in the first list.
# @return [\code{list}]
#   Unioned list where the elements, which are located in both source lists
#   have the values of the second list.
mergeLists = function(x, y) {
  if (!is.list(x) || !is.list(y)) {
    stop("Argument(s) must be lists.")
  }
  replacementNames = names(y)
  x[replacementNames] = y
  return(x)
}
