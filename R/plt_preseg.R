#' This will translate numerical plotnik codes to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @export
#' 


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