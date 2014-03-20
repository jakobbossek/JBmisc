#' Glue a vector of characters together.
#'
#' @param x [\code{arbitrary}]\cr
#'   Arbitrary R object (converted into character before glueing).
#' @param sep [\code{character(1)}]\cr
#'   Seperator used to glue elements together.
#' @return [\code{character(1)}]
#' @export
strImplode = function(x, sep = " ") {
  x = as.character(x)
  checkArg(sep, cl = "character", len = 1L, na.ok = FALSE)
  paste(x, collapse = sep)
}
