#' This will translate numerical plotnik codes to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @export
#' 


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