\name{commoncause-package}
\alias{commoncause-package}
\alias{commoncause}
\docType{package}
\title{
Compute the conditional probability of multiple failures given at least one failure.
}
\description{
Compute the conditional probability of M or more failures from a group of k components given at least one failure.  The arguments are M and a list of k vectors each of size N containing samples from the margins of the dirichlet distribution associated with the system of components.
}
\details{
\tabular{ll}{
Package: \tab commoncause\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-06-17\cr
License: \tab GPL-2\cr
}
~~ An overview of how to use the package, including the most important ~~
~~ functions ~~
}
\author{
Paul Thomas Britton

Maintainer: Paul Thomas Britton <paul.t.britton@nasa.gov>
~~ The author and/or maintainer of the package ~~
}
\references{
~~ Literature or other references for background information ~~
}
~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
~~ the R documentation directory ~~
\keyword{ package }
\keyword{ commoncause }
\keyword{ pradist }
\seealso{
~~ Optional links to other man pages, e.g. ~~
~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
}
\examples{
library(pradist)
D <- dirichlet(30,500,30,5)
ga2 <- GlobalAlpha(2,D)
print(ga2)
}
