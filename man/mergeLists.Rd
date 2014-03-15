\name{mergeLists}
\alias{mergeLists}
\title{Takes two named lists and replaces each element of the first list, which also
is located in the second list by the value in the second list.}
\usage{
mergeLists(x, y)
}
\arguments{
  \item{x}{[\code{list}]\cr Named source list.}

  \item{y}{[\code{list}]\cr List with elements which should
  be replaced in the first list.}
}
\value{
[\code{list}] Unioned list where the elements, which are
located in both source lists have the values of the second
list.
}
\description{
Takes two named lists and replaces each element of the
first list, which also is located in the second list by the
value in the second list.
}

