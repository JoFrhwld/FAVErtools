\name{plt_folseq}
\alias{plt_folseq}
\title{Translate numerical plotnik codes for the following sequence to a readable code.}
\usage{
  plt_folseq(x)
}
\arguments{
  \item{x}{a vector of numeric vowel codes}
}
\value{
  A vector of readable codes.
}
\description{
  Translate numerical plotnik codes for the following
  sequence to a readable code.
}
\examples{
\dontrun{
# get path to a fave file bundled with the package
frueh_path <- file.path(.libPaths()[1],
                           "FAVErtools",
                               "extdata",
                                   "PH06-2-A-JosefFruehwald.txt")

header <- scan(frueh_path, nmax = 1,what = "list", sep = "\\n")
frueh <- read.delim(frueh_path, skip = 2)
frueh$FolSeq <- plt_folseq(frueh$fs)
}
}

