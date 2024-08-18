#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {

  observeEvent(input$calculate, {
    ftp <- input$ftp
    tss <- input$tss
    len <- input$length # minutes
    normPower <- input$normPower
    
    if (is.na(normPower)) {
      normPower <- 6 * ftp * sqrt(tss) / sqrt(len*60)
      output$outputPower <- renderText({ 
        paste("Suggested Normalized Power:", round(normPower, 2), "watts")
      })
    }
  })

}
