#' Translate numerical plotnik codes for following voice to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @return A vector of readable codes
#' @export
#' @examples
#' \dontrun{
#' # get path to a fave file bundled with the package
#' frueh_path <- file.path(.libPaths()[1], 
#'                            "FAVErtools",
#'                                "extdata",
#'                                    "PH06-2-A-JosefFruehwald.txt")
#'                                    
#' header <- scan(frueh_path, nmax = 1,what = "list", sep = "\n")
#' frueh <- read.delim(frueh_path, skip = 2) 
#' frueh$Voice <- plt_folseq(frueh$fv)
#' } 

plt_voice <- function(x){
  voice.codes = c(
    `1` = "voiceless",
    `2` = "voiced"
  )
  
  voice <- voice.codes[as.character(x)]
  return(voice)
}