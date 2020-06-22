shinyUI(fluidPage(
    titlePanel("To use the parent's heights to predict children's heights."),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderparent", "What is the parent height?", 60, 74, value = 65),
            checkboxInput("showModel1", "Show/Hide Linear Model", value = TRUE),
            submitButton("Submit")
        ),
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted child height from the linear model:"),
            textOutput("pred1"),
        )
    )
))
