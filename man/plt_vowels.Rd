\name{plt_vowels}
\alias{plt_vowels}
\title{Translate numerical plotnik codes for vowel class to readable codes}
\usage{
  plt_vowels(x)
}
\arguments{
  \item{x}{a vector of numeric vowel codes}
}
\value{
  A vector of readable codes
}
\description{
  This will translate numerical plotnik codes to a readable
  code. Note, this only operates over the part of the
  numeric code preceding the decimal.
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
frueh$VClass <- plt_folseq(frueh$cd)
}
}

