\name{simplexample-package}

\alias{simplexample-package}
\alias{simplexample}

\docType{package}

\title{Demonstrate calls to a .C, .Call and .External functions.}

\description{
A package that shows how one might use the .C .Call and .External interfaces for calculating a dot product.
}

\details{
\tabular{ll}{
Package: \tab simplexample\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-08-16\cr
License: \tab What license is it under?\cr
}

The only function in this package is \code{dotproduct} which calculate the dot product of its arguments using each of the calling conventions.
}

\author{
Simon Knapp

Maintainer: Simon Knapp <simon.knapp@verusol.com>
}

\examples{
x <- rnorm(10)
y <- rnorm(10)
dp <- dotproduct(x, y)
}
