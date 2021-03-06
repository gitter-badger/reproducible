% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/git.R
\name{checkoutVersion}
\alias{checkoutVersion}
\title{Clone, fetch, and checkout from GitHub.com repositories}
\usage{
checkoutVersion(repo, localRepoPath = ".", cred = "", ...)
}
\arguments{
\item{repo}{Repository address in the format \code{username/repo[/subdir][@ref|#pull]}.
Alternatively, you can specify subdir and/or ref using the respective parameters (see below);
if both is specified, the values in repo take precedence.}

\item{localRepoPath}{Character string. The path into which the git repo should be
cloned, fetched, and checked out from.}

\item{cred}{Character string. Either the name of the environment variable
that contains the GitHub PAT or filename of the GitHub private key file.}

\item{...}{Additional arguments passed to \code{git2r} functions.}
}
\value{
Invisibly returns a git_repository class object, defined in \pkg{git2r}.
}
\description{
Defunct.
}
\examples{
\dontrun{
  tmpDir <- tempfile("")
  dir.create(tmpDir)
  repo <- "PredictiveEcology/reproducible"

  ## get latest from master branch
  localRepo <- checkoutVersion("PredictiveEcology/reproducible",
                               localRepoPath = tmpDir)
  git2r::summary(localRepo)
  unlink(tmpDir, recursive = TRUE)

  ## get latest from development branch
  localRepo <- checkoutVersion(paste0(repo, "@", "development"), localRepoPath = tmpDir)
  git2r::summary(localRepo)
  unlink(tmpDir, recursive = TRUE)

  ## get a particular commit by sha
  sha <- "8179e1910e7c617fdeacad0f9d81323e6aad57c3"
  localRepo <- checkoutVersion(paste0(repo, "@", sha), localRepoPath = tmpDir)
  git2r::summary(localRepo)
  unlink(tmpDir, recursive = TRUE)

  rm(localRepo, repo)
}

}
\author{
Eliot McIntire and Alex Chubaty
}
