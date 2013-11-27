#' Translate numerical plotnik codes to readable codes
#' 
#' This will translate numerical plotnik codes to a readable code. 
#' Note, this only operates over the part of the numeric code preceding the decimal.
#' 
#' @param x a vector of numeric vowel codes
#' @export
#' 

plt_vowels <- function(x){
  vclass.codes = c(
    `1` = "i",
    `2` = "e",
    `3` = "ae",
    `5` = "o",
    `6` = "uh",
    `7` = "u",
    `*` = "*",
    `11` = "iy",
    `12` = "iyF",
    `21` = "ey",
    `22` = "eyF",
    `41` = "ay",
    `47` = "ay0",
    `61` = "oy",
    `42` = "aw",
    `62` = "ow",
    `63` = "owF",
    `72` = "uw",
    `73` = "Tuw",
    `82` = "iw",
    `33` = "aeh",
    `39` = "aeBR",
    `43` = "ah",
    `53` = "oh",
    `14` = "iyr",
    `24` = "eyr",
    `44` = "ahr",
    `54` = "ohr",
    `64` = "owr",
    `74` = "uwr",
    `94` = "*hr"
  )
  if(is.numeric(x)){
    x <- floor(x)
  }
  vowels <- vclass.codes[as.character(x)]
  return(vowels)
}