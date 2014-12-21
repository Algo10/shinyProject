library(shiny)
computeBMI <- function(height,weight) weight*703/(height*height)
shinyServer(
  function(input,output){
      output$heightOutputInches <- renderText({ 
        input$height
      })
      output$heightOutputMeters <- renderText({ 
        as.numeric(input$height) * 0.0254
      })
      output$weightOutputPounds <- renderText({ 
        input$weight
      })
      output$weightOutputkg <- renderText({ 
        as.numeric(input$weight) * 0.453592
      })
      output$bmi <- renderPrint({
          computeBMI(as.numeric(input$height),as.numeric(input$weight))
      })
  }
)