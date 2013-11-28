\name{read.plotnik}
\alias{read.plotnik}
\title{Read a plotnik file produced by FAVE as a data frame}
\usage{
  read.plotnik(file)
}
\arguments{
  \item{file}{Path to a plotnik file to be read in.}
}
\value{
  A data frame
}
\description{
  \code{read.plotik()} will read plotnik files as generated
  by FAVE-extract.
}
\details{
  Plotnik files are idiosyncratically formatted. The first
  line provides demographic information for the speaker,
  and the second provides a count of the number of
  measurements. Then lines follow for each measurement,
  including F1, F2, F3, coding for the vowel using a
  numerical representation, the stress and duration of the
  vowel, concatenated with a decimal point, the word, an
  optional mark to represent whether the vowel was a
  monophthong, a numerical code for the number of formants,
  a time stamp, and then F1 an F2 formant tracks. The
  delimeters between these fields are, variously, commas,
  periods, spaces, double spaces, right and left angle
  brackets.

  In addition, many plotnik files have more lines at the
  end of the file representing mean values for each vowel
  class. These are not processed by \code{read.plotnik()}
}
\note{
  The first few columns of the data frame will be named X1,
  X2, and so on. The data in these columns are drawn from
  the first line of demographic data, which we cannot
  expect to be stable at the moment. Once the FAVE format
  has stabilized, the names of these fields will be fixed.
}
\examples{
\dontrun{
# get path to a plotnik file bundled with the package
frueh_path <- file.path(.libPaths()[1],
                           "FAVErtools",
                               "extdata",
                                   "PH06-2-A-JosefFruehwald.plt")
frueh <- read.plotnik(frueh_path)
}
}

