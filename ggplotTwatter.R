library(twitteR)
library(ggplot2)

load(file="twitter_authentication.Rdata")
registerTwitterOAuth(cred)

tweets <- list()
dates <- paste("2013-04-",7:11,sep="") # need to go to 18th to catch tweets from 17th
for (i in 2:length(dates)) {
  print(paste(dates[i-1], dates[i]))
  tweets <- c(tweets, searchTwitter("#dolfinarium", since=dates[i-2], until=dates[i], n=150))
}

# Convert the list to a data frame
#tweets <- twListToDF(tweets)
tweets <- do.call("rbind", lapply(tweets, as.data.frame))
write.csv(tweets, file = "eftelingFreq.csv")
#tweets <- unique(tweets)

# To ensure accuracy, make sure that there were no more than 1500 tweets in a single day.
# If there are 1500 on any single day, then you're truncating that day's tweets, and you'll
# need to try to get ROAuth (below) working.
tweets$date <- format(tweets$created, format="%Y-%m-%d")
table(tweets$date)

# Plot the frequency of tweets over time in two hour windows
# Modified from http://michaelbommarito.com/2011/03/12/a-quick-look-at-march11-saudi-tweets/
minutes <- 120
ggplot(data=tweets, aes(x=created)) + 
  geom_bar(aes(fill=..count..), binwidth=60*minutes) + 
  scale_x_datetime("Date") + 
  scale_y_continuous("Frequency") +
  ggtitle("#Dolfinarium Tweet Frequency March 05-11")
