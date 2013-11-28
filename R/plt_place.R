#' Translate numerical plotnik codes for following place to a readable code. 
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
#' frueh$Place <- plt_folseq(frueh$fp)
#' } 

plt_place <- function(x){
  place.codes = c(
    `1` = "labial",
    `2` = "labiodental",
    `3` = "interdental",
    `4` = "apical",
    `5` = "palatal",
    `6` = "velar"
  )
  place <- place.codes[as.character(x)]
  return(place)
}