% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{retry}
\alias{retry}
\title{A wrapper around \code{try} that retries on failure}
\usage{
retry(
  expr,
  envir = parent.frame(),
  retries = 5,
  exponentialDecayBase = 1.3,
  silent = TRUE
)
}
\arguments{
\item{expr}{Quoted expression to run, i.e., \code{quote(...)}}

\item{envir}{The environment in which to evaluate the quoted expression, default
to \code{parent.frame(1)}}

\item{retries}{Numeric. The maximum number of retries.}

\item{exponentialDecayBase}{Numeric > 1.0. The delay between
successive retries will be \code{runif(1, min = 0, max = exponentialDecayBase ^ i - 1)}
where \code{i} is the retry number (i.e., follows \code{seq_len(retries)})}

\item{silent}{Logical indicating whether to \code{try} silently.}
}
\description{
This is useful for functions that are "flaky", such as \code{curl}, which may fail for unknown
reasons that do not persist.
}
\details{
Based on \url{https://github.com/jennybc/googlesheets/issues/219#issuecomment-195218525}.
}
