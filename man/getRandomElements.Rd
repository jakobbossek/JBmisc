\name{getRandomElements}
\alias{getRandomElements}
\title{Samples a random element.}
\usage{
getRandomElements(x, size = 1L, replace = FALSE)
}
\arguments{
  \item{x}{[\code{vector}]\cr Source vector.}

  \item{size}{[\code{integer(1)}]\cr Number of random
  elements to draw.}

  \item{replace}{[\code{logical(1)}]\cr Draw random
  elements with or without replacement?  Default is
  \code{TRUE}.}
}
\value{
[\code{vector}]
}
\description{
Similar to \code{\link[base]{sample}}, but with the small
exception, that giving a single value x as input is treated
as a single vector and not like 1:x.
}

