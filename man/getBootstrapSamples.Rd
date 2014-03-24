\name{getBootstrapSamples}
\alias{getBootstrapSamples}
\title{Compute bootstrap samples from a given vector.}
\usage{
getBootstrapSamples(x, n.samples = round(length(x)/2))
}
\arguments{
  \item{x}{[\code{vector}]\cr Source vector.}

  \item{n.samples}{[\code{integer(1)}]\cr Number of
  bootstrap samples.}
}
\value{
[\code{list}] A list of bootstrap samples.
}
\description{
Compute bootstrap samples from a given vector.
}

