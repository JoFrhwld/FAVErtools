\name{plt_manner}
\alias{plt_manner}
\title{Translate numerical plotnik codes for manner to a readable code.}
\usage{
  plt_manner(x)
}
\arguments{
  \item{x}{a vector of numeric vowel codes}
}
\value{
  A vector of readable codes.
}
\description{
  Translate numerical plotnik codes for manner to a
  readable code.
}
\examples{
# get path to a fave file bundled with the package
frueh_path <- system.file("extdata","PH06-2-A-JosefFruehwald.txt", package = "FAVErtools")

# the header contains demographic info
header <- scan(frueh_path, nmax = 1,what = "list", sep = "\\n")

frueh <- read.delim(frueh_path, skip = 2)
frueh$Manner <- plt_folseq(frueh$fm)
}

