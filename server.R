load("FinalData.RData")
library(tm)
library(stringr)
predict <- function(str)
{
 str <- removePunctuation(str)
  str <- stripWhitespace(str)
  str <- tolower(str)
  vec <- unlist(strsplit(str," "))
  len <- length(vec)
  print(vec)
  if (len==0) 
  {
    return(Final_ngram1$word1[1:4])
  }
  if (vec[len]%in%Final_ngram1$word1)
  {
    if (len>=3)
    {
      index <- which(Final_ngram4$word3==vec[len] & Final_ngram4$word2==vec[len-1] & Final_ngram4$word1==vec[len-2])
      if (length(index)>0) 
      {
        return(Final_ngram4$word4[index[1:4]])
      }
    }
    if (len>=2)
    {
      index <- which(Final_ngram3$word2==vec[len] & Final_ngram3$word1==vec[len-1])
      if (length(index)>0) 
      {
        return(Final_ngram3$word3[index[1:4]])
      }
    }
    index <- which(Final_ngram2$word1==vec[len])
    if (length(index)>0) 
    {
      return(Final_ngram2$word2[index[1:4]])     
    }
  }
  return(Final_ngram1$word1[1:4])
}
shinyServer(function(input, output) {
    output$text <- renderText({
    vec <- predict(input$inputText)
    print(vec)
    if (is.na(vec[2])) vec[2:3] <- Final_ngram1$word1[1:2]
    if (is.na(vec[3])) vec[3] <- Final_ngram1$word1[1]
    paste(vec[1],"  |  "," ",vec[2],"   |  "," ",vec[3],"   |  "," ",vec[4])
  })
})