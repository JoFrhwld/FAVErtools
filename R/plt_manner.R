#' Translate numerical plotnik codes for manner to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @return A vector of readable codes.
#' @export
#' @examples
#' # get path to a fave file bundled with the package
#' frueh_path <- system.file("extdata","PH06-2-A-JosefFruehwald.txt", package = "FAVErtools")
#' 
#' # the header contains demographic info
#' header <- scan(frueh_path, nmax = 1,what = "list", sep = "\n")
#' 
#' frueh <- read.delim(frueh_path, skip = 2)
#' frueh$Manner <- plt_folseq(frueh$fm)


plt_manner <- function(x){
  manner.codes = c(
    `1` = "stop",
    `2` = "affricate",
    `3` = "fricative",
    `4` = "nasal",
    `5` = "lateral",
    `6` = "central"
  )
  manner <- manner.codes[as.character(x)]
  return(manner)
}