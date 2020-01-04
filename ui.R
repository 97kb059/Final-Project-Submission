#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage("Data Science Capstone : Final Project Submission",
             tabPanel("Predict Wordd",
                      HTML("<strong>Author: YOUNGSUL KWAK</strong>"),
                      br(),
                      HTML("<strong>Date: 04 January 2020</strong>"),
                      br(),
                      sidebarLayout(
                        sidebarPanel(
                          helpText("This is small demonstration of the powerful NLP to predict the next word"),
                          hr(),
                          textInput("inputText", "Enter a word, Text or a sentence",value = ""),
                          hr(),
                          hr(),
                          hr()
                        ),
                        mainPanel(
                          h2("Word Predicton Result"),
                          h5("The next word for the given word, text or sentence is predicted using the NLP techquies,
             on the Corpus provided by the Coursera"),
                          h5("Allow some time for the app to load for the first time"),
                          strong("Your input"),
                          verbatimTextOutput("inputWords"),
                          hr(),
                          strong("Next word can be"),
                          strong(code(textOutput("NextWord"))),
                          hr(),
                          hr()
                        )
                      )
             )
  )
)