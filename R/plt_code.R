#' Turns a Plotnik numerical code into a readaable data frame
#' 
#' @param x a vector containing plotnik numeric codes.
#' 
#' @export


plt_code <- function(x){
  x <- as.character(x)
  
  if(length(grep("\\.", x)) > 0){
    vcodings <- data.frame(VClass = gsub("\\..*","",x), 
                           envs = gsub(".*\\.","",x),stringsAsFactors=F)
    
    for(i in 1:nrow(vcodings)){
      env <- vcodings$envs[i]
      while(nchar(env) < 5){
        env <- paste(env, "0", sep = "")	
      }
      vcodings$envs[i] <- env
    }
    vcodings <- cbind(vcodings, 
                      ldply(vcodings$envs, function(x) unlist(strsplit(x, split = ""))))
  }else{
    vcodings <- data.frame(VClass = x, envs = "00000",stringsAsFactors=F)
    vcodings <- cbind(vcodings, 
                      ldply(vcodings$envs, function(x) unlist(strsplit(x, split = ""))))
  }
  
  colnames(vcodings) <- c("VClass","envs", "Manner","Place","Voice","PreSeg","FolSeq")
  
  vcodings$VClass <- plt_vowels(vcodings$VClass)
  vcodings$Manner <- plt_manner(vcodings$Manner)
  vcodings$Place  <- plt_place(vcodings$Place)
  vcodings$Voice  <- plt_voice(vcodings$Voice)
  vcodings$PreSeg <- plt_preseg(vcodings$PreSeg)
  vcodings$FolSeq <- plt_folseq(vcodings$FolSeq)
  
  return(vcodings)
}