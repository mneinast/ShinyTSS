#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

  titlePanel("Bike Ride TSS Calculator"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("tss", "Target TSS:", value = 100, min = 0),
      numericInput("ftp", "Functional Threshold Power (FTP) in watts:", value = 250, min = 0),
      numericInput("length", "Ride length in minutes:", value = 60, min = 0),
      numericInput("normPower", "Normalized Power in watts (optional):", value = NA, min = 0),
      actionButton("calculate", "Calculate")
    ),
    
    mainPanel(
      textOutput("outputPower")
    )
  )
)
