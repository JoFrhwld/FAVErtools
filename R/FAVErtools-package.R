#' A set of R tools for working with FAVE results 
#' 
#' A set of R tools for working with FAVE results. 
#' 
#' \tabular{ll}{ Package: \tab FAVErtools\cr Version: \tab 1.0\cr Date: \tab
#' 2013-11-27\cr Imports: \tab plyr, reshape2\cr License: \tab MIT\cr
#' GithubRepo: \tab FAVErtools\cr GithubUsername: \tab JoFrhwld\cr GithubRef:
#' \tab master\cr
#' Built: \tab R 3.0.2; ; 2013-11-28 18:10:03 UTC; unix\cr }
#' 
#' Index: \tabular{ll}{ FAVErtools-package \tab This is a set of tools for working with the output of FAVE.\cr 
#' \code{plt_code} \tab Turns a Plotnik numerical code into a readaable data frame \cr
#' \code{plt_folseq} \tab Translate numerical plotnik codes for the following sequence to a readable code. \cr
#' \code{plt_manner} \tab Translate numerical plotnik codes for manner to a readable code. \cr
#' \code{plt_place} \tab Translate numerical plotnik codes for following place to a readable code. \cr
#' \code{plt_preseg} \tab Translate numerical plotnik codes for the preceding segment to a readable code.\cr
#' \code{plt_voice} \tab Translate numerical plotnik codes for following voice to a readable code. \cr
#' \code{plt_vowels} \tab Translate numerical plotnik codes for vowel class to readable codes \cr
#' \code{read.plotnik} \tab Read a plotnik file produced by FAVE as a data frame }
#' 
#' @name FAVErtools-package
#' @aliases FAVErtools-package FAVErtools
#' @docType package
#' @author Josef Fruehwald
#' 
#' Maintainer: Josef Fruehwald <jofrhwld@@gmail.com> 
#' @keywords package
#' @examples
#' ## Read in a plotnik file
#' frueh_plotnik_path <- system.file("extdata",
#'                                      "PH06-2-A-JosefFruehwald.plt",
#'                                       package = "FAVErtools")
#' frueh_plotnik_df <- read.plotnik(frueh_plotnik_path)
#' 
#' ## Read in a FAVE file
#' frueh_fave_path <- system.file("extdata",
#'                                  "PH06-2-A-JosefFruehwald.txt", 
#'                                  package = "FAVErtools")
#' header <- scan(frueh_fave_path, nmax = 1,what = "list", sep = "\n")
#' frueh_fave_df <- read.delim(frueh_fave_path, skip = 2)
#' 
#' ## Recode vowel codes to be readable.
#' frueh_fave_df$VClass <- plt_vowels(frueh_fave_df$cd)
#' frueh_fave_df$Manner <- plt_manner(frueh_fave_df$fm)
#' frueh_fave_df$Place  <- plt_place(frueh_fave_df$fp)
#' frueh_fave_df$Voice  <- plt_manner(frueh_fave_df$fv)
#' frueh_fave_df$PreSeg <- plt_preseg(frueh_fave_df$ps)
#' frueh_fave_df$FolSeq <- plt_folseq(frueh_fave_df$fs)
#' 
#' ## combine header info with measurements
#' header_df <- read.csv(textConnection(header), header = FALSE)
#' frueh_fave_df <- cbind(header_df, frueh_fave_df)



NULL