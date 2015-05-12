# Code from slidify document
# FHS, May 11, 2015

library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Interactive Investment Return Calculator"),
    sidebarPanel(
        sliderInput('amt', 'Starting investment value', 500, min=0, max=1000, step=25),
        sliderInput('yrs', 'Number of years', 5, min=0, max=20, step=0.25),
        sliderInput('int', 'Annual rate of return (percent)',value = 5.0, min = 0.0, max = 15.0, step = 0.1)
    ),
    mainPanel(
        h3('Investment Return Calculator Documentation'),
        p('Calculates the future value of an investment given:'),
        p('- A starting investment value.'),
        p('- Number of years to hold the investment.'),
        p('- An annual rate of return.'),
        p('The simple formula is : fv = pv * (1 + int) ^ yrs'),
        p('Modify the parameters on the left and see the result below.'),
        h3('Calculated Future Value'),
        h4(textOutput("inputs1")),
        h4(textOutput("inputs2")),       
        h4(textOutput("future_amt"))
    )
))
