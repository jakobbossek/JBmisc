\name{modalValue}
\alias{modalValue}
\title{Computes modal value of given vector.}
\usage{
modalValue(x, type = "unique", na.rm = TRUE)
}
\arguments{
  \item{x}{[\code{list}]\cr List or vector of values.}

  \item{type}{[\code{character(1)}]\cr The \code{type}
  parameter indicates how to operate in the multimodal
  case.  The default value is \code{unique}, i.e., you get
  the unique modal value or \code{NA}, if such does not
  exist. Alternatively \code{all} returns all modal
  values.}

  \item{na.rm}{[\code{logical(1)}]\cr Logical value
  indicating how do deal with NA-values. \code{TRUE}, the
  default value, makes the functions get rid of NAs.
  Otherwise they are treated as a regular value.}
}
\value{
[\code{vector}] Vector of most frequent values or NA.
}
\description{
Base R does not offer a convenient method to compute the
most frequent value of a given vector. \code{modalValue}
fills this gap.
}

