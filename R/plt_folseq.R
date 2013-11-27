#' This will translate numerical plotnik codes to a readable code. 
#'  
#' @param x a vector of numeric vowel codes
#' @export
#' 


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