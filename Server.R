library(shiny)
library(twitteR)
library(RMySQL)
library(ROAuth)
library(ggplot2)

#Load authentication files for twitter
load(file="twitter_authentication.Rdata")
registerTwitterOAuth(cred)

tweetsEfteling <- function()
{
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  eftelingResultText <- dbSendQuery(doConnectToDB, "select text from tweetsEfteling")
  showResultEftelingText <- fetch(eftelingResultText)
  onComplete <- dbHasCompleted(eftelingResultText)
  dbClearResult(eftelingResultText)
  dbDisconnect(doConnectToDB)
  
  getText <- showResultEftelingText$text
  getText <- iconv(as.character(getText), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  efteling.score <- suppressMessages(score.sentiment(getText, pos.words, neg.words))
  
  hist(main="Sentiment Efteling (march 30th 2013)", efteling.score$score, breaks = (-10:10 + 0.7))
}

tweetsDolfinarium <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  dolfinariumResultText <- dbSendQuery(doConnectToDB, "select text from tweetsDolfinarium")
  showResultDolfinariumText <- fetch(dolfinariumResultText)
  onComplete <- dbHasCompleted(dolfinariumResultText)
  dbClearResult(dolfinariumResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText1 <- showResultDolfinariumText$text
  getText1 <- iconv(as.character(getText1), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  dolfinarium.score <- suppressMessages(score.sentiment(getText1, pos.words, neg.words))
  
  hist(main="Sentiment Dolfinarium (march 30th 2013)", dolfinarium.score$score, breaks = (-10:10 + 0.7))
}

tweetsPathe <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  patheResultText <- dbSendQuery(doConnectToDB, "select text from tweetsPathe")
  showResultPatheText <- fetch(patheResultText)
  onComplete <- dbHasCompleted(patheResultText)
  dbClearResult(patheResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText2 <- showResultPatheText$text
  getText2 <- iconv(as.character(getText2), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  pathe.score <- suppressMessages(score.sentiment(getText2, pos.words, neg.words))
  
  hist(main="Sentiment Pathe (march 30th 2013)", pathe.score$score, breaks = (-10:10 + 0.7))
}

tweetsApenheul <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  apenheulResultText <- dbSendQuery(doConnectToDB, "select text from tweetsApenheul")
  showResultApenheulText <- fetch(apenheulResultText)
  onComplete <- dbHasCompleted(apenheulResultText)
  dbClearResult(apenheulResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText3 <- showResultApenheulText$text
  getText3 <- iconv(as.character(getText3), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  apenheul.score <- suppressMessages(score.sentiment(getText3, pos.words, neg.words))
  
  hist(main="Sentiment Apenheul (march 30th 2013)", apenheul.score$score, breaks = (-10:10 + 0.7))
}

##################################

tweetsEfteling1 <- function()
{
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  eftelingResultText <- dbSendQuery(doConnectToDB, "select text from tweetsEfteling2")
  showResultEftelingText <- fetch(eftelingResultText)
  onComplete <- dbHasCompleted(eftelingResultText)
  dbClearResult(eftelingResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText <- showResultEftelingText$text
  getText <- iconv(as.character(getText), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  efteling.score <- suppressMessages(score.sentiment(getText, pos.words, neg.words))
  
  hist(main="Sentiment Efteling (april 4th 2013)", efteling.score$score, breaks = (-10:10 + 0.7))
}

tweetsDolfinarium1 <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  dolfinariumResultText <- dbSendQuery(doConnectToDB, "select text from tweetsDolfinarium2")
  showResultDolfinariumText <- fetch(dolfinariumResultText)
  onComplete <- dbHasCompleted(dolfinariumResultText)
  dbClearResult(dolfinariumResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText1 <- showResultDolfinariumText$text
  getText1 <- iconv(as.character(getText1), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  dolfinarium.score <- suppressMessages(score.sentiment(getText1, pos.words, neg.words))
  
  hist(main="Sentiment Dolfinarium (april 4th 2013)", dolfinarium.score$score, breaks = (-10:10 + 0.7))
}

tweetsPathe1 <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  patheResultText <- dbSendQuery(doConnectToDB, "select text from tweetsPathe2")
  showResultPatheText <- fetch(patheResultText)
  onComplete <- dbHasCompleted(patheResultText)
  dbClearResult(patheResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText2 <- showResultPatheText$text
  getText2 <- iconv(as.character(getText2), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  pathe.score <- suppressMessages(score.sentiment(getText2, pos.words, neg.words))
  
  hist(main="Sentiment Pathe (april 4th 2013)", pathe.score$score, breaks = (-10:10 + 0.7))
}

tweetsApenheul1 <- function()
{
  
  doConnectToDB <- dbConnect(MySQL(), user="root", password="", dbname="sicromoft", host="127.0.0.1")
  apenheulResultText <- dbSendQuery(doConnectToDB, "select text from tweetsApenheul2")
  showResultApenheulText <- fetch(apenheulResultText)
  onComplete <- dbHasCompleted(apenheulResultText)
  dbClearResult(apenheulResultText)
  dbDisconnect(doConnectToDB)
  
  
  getText3 <- showResultApenheulText$text
  getText3 <- iconv(as.character(getText3), "latin1", "ASCII", sub="")
  
  source("sentiment.R")
  source("readwords.R")
  
  apenheul.score <- suppressMessages(score.sentiment(getText3, pos.words, neg.words))
  
  hist(main="Sentiment Apenheul (april 4th 2013)", apenheul.score$score, breaks = (-10:10 + 0.7))
}

###################################################

freqEfteling <- function()
{
  tweets <- list()
  dates <- paste("2013-04-",11:16,sep="") 
  for (i in 2:length(dates)) {
    print(paste(dates[i-1], dates[i]))
    tweets <- c(tweets, searchTwitter("#efteling", since=dates[i-2], until=dates[i], n=170))
  }
  
  # Convert the list to a data frame
  tweets <- do.call("rbind", lapply(tweets, as.data.frame))
  
  #Extract some information
  tweets$date <- format(tweets$created, format="%Y-%m-%d")
  table(tweets$date)
  
  # Plot the frequency of tweets over time in two hour windows
  minutes <- 120
  x <- ggplot(data=tweets, aes(x=created)) + 
        geom_bar(aes(fill=..count..), binwidth=60*minutes) + 
        scale_x_datetime("Date") + 
        scale_y_continuous("Frequency") +
        ggtitle("#Efteling Tweet Frequency April 07-11")
  print(x)
}

freqPathe <- function()
{
  tweets <- list()
  dates <- paste("2013-04-",11:16,sep="") 
  for (i in 2:length(dates)) {
    print(paste(dates[i-1], dates[i]))
    tweets <- c(tweets, searchTwitter("#pathe", since=dates[i-2], until=dates[i], n=170))
  }
  
  tweets <- do.call("rbind", lapply(tweets, as.data.frame))

  tweets$date <- format(tweets$created, format="%Y-%m-%d")
  table(tweets$date)
  
  minutes <- 120
  x <- ggplot(data=tweets, aes(x=created)) + 
        geom_bar(aes(fill=..count..), binwidth=60*minutes) + 
        scale_x_datetime("Date") + 
        scale_y_continuous("Frequency") +
        ggtitle("#Pathe Tweet Frequency April 07-11")
  print(x)
}

freqDolfinarium <- function()
{
  tweets <- list()
  dates <- paste("2013-04-",11:16,sep="") 
  for (i in 2:length(dates)) {
    print(paste(dates[i-1], dates[i]))
    tweets <- c(tweets, searchTwitter("#dolfinarium", since=dates[i-2], until=dates[i], n=170))
  }
  
  tweets <- do.call("rbind", lapply(tweets, as.data.frame))
 
  tweets$date <- format(tweets$created, format="%Y-%m-%d")
  table(tweets$date)
  
  minutes <- 120
  x <- ggplot(data=tweets, aes(x=created)) + 
        geom_bar(aes(fill=..count..), binwidth=60*minutes) + 
        scale_x_datetime("Date") + 
        scale_y_continuous("Frequency") +
        ggtitle("#Dolfinarium Tweet Frequency April 07-11")
  print(x)
}

freqApenheul <- function()
{
  tweets <- list()
  dates <- paste("2013-04-",11:16,sep="") 
  for (i in 2:length(dates)) {
    print(paste(dates[i-1], dates[i]))
    tweets <- c(tweets, searchTwitter("#apenheul", since=dates[i-2], until=dates[i], n=150))
  }
  
  tweets <- do.call("rbind", lapply(tweets, as.data.frame))

  tweets$date <- format(tweets$created, format="%Y-%m-%d")
  table(tweets$date)
  
  minutes <- 120
  x <- ggplot(data=tweets, aes(x=created)) + 
        geom_bar(aes(fill=..count..), binwidth=60*minutes) + 
        scale_x_datetime("Date") + 
        scale_y_continuous("Frequency") +
        ggtitle("#Apenheul Tweet Frequency April 07-11")
  print(x)
}



# Define server logic here
shinyServer(function(input, output) {
  
  output$STPlot1 <- renderPlot({
    if(input$variable == "eft"){
      tweetsEfteling()
    }else if(input$variable == "dolf"){
      tweetsDolfinarium()
    }else if(input$variable == "pathe"){
      tweetsPathe()
    }else if(input$variable == "aap"){
      tweetsApenheul()
    }else{
      return(0)
    }
  })
  
  output$STPlot2 <- renderPlot({
    if(input$variable1 == "eft2"){
      tweetsEfteling1()
    }else if(input$variable1 == "dolf2"){
      tweetsDolfinarium1()
    }else if(input$variable1 == "pathe2"){
      tweetsPathe1()
    }else if(input$variable1 == "aap2"){
      tweetsApenheul1()
    }else{
      return(0)
    }
  })
  
  output$tweetFreq <- renderPlot({
    if(input$variable2 == "eft3"){
      freqEfteling()
    }else if(input$variable2 == "dolf3"){
      freqDolfinarium()
    }else if(input$variable2 == "pathe3"){
      freqPathe()
    }else if(input$variable2 == "aap3"){
      freqApenheul()
    }else{
      return(0)
    }
  })
  
})