#' Computes modal value of given vector.
#'
#' Base R does not offer a convenient method to compute the most frequent value
#' of a given vector. \code{modalValue} fills this gap.
#'
#' @param x [\code{list}]\cr
#'   List or vector of values.
#' @param type [\code{character(1)}]\cr
#'   The \code{type} parameter indicates how to operate in the multimodal case.
#'   The default value is \code{unique}, i.e., you get the unique modal value or
#'   \code{NA}, if such does not exist. Alternatively \code{all} returns all modal
#'   values.
#' @param na.rm [\code{logical(1)}]\cr
#'   Logical value indicating how do deal with NA-values. \code{TRUE}, the default value,
#'   makes the functions get rid of NAs. Otherwise they are treated as a regular value.
#' @return [\code{vector}]
#'   Vector of most frequent values or NA.
#' @export
modalValue = function(x, type = "unique", na.rm = TRUE) {
  x = unlist(x)
  if (na.rm) {
    x = x[!is.na(x)]
  }
  tab = table(x)
  x.unique = unique(x)
  modeFrequency = which(tab == max(tab))

  if (type == "unique") {
    if (length(modeFrequency) > 1L)
      return(NA)
    return(x.unique[which.max(tab)])
  } else if (type == "all") {
    return(x.unique[which.max2(tab, type = "all")])
  }
}
