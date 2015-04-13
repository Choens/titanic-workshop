## #############################################################################
## Packages
##
## Collection of packages needed for the OSF Titanic Workshop.
## Shortened version of my usual packages.R file: 
##
## You can find these packages on CRAN:
## http://cran.r-project.org/
##
## #############################################################################

## Just in case you have some old stuff lying around.
update.packages(ask=FALSE)

## Amelia II "multiply imputes" missing data in a single cross-section
## (such as a survey), from a time series (like variables collected
## for each year in a country), or from a time-series-cross-sectional
## data set (such as collected by years for each of several
## countries).
install.packages("Amelia")

## Misc functions for training and plotting classification and
## regression models.
install.packages("caret")

## Functions for clustering (by Rousseeuw et al.).
install.packages("cluster")

## A grammar of data manipulation. A fast, consistent tool for working with data
## frame like objects, both in memory and out of memory.
install.packages("dplyr")

## An implementation of an interactive grammar of graphics, taking the
## best parts of ggplot2, combining them with shiny's reactive
## framework and drawing web graphics using vega.
install.packages("ggvis")

## Provides useful tools for working with HTTP. The API is based
## around http verbs (GET(), POST(), etc) with pluggable components to
## control the request (authenticate(), add_headers() and so on).
install.packages("pander")

## Classification and regression based on a forest of trees using
## random inputs.
install.packages("randomForest")

## Convert R Markdown documents into a variety of formats including
## HTML, MS Word, PDF, and Beamer.
install.packages("rmarkdown")
