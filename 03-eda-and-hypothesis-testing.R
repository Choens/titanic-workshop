## ----03-EDA-AND-HYPOTHESIS-TESTING, echo=FALSE,eval=TRUE,purl=TRUE-------

## Learning Objectives -----------------
## - More Data Management
## - Graphing/Plotting
## - Contingency Tables
## - Hypothesis Testing

## Slides URL: https://choens.github.io/titanic-workshop/03-eda-and-hypothesis-testing.html


## ----DATA-IMPORT, echo=TRUE,eval=TRUE,purl=TRUE--------------------------

## Imports the Titanic Training Data and makes the col names lower case.
ti_train <- read.csv("data/train.csv", as.is=TRUE)
names(ti_train) <- tolower( names(ti_train) )

## Displays the number of rows / columns in the data frame.
dim(ti_train)


## ----WHAT-DID-WE-IMPORT, echo=TRUE,eval=TRUE,purl=TRUE-------------------

# Fast, compact way of reviewing what data was imported.
str(ti_train)


## ----SELECTING-DATA-COLUMNS-NAME, echo=TRUE,eval=TRUE,purl=TRUE----------

## Selects first 6 entries in
## the name column.
head( ti_train$name )


## ----SELECTING-DATA-SQUARE, echo=TRUE,eval=TRUE,purl=TRUE----------------

## Selects first 6 entries in
## the name column.
head( ti_train[,"name"] )


## ----DEMO-SELECT-A-ROW, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'-----

## Returns all rows where "name" is exactly "Montvila, Rev. Juozas".
## There is only one such row.
ti_train[ti_train$name == "Montvila, Rev. Juozas", ]


## ----PRACTICE-FILTERING-DATA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## Returns all rows where the ticket cost is over 200.
## Remember, these are 1912 prices!
ti_train[ti_train$fare > 200, ]


## ----DEMO-TRICKY-FILTERING-DATA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## Returns all rows where age is over 75.
## What is different here?
ti_train[ti_train$age > 75, ]


## ----DEMO-FILTERING-DATA-NA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## This gives us ONLY those who are over 75 because it 
##  removes all rows where age is NA (like NULL).
ti_train[ti_train$age > 75 & !is.na(ti_train$age), ]


## ----DEMO-HOW-MANY-NAS, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'-----

## Returns the number of rows where the age column is NA.
## Filters a vector pulled from a Data Frame.
length( ti_train$age[ is.na(ti_train$age) ] )


## ----SUBSET, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----------------

## The subset command is another way to filter data.
## Is usually used to create a new object.
## Creating many objects --> confusion AND high memory use.
## But, subset handles NAs in a saner way.

ti_old <- subset(ti_train, age > 75)
View( ti_old )


## ----DEMO-CONTINGENY-TABLE-SEX, echo=TRUE,eval=TRUE,purl=TRUE------------

## Returns a contingency table of the sex column.
tbl_sex <- table( ti_train$sex )
tbl_sex


## ----DEMO-PRC-SEX, echo=TRUE,eval=TRUE,purl=TRUE-------------------------

## Returns the percentages.
prc_sex <- prop.table(tbl_sex)
prc_sex


## ----DEMO-BARPLOT-SEX, echo=TRUE,eval=TRUE,purl=TRUE, fig.height=4,fight.width=3,fig.align='center'----

## Plots the survival numbers from above.
barplot(tbl_sex)


## ----PRACTICE-PASSENGER-CLASS, echo=TRUE,eval=TRUE,purl=TRUE-------------

## Q1. Build a contingency table of passenger class (pclass).
##     Call it tbl_pclass.


## Q2. Build a percentages contingency table of passenger class.
##     Call it prc_pclass.


## Q3. Draw a barplot of passenger class.
##


## ----DEMO-HISTOGRAM-FARE, echo=TRUE,eval=TRUE,purl=TRUE, fig.width=4, fig.height=4,fig.align='center'----

## Returns a histogram passengers fare costs.
## Basic usage is easy and intuitive.
## You aren't going to publish this. But it is useful EDA.
hist(ti_train$fare)


## ----AGE-HIST, echo=TRUE,eval=TRUE,purl=TRUE-----------------------------

## Q1: Create a histogram chart showing the age of passengers.
##
##


## ----SURVIVAL, echo=TRUE,eval=TRUE,purl=TRUE-----------------------------

## Returns a row contingency table of the survived column.
## Remember: 1 == Yes, 0 == No
survival <- table( ti_train$survived )
survival


## ----DEMO-LIVED, echo=TRUE,eval=TRUE,purl=TRUE---------------------------

## Creates a new column, "lived" and fills it in.
## First, create a new column with NA data in it.
## Then, fill in the values you want.
ti_train$lived <- NA
ti_train$lived[ ti_train$survived == 1 ] <- "Yes"
ti_train$lived[ ti_train$survived == 0 ] <- "No"

## Returns a contingency table of the new lived column.
lived <- table( ti_train$lived )
lived


## ----LIVED-PROPORTIONS, echo=TRUE, eval=TRUE, purl=TRUE------------------

## Creates a contingency table with proportions.
## This is similar to how it is done in SQL.
prc_lived <- round( 100*prop.table( lived ), 2 )
prc_lived


## ----LIVED-BARPLOT, echo=TRUE,eval=FALSE,purl=TRUE-----------------------
## 
## ## Plots the lived proportions. Now fancier!
## ## Reverses Yes and No
## ## Labels the graph and the axes.
## ## Colors Output
## ## And adjusts the Y limit.
## barplot(sort(prc_lived, decreasing=FALSE),
##         main="Proportion of Titanic Passengers Who Lived",
##         xlab="Lived?",
##         ylab="Percent of Passengers",
##         col="darkblue",
##         ylim=c(0,100)
##         )
## 

## ----CHILDREN-MORE-LIKELY-TO-SURVIVE, echo=TRUE,eval=TRUE,purl=TRUE------

## Creates a new column, "child" and fills it in.
ti_train$child <- NA
ti_train$child[ ti_train$age <= 18 ] <- "Child"
ti_train$child[ ti_train$age > 18 ] <- "Adult"


## Returns a 2x2 contingency table.
child_survival <- table( ti_train$child,ti_train$lived )
child_survival


## ----CHILDREN-SURVIVAL-PROPORTIONS, echo=TRUE,eval=TRUE,purl=TRUE--------

## Proportion of children and adults who survived.
## Margin = 1 because 1 == ROWS, 2 == COLUMNS. ALWAYS
prop.table(child_survival, margin=1)


## ----CHILDREN-SURVIVAL-SIGNIFICANCE, echo=TRUE,eval=TRUE,purl=TRUE-------

## Hypothesis: Children are more likely to survive.
## Run prop.test against the values, NOT the proportions.
prop.test(child_survival, alternative = "greater")


## ----SUMMARY, echo=TRUE,eval=TRUE,purl=TRUE------------------------------

## The summary() function can be used
## to examine most R objects.
summary(child_survival)


## ----MOSAIC-PLOT, echo=TRUE,eval=TRUE,purl=TRUE,fig.width=4,fig.height=4,fig.align='center'----

## The mosaicplot is another way of visualizing
## complex relationships and can scale effectively
## for many variables.
mosaicplot(child_survival)


## ----PRACTICE-SEX-SURVIVAL, echo=TRUE,eval=TRUE,purl=TRUE----------------

## Q1: Create a 2x2 Contingency table for Lived and Sex.
##     Call it sex_survival.


## Q2: What is the proportion of men who lived, compared to
##     proportion of women?


## Q3: Is the observed difference between the sexes in the
##     survival rate statistically significant?
##


