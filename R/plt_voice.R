#' This will translate numerical plotnik codes to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @export
#' 


plt_voice <- function(x){
  voice.codes = c(
    `1` = "voiceless",
    `2` = "voiced"
  )
  
  voice <- voice.codes[as.character(x)]
  return(voice)
}