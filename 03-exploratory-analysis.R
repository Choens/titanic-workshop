## ----DATA-IMPORT, echo=TRUE,eval=TRUE,purl=TRUE--------------------------

## Imports the Titanic Training Data and makes the col names lower case.
ti_train <- read.csv("data/train.csv", as.is=TRUE)
names(ti_train) <- tolower( names(ti_train) )

## Displays the number of rows / columns in the data frame.
dim(ti_train)


## ----WHAT-DID-WE-IMPORT, echo=TRUE,eval=TRUE,purl=TRUE-------------------

# Fast, compact way of reviewing what data was imported.
str(ti_train)


## ----SELECTING-DATA-INDEXES-NAME, echo=TRUE,eval=TRUE,purl=TRUE----------

## Selects first 6 entries in
## the name column.
head( ti_train$name )


## ----SELECTING-DATA-INDEXES-INDEXING, echo=TRUE,eval=TRUE,purl=TRUE------

## Selects first 6 entries in
## the name column.
head( ti_train[,"name"] )


## ----SELECTING-DATA-NUMERIC-INDEX, echo=TRUE,eval=TRUE,purl=TRUE---------

## We can select the first six entries in the names columns numerically too.
head( ti_train[,4] )


## ----SELECT-A-ROW, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----------

## Returns all rows where "name" is exactly "Montvila, Rev. Juozas".
## There is only one such row.
ti_train[ti_train$name == "Montvila, Rev. Juozas", ]


## ----DEMO-FILTER-DATA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'------

## This returns all rows of ti_train where age is over 75.
## But why does it look so strange?
## You should run this code to confirm that is returns many NULL rows.
ti_train[ti_train$age > 75, ]


## ----FILTER-DATA-NA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'--------

## This gives us ONLY those who are over 75 because it 
##  removes all rows where age is NA (like NULL).
ti_train[ti_train$age > 75 & !is.na(ti_train$age), ]


## ----filter-na-length, echo=TRUE, eval=TRUE, results="asis"--------------

length( ti_train$age[ is.na(ti_train$age) ] )


## ----filter-dplyr-show, echo=TRUE, eval=FALSE, results="asis"------------
## 
## library(dplyr)
## filter(ti_train, age > 75)
## 

## ----filter-dplyr-actual, echo=FALSE, eval=TRUE, warning=FALSE, message=FALSE, results="raw"----

##suppressMessages( library(dplyr) )
library(dplyr)
filter(ti_train, age > 75)[,1:5]


## ----survival-n-show, echo=TRUE, eval=TRUE, results="raw"----------------

## Remember: 1 == Yes, 0 == No
tbl <- table(ti_train$survived)
tbl


## ----survival-prop-show, echo=TRUE, eval=TRUE, results="raw"-------------

prop.table( tbl )


## ----one-factor-table, echo=TRUE, results="raw"--------------------------

## One Factor Table.
table(ti_train$sex)


## ----two-factor-table-1, echo=TRUE, results="raw"------------------------

## Creates a 2x2 Cross Tab
tbl <- table(ti_train$survived, ti_train$sex)
tbl


## ----two-factor-table-perc, echo=TRUE, results="raw"---------------------

## Uses the tbl object we created previously.
prop.table(tbl, margin=2)


## ----two-factor-table-summary, echo=TRUE, results="raw"------------------

## For our porpoises, p < .05 is significant.
summary(tbl)


## ----plot-sex, echo=TRUE, fig.align="center", fig.height = 3, fig.width=3----

## Using ggvis, not base R.
##library(ggvis)  

##ti_train %>% ggvis( ~sex, fill=~as.character(survived) ) %>% layer_bars()
    

## ----age-hist-all, echo=TRUE, fig.height=2, fig.width=3, fig.align="center"----

#### Plots a histogram of age. (You must remove NAs.)
##ti_train %>% filter(!is.na(age)) %>%
##        ggvis(~age) %>% layer_histograms( width=10)


## ----age-hist-survivors, echo=TRUE, fig.height = 2, fig.width=3, fig.align="center"----

#### Survivors Only
##ti_train %>%
##    filter(!is.na(age), survived == 1) %>%
##        ggvis(~age) %>%
##                layer_histograms( width=10)


## ----age-hist-not-survivors, echo=TRUE, fig.height = 2, fig.width=3, fig.align="center"----

#### Deceased Only
##ti_train %>%
##    filter(!is.na(age), survived == 0) %>%
##        ggvis(~age) %>%
##                layer_histograms( width=10)


## ----age-loess, echo=TRUE, fig.height=2.75, fig.width=5------------------

## ## SE is shown as a loess curve.
## ti_train %>%
##     filter( !is.na(age) ) %>%
##         ggvis(~age, ~survived) %>%
##             layer_smooths()


## ----age-densities, echo=TRUE, fig.height=2.5, width=3-------------------

##ti_train %>%
##    filter( !is.na(age) ) %>%
##        mutate(
##            Survived = as.factor( ifelse(survived == 1, "Yes", "No"))
##           ,Age = age ) %>%
##               ggvis( ~Age) %>%
##                   group_by(Survived) %>%
##                       layer_densities( fill=~Survived )



