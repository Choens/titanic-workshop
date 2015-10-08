## ----02-DATA-FRAMES, echo=FALSE,eval=TRUE,purl=TRUE----------------------

## Learning Objectives -----------------
## - Data Frames
## - Working Directory
## - Import CSV
## - Filtering and Using Data Frames
## - Getting Help

## The slides for this presentation can be gotten at:
## https://choens.github.io/titanic-workshop/01-introduction-to-r.html


## ----WHAT-IS-A-DATA-FRAME, echo=FALSE,eval=TRUE,purl=TRUE----------------

## - Historically - called a data.frame.
## - Vectors are 1-dimensional *(length)*.
## - Vectors can contain only one data type *(integer, character, date)*.
##     - Vectors containing multiple data types are characters.
## - Data frames are multi-dimensional.
##     - Today, 2-dimensional data frames only.
##     - There is *no* limit to the dimensionality of your data.
## - Data frames can contain multiple data types.
##     - This is enormously useful for analytical projects.
## - This data structure is one of R's key competitive advantages.
##     - Pandas!


## ----YOUR-FIRST-DATA-FRAME,echo=TRUE,eval=TRUE,purl=TRUE-----------------

## Loads the iris data set. It provides the measurements (cm)
## of the sepal length and width, and petal length and width,
## respectively, for 50 flowers from 3 species of iris.
data(iris)


## ----DATA-FRAME-DIMENSIONS,echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## How many rows and how many columns are in iris?
dim(iris)


## ----DATA-FRAME-COL-NAMES,echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## What are the name of the columns?
names(iris)


## ----USE-A-COLUMN,echo=TRUE,eval=TRUE,purl=TRUE,results='hide'-----------

## It is EASY to access a single column of data for use in analysis.
iris$Sepal.Length


## ----AVERAGE-SEPAL-LENGTH,echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## The Sepal.Length column is numeric. We can find it's average.
mean( iris$Sepal.Length )


## ----LOWER-CASE-COLUMN-NAMES,echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## I'm lazy - I hate typing upper-case letters in column names.
## The tolower function can be used to make them lower case.
## We can then assign these new names to the col names of the
## iris data object. This makes life better.
names(iris) <- tolower( names(iris) )

names(iris)


## ----PRACTICE-LOAD-A-DATA-FRAME, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## Q1: Load the 'mtcars' data set
##     mtcars is a data set about cars from the late 70's.


## Q2: What is the average Miles Per Gallon (mpg) and the standard deviation of mpg?
##     The 'mean' and 'sd' functions will be helpful for figuring this out.


## ----WORKING-DIRECTORY, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'-----

## Knowing the current working directory is VERY important for
## interacting with external files. R prefers relative paths
## to external files. Avoid absolute paths when you can.
getwd()


## ----SET-WORKING-DIRECTORY, echo=TRUE,eval=FALSE,purl=TRUE,results='hide'----
## 
## ## Sets the working directory to a folder called sinking-boats.
## ## You don't want to run this unless it is a real folder.
## ## This isn't. So don't run it, until you modify it.
## setwd("/home/andy/sinking-boats")
## 

## ----PRACTICE-CREATE-A-NEW-R-PROJECT, echo=TRUE,eval=FALSE,purl=TRUE,results='hide'----
## 
## ## Create a new RStudio Project in the folder where you
## ## unzipped the workshop files. R will switch to this project
## ## automatically.
## 

## ----DIRECTORY-LIST-1, echo=TRUE,eval=FALSE,purl=TRUE,results='hide'-----
## 
## ## To see the list of files in the current working directory.
## dir()

## ----DIRECTORY-LIST-2, echo=TRUE,eval=FALSE,purl=TRUE,results='hide'-----
## 
## ## To see the list of files in the data folder.
## dir(path="data")
## 

## ----IMPORT-TITANIC-DATA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## Imports the Titanic training data set from the data folder.
## After running this, you should see the tit_train data set in the
## Environment tab in RStudio.
ti_train <- read.csv("data/train.csv", as.is=TRUE)


## ----PRACTICE-EXPLORE-TITANIC-DATA, echo=TRUE,eval=TRUE,purl=TRUE,results='hide'----

## Compactly display the structure of an arbitrary R object.
## This works on objects other than data frames, but that is
## what most people will use it for most often.
str(ti_train)


## ----WHAT-WAS-THAT-COMMAND, echo=TRUE,eval=FALSE,purl=TRUE---------------
## 
## ## When you can't remember the name of the command you
## ## are looking for, RStudio offers command and variable
## ## completion to help make life easier.
## is.
## 

## ----LOCAL-HELP, echo=TRUE,eval=FALSE,purl=TRUE--------------------------
## 
## ## Sometimes you need help with a specific command.
## ## R's built-in help is good. Not perfect. But good.
## help(round)
## 
## ## Hackers are universally lazy (that's why we became
## ## hackers). Typing help is too much work. A question
## ## mark accomplishes the same thing.
## ?round
## 

