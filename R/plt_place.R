#' This will translate numerical plotnik codes to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @export
#' 


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