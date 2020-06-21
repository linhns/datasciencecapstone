library(shiny)
library(shinythemes)
# Define UI for application that draws a histogram
shinyUI(
    navbarPage("Next word predictor", 
               theme = shinytheme("lumen"),
               tabPanel("Home", 
                        fluidPage(
                            h2("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("phrase", "Enter a phrase", 
                                              placeholder = "Enter text here"),
                                    sliderInput("no_of_suggestions", "Select number of suggestions",
                                                value = 3, min = 1, max = 3, step = 1)
                                ),
                                mainPanel(
                                    h4("Original phrase"),
                                    textOutput("userInput"),
                                    br(),
                                    h4("Predictions")
                                )
                            )
                        )),
               tabPanel("About",
                        fluidPage(
                            h2("About"),
                            div("Next word predictor is an app that suggest the 
                                next word based on user input using a text prediction algorithm.",
                                br(),
                                br(),
                                "Please allow a few seconds for the predicted outcomes to appear.",
                                br(),
                                br(),
                                "Outcomes will be presented in likelihood order, with the most likely at the top."
                                )
                        ))
    )
    
)
