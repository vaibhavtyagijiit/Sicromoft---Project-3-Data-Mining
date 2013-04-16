library(shiny)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Sicromoft Twitter Sentiment"),
  
  sidebarPanel(
    headerPanel("Sentiment Twitter 1"),
    selectInput("variable", "Variable:",
                list("Efteling" = "eft", 
                     "Dolfinarium" = "dolf", 
                     "Pathe" = "pathe",
                     "Apenheul" = "aap")),
    
    headerPanel("Sentiment Twitter 2"),
    selectInput("variable1", "Variable:",
                list("Efteling" = "eft2", 
                     "Dolfinarium" = "dolf2", 
                     "Pathe" = "pathe2",
                     "Apenheul" = "aap2")),
    
    headerPanel("Tweet Frequency"),
    selectInput("variable2", "Variable:",
                list("Efteling" = "eft3", 
                     "Dolfinarium" = "dolf3", 
                     "Pathe" = "pathe3",
                     "Apenheul" = "aap3")),
    
    helpText("Note: Getting results may take a while.
             Please be patient."),
    
    submitButton("Update View")
    ),
  
  mainPanel(
    tabsetPanel(
      tabPanel("Sentiment Twitter 1", plotOutput("STPlot1")),
      tabPanel("Sentiment Twitter 2", plotOutput("STPlot2")),
      tabPanel("Tweet Frequency", plotOutput("tweetFreq"))
      )
    )
))