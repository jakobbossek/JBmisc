\name{which.min2}
\alias{which.min2}
\title{More conventient function to get the index of the minimal index in a numeric vector.
(\code{base::which.min} only returns the first position of the minimum value).}
\usage{
which.min2(x, type = "first")
}
\arguments{
  \item{x}{[\code{vector}]\cr Source vector with numeric
  values.}

  \item{type}{[\code{character}]\cr String indicating how
  to handle multiple occurences of the minimal value.
  Possible values are "first", which leads to the know
  behavior of base::which.min, "last" which returns the
  index of the last occurence of the minimal element,
  "random", which chooses the position by dice roling and
  finally all, which returns a vector of all positions.}
}
\value{
[\code{vector}] Position(s) of the occurence(s) of the
minimal value.
}
\description{
More conventient function to get the index of the minimal
index in a numeric vector. (\code{base::which.min} only
returns the first position of the minimum value).
}

