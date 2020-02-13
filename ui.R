library(shiny)

shinyUI(fluidPage(
    titlePanel("Predict Temp from Ozone"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderOzone", "What is the level of Ozone in NewYork Air?", 1, 168, value = 87),
            checkboxInput("showModel1", "Show/Hide Model 1", value = T),
            checkboxInput("showModel2", "Show/Hide Model 2", value = T),
            submitButton("Submit")
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted temperature from Model 1:"),
            textOutput("pred1"),
            h3("Predicted temperature from Model 2:"),
            textOutput("pred2")
        )
    )
))