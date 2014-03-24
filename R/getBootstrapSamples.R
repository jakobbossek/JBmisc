#' Compute bootstrap samples from a given vector.
#'
#' @param x [\code{vector}]\cr
#'   Source vector.
#' @param n.samples [\code{integer(1)}]\cr
#'   Number of bootstrap samples.
#' @return [\code{list}]
#'   A list of bootstrap samples.
#' @export
getBootstrapSamples = function(x, n.samples = round(length(x) / 2)) {
  n.samples = convertInteger(n.samples)
  checkArg(n.samples, cl = "integer", len = 1L, lower = 2L, na.ok = FALSE)
  n = length(x)
  lapply(seq_len(n.samples), function(i) {
    getRandomElements(x, size = n, replace = TRUE)
  })
}
