\name{GlobalAlpha}
\alias{GlobalAlpha}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute the conditional probability of multiple failures given at least one failure.
%%  ~~function to do ... ~~
}
\description{
Compute the conditional probability of M or more failures from a group of k components given at least one failure.  The arguments are M and a list of k vectors each of size N containing samples from the margins of the dirichlet distribution associated with the system of components.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
GlobalAlpha(M, diri)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{M}{
	Minimum number of component failures that will fail the system
}
  \item{diri}{
	Dirichlet distribution
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
	Vector of conditional probabilities
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Paul Thomas Britton
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{pradist}}, \code{\link{dirichlet}}
}
\examples{
library(pradist)
D <- dirichlet(30,500,30,5)
ga2 <- GlobalAlpha(2,D)
print(ga2)

## The function is currently defined as
function(M, diri)
{
   k <- length(diri)
   GA <- 0
   aT <- 0
   for (i in 1:k)  aT <- aT + i * diri[[i]]
   for (j in M:k) {
	GA <- GA + (k * diri[[j]])/aT
   }
   return(GA)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ commoncause }
\keyword{ GlobalAlpha }
\keyword{ dirichlet }% __ONLY ONE__ keyword per line
