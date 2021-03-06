% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datatools.R
\name{apply.symm}
\alias{apply.asymm}
\alias{apply.symm}
\title{Apply function to every pair of data frames from a list.}
\usage{
apply.symm(.datalist, .fun, ..., .diag = NA, .verbose = T)

apply.asymm(.datalist, .fun, ..., .diag = NA, .verbose = T)
}
\arguments{
\item{.datalist}{List with some data.frames.}

\item{.fun}{Function to apply, which return basic class value.}

\item{...}{Arguments passsed to .fun.}

\item{.diag}{Either NA for NA or something else != NULL for .fun(x,x).}

\item{.verbose}{if T then output a progress bar.}
}
\value{
Matrix with values M[i,j] = fun(datalist[i], datalist[j])
}
\description{
Apply the given function to every pair in the given datalist. Function either
symmetrical (i.e. fun(x,y) == fun(y,x)) or assymmetrical (i.e. fun(x,y) != fun(y,x)).
}
\examples{
\dontrun{
# equivalent to intersectClonesets(immdata, 'a0e')
apply.symm(immdata, intersectClonesets, .type = 'a0e')
}
}

