Assignment Part 2
========================================================
author: Li Weixiong, Winston
date: 20 Nov 2015


Introduction
========================================================

The purpose of this document is to pitch the app developed
as part of assignment.

- Idea of app taken from Regression Model class
- Demonstrate a multivariable regression example
- Uses Linear Model so as to compliment what is taught in class

Why this application?
========================================================
The idea of creating this application is to allow for easy manipulation of variable to show how does the change in the variable combinations affect the model fit.

Rather than having to manually run the commands in rStudio, it gives an easy access to the user whom, during the course of learning, do not have constant access to rStudio to validate what is be learnt as it progress.

Structure of the Application
========================================================
The application has a list of predictor checkbox that perform the following:
- Allow the user to select one or multiple predictor to be used
- The selected predictors will be used to fit a linear model
- Every selection will triggers a new model fit and update the summary and visualizations

Upon the selection of the predictor(s):
- LinearModel Function called by filling up the predictors for the linear regression
- SummaryOutput called to display the linear regression summary
- ModelPlot called to display 3 model (Residuals vs Fitted, Normal Q-Q and Scale-Location)


Structure of the Application (Con't)
========================================================
The output of the new model upon selection will consist of:
- summary of the linear regression
- 3 graph (Residuals vs Fitted, Normal Q-Q and Scale-Location)
![plot of chunk unnamed-chunk-3](Assignment Part 2-figure/unnamed-chunk-3-1.png) 
