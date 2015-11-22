library(shiny)

library(datasets)
data(swiss)
options(warn = -1)

LinearModel <- function(predictors) 
{
  if ( !is.null(predictors) ) 
  {
    lm(formula = paste('Fertility ~ ', paste(predictors, collapse = ' + ')), data = swiss)
  } 
  else 
  {
    NA
  }
}

SummaryOutput <- function(fit) 
{
  if( !is.na(fit) ) 
  {
    summary(fit)
  }
}

Modelplot <- function(fit, n) 
{
  if ( !is.na(fit) ) 
  {
    plot(fit, which = n)
  }
}

shinyServer(
  function(input, output) {
    fit <- reactive(LinearModel(input$predictors))
    output$fit <- renderPrint(SummaryOutput(fit()))
    output$plot1 <- renderPlot(Modelplot(fit(), 1))
    output$plot2 <- renderPlot(Modelplot(fit(), 2))
    output$plot3 <- renderPlot(Modelplot(fit(), 3))
  }
)