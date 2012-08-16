\name{dotproduct}
\alias{dotproduct}

\title{
Calculate the dot product of two vectors.
}

\description{
Given vectors x and y, calculate the equivalent to \code{sum(x*y)}.
}

\usage{
dotproduct(x, y)
}

\arguments{
  \item{x}{
A numeric vector.
}
  \item{y}{
A numeric Vector.
}
}
\details{
Seet the description.
}

\value{
A list with components:
\item{R}{The result of \code{sum(x*y)},}
\item{dotC}{The result from using the .C version,}
\item{dotCall}{The result from using the .Call version, and}
\item{dotExternal}{The result from using the .External version.}

All elements should be identical.
}

\author{
Simon Knapp
}

\examples{
x <- rnorm(10)
y <- rnorm(10)
prods <- dotproduct(x, y)

## The function is currently defined as
function (x, y) 
{
    stopifnot(length(x) == length(y))
    res1 <- sum(x * y)
  }
}
