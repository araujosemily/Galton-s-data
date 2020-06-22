###R code for preparing the Week 4 Assignment of the Developing Data Products course

#Galton's data on the heights of parents and their children
#Description
#Galton (1886) presented these data in a table, showing a cross-tabulation of 928 adult children born to 205 fathers and mothers, by their height and their mid-parent's height. He visually smoothed the bivariate frequency distribution and showed that the contours formed concentric and similar ellipses, thus setting the stage for correlation, regression and the bivariate normal distribution.

#Usage
#data(Galton)
#Format
#A data frame with 928 observations on the following 2 variables.

#parent
#a numeric vector: height of the mid-parent (average of father and mother)

#child
#a numeric vector: height of the child

#Details
#The data are recorded in class intervals of width 1.0 in. He used non-integer values for the center of each class interval because of the strong bias toward integral inches.

#All of the heights of female children were multiplied by 1.08 before tabulation to compensate for sex differences. See Hanley (2004) for a reanalysis of Galton's raw data questioning whether this was appropriate.



#References

#Galton, F. (1886). Regression Towards Mediocrity in Hereditary Stature Journal of the Anthropological Institute, 15, 246-263

#server.R
library(shiny)
library(HistData)

data("Galton")

shinyServer(function(input, output){
    model1 <- lm(child ~ parent, data = Galton)
    
    model1pred <- reactive({
        parentInput <- input$sliderparent
        predict(model1, newdata = data.frame(parent = parentInput))
    })
    
    output$plot1 <- renderPlot({
        parentInput <- input$sliderparent
        
        plot(Galton$parent, Galton$child, xlim = c(60, 74), ylim = c(60,74), xlab= "Parent's heights (inch)", ylab = "Children's heights (inch)", bty = "n", pch = 16)
        if(input$showModel1){
            abline(model1, col = "red", lwd = 2)
        }
        
        legend(1.5, 90, "Linear Model Prediction", col = c("red", "blue"), lwd = c(2,2), bty = "n", cex = 1.2)
        points(parentInput, model1pred(), col = "red", pch = 16, cex = 1.6)
    })
    
    output$pred1 <- renderText({
        round(model1pred(),2)
    })
})