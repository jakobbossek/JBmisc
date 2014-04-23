#' Returns the first not null argument.
#'
#' @param ... [\code{any}]\cr
#'   Parameter list.
#' @param na.as.null [\code{logical(1)}]\cr
#'   Should NA values be treated like NULL? Default is \code{FALSE}.
#' @return [\code{any}]
#'   The first not null (and possibly not NA) parameter.
#' @export
#FIXME: find a better name for this.
fallThrough = function(..., na.as.null = FALSE) {
  args = list(...)
  idx = sapply(args, function(x) {
    cond = !is.null(x)
    if (na.as.null)
      cond = cond && !is.na(x)
    cond
  })
  idx = which(idx)[1]
  return(args[[idx]])
}
