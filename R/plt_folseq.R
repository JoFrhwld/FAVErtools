#' Translate numerical plotnik codes for the following sequence to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @return A vector of readable codes.
#' @export
#' 
#' @examples
#' # get path to a fave file bundled with the package
#' frueh_path <- system.file("extdata","PH06-2-A-JosefFruehwald.txt", package = "FAVErtools")
#' 
#' # the header contains demographic info
#' header <- scan(frueh_path, nmax = 1,what = "list", sep = "\n")
#' 
#' frueh <- read.delim(frueh_path, skip = 2)
#' frueh$FolSeq <- plt_folseq(frueh$fs)


plt_folseq <- function(x){
  folseq.codes = c(
    `1` = "one_fol_syll",
    `2` = "two_fol_syl",
    `3` = "complex_coda",
    `4` = "complex_one_syl",
    `5` = "complex_two_syl"
  )
  
  folseq <- folseq.codes[as.character(x)]
  return(folseq)
}