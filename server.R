#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out morev about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

suppressPackageStartupMessages(c(
    library(shiny),
    library(tm),
    library(stringr)))


source("PredictWordAlgo.R")

# LoadData()


shinyServer(function(input, output) {
    output$NextWord <- renderPrint({
        result <- predictWord(input$inputText)
        result
    });
    output$inputWords <- renderText({
        input$inputText});
}
)