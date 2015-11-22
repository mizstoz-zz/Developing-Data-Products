library(shiny)

library(datasets)
data(swiss)

library(shiny)
shinyUI(
  navbarPage("Multivariable Regression Example in R",
             tabPanel("About",
                      mainPanel(
                        h3('Multivariable Regression Example in R'),
                        br(),
                        h4('Description'),
                        p(
                          'This multivariable regression example uses the Swiss Fertility ',
                          'and Socioeconomic Indicators (1888) Data which provide ',
                          'standardized fertility measure and socio-economic ',
                          'indicators for each of 47 French-speaking provinces ',
                          'of Switzerland at about 1888.'
                        ),
                        br(),
                        h4('Usage'),
                        p(
                          'Select at least one predictor to be used in predicting ',
                          'the Fertility. The selected predictors will be used ',
                          'to fit a generalized linear model on the dataset.  Every selection ',
                          'will immediately triggers a new model fit and an update of the ',
                          'summary and the visualizations.'
                        ),
                        br(),
                        h4('Format'),
                        p(
                          'A data frame with 47 observations on 6 variables, ',
                          'each of which is in percent, i.e., in [0, 100].'
                        ),
                        p(
                          '[,1]	 Fertility	Ig, "common standardized fertility measure"'
                        ),
                        p(
                          '[,2]	 Agriculture	 % of males involved in agriculture as occupation'
                        ),
                        p(
                          '[,3]	 Examination	 % draftees receiving highest mark on army examination'
                        ),
                        p(
                          '[,4]	 Education	 % education beyond primary school for draftees.'
                        ),
                        p(
                          '[,5]	 Catholic	 % "catholic" (as opposed to "protestant").'
                        ),
                        p(
                          '[,6]	 Infant.Mortality	 live births who live less than 1 year.'
                        ),
                        p(
                          'All variables but "Fertility" give proportions of the population.'
                        )
                      )
             ),
             
             tabPanel("Plot",
                      sidebarPanel(
                        checkboxGroupInput (
                          "predictors",
                          "Select predictor(s):",
                          names(swiss)[-1]
                        )
                      ),
                      mainPanel(
                        h4('Linear Regression Summary:'),
                        verbatimTextOutput('fit'),
                        br(),
                        h4('Graph Output:'),
                        plotOutput('plot1'),
                        plotOutput('plot2'),
                        plotOutput('plot3')
                      )
                      
                      
             )
  )
)