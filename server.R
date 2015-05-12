# server.R file
library(shiny)


library(UsingR)
data(galton)

shinyServer(
    function(input, output) {
        output$inputs1 <- renderText({paste("An initial investment of $", round(input$amt, digits=2), ",")})        
        output$inputs2 <- renderText({paste("with an annual rate of return of ", round(input$int, digits=1), "%,")})
        output$future_amt <- renderText({paste("would be worth $",  
            round(input$amt * (1 + input$int/100)^input$yrs, digits=2),
            " after ", round(input$yrs, digits=2), "years.")})               
    }
)

