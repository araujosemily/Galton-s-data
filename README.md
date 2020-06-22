# Galton-s-data
Reproducible Pitch Presentation  -  As a part of the Week 4 assignment of the **Developing Data Products** course

## ***Reproducible Pitch Presentation***

As a part of the Week 4 assignment of the **Developing Data Products** course, this presentation is intended to describe the *Shiny App* that I created.

The presentation has been created in *RStudio* using *Slidify* and has been deployed to the *Shiny* server, as requested. It is accessible at https://rpubs.com/araujosemily

The code for the *Shiny App*, both the ui.R and server.R files, can be found on my github profile at: https://github.com/araujosemily/Galton-s-data/edit/master/README.md

The application can be found at http://araujosemily.shinyapps.io/Sons?_ga=2.182873381.2008732203.1592836417-717856172.1592836417

## *Overview*

The *Shiny App* employs the *Galton's data*, which consists of a table, showing a cross-tabulation of 928 adult children born to 205 fathers and mothers, by their height and their mid-parent's height. 

The *Shiny App* predict heights of the sons as a function of the heights of their parents and fits a linear model.

- The user can select a value of the parent heights from the slider to get the corresponding estimated children heights.
- The submit button must be clicked to get a response
- The fitted line can be displayed or not by clicking on the checkbox
