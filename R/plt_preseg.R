#' Translate numerical plotnik codes for the preceding segment to a readable code. 
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
#' frueh$PreSeg <- plt_folseq(frueh$ps)

plt_preseg <- function(x){
  preseg.codes = c(
    `1` = "oral labial",
    `2` = "nasal labial",
    `3` = "oral apical",
    `4` = "nasal apical",
    `5` = "palatal",
    `6` = "velar",
    `7` = "liquid",
    `8` = "obstruent liquid",
    `9` = "w/y"
  )  
  preseg <- preseg.codes[as.character(x)]
  return(preseg)
}