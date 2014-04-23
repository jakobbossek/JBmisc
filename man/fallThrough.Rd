\name{fallThrough}
\alias{fallThrough}
\title{Returns the first not null argument.}
\usage{
fallThrough(..., na.as.null = FALSE)
}
\arguments{
  \item{...}{[\code{any}]\cr Parameter list.}

  \item{na.as.null}{[\code{logical(1)}]\cr Should NA values
  be treated like NULL? Default is \code{FALSE}.}
}
\value{
[\code{any}] The first not null (and possibly not NA)
parameter.
}
\description{
Returns the first not null argument.
}

