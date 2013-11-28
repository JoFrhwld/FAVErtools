\name{read.plotnik}
\alias{read.plotnik}
\title{Read a plotnik file produced by FAVE as a data frame}
\usage{
  read.plotnik(file)
}
\arguments{
  \item{file}{A plotnik file to be read in}
}
\value{
  A data frame
}
\description{
  \code{read.plotik()} will read plotnik files as generated
  by FAVE-extract.
}
\examples{
\dontrun{frueh <- read.plotnik("inst/PH06-2-A-JosefFruehwald.plt")}
}

