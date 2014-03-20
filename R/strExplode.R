#' Split a string into substrings.
#'
#' A seperator determines which characters to use for spliting up.
#'
#' @param x [\code{character}]\cr
#'   Source string.
#' @param sep [\code{character}]\cr
#'   Seperator whcih is used to split \code{x} into substrings.
#' @return [\code{character}]
#'   Vector of substrings.
#' @export
strExplode = function(x, sep = " ") {
  checkArg(x, cl = "character", min.len = 1L, na.ok = FALSE)
  checkArg(sep, cl = "character", min.len = 1L, na.ok = FALSE)
  x.exploded = strsplit(x, sep, perl = TRUE)
  return(x.exploded[[1]])
}
