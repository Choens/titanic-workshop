## ----01-INTRODUCTION-TO-R, echo=FALSE,eval=TRUE,purl=TRUE----------------

## Learning Objectives -----------------
## - RStudio
## - R semantics, structure, etc.
## - Getting Help
## - Atomic Data Types
## - Vectors


## ----STARTING-RSTUDIO, echo=FALSE,eval=TRUE,results='hide',purl=TRUE-----

## To start RStudio: Click on the RStudio icon.
## Open the R Script you would like to run.
## Sink a very large boat.


## ----TWO-WAYS-TO-RUN-CODE, eval=TRUE,echo=FALSE,purl=TRUE----------------

## You can run code in one of three ways:
## 1. REPL: The interactive console in the bottom left of RStudio.
## 2. R Scripts: Write a script and run it via the run command.
##    - To run the code, put your cursor on the row you want to run and hit
##      [CTRL]+[ENTER] OR hit the "Run" button in the top right hand corner.


## ----AN-OVERLY-COMPLICATED-CALCULATOR, eval=TRUE,echo=TRUE,purl=TRUE,results="hide"----

## You can use R as an over-powered calculator.
## Type the following into the REPL console or run them from the 
## 01-introduction-to-r.R script.

1 + 1

sqrt(9)             ## sqrt() is a function.

sqrt(1+5+6-3)       ## We can pass values to functions and get results.


## ----PRACTICE-CALCULATOR, eval=TRUE,echo=TRUE,purl=TRUE,results="hide"----

## What is the value of (1+2)*(1+1+1) ?

## Write the "equation" here and run it.


## ----ASSIGNMENT-OPERATORS-EQUALS, eval=TRUE,echo=TRUE,purl=TRUE,results='hide'----

## The equals sign can be used to assign value to a variable.
a = 1
a


## ----ASSIGNMENT-OPERATORS-AO, eval=TRUE,echo=TRUE,purl=TRUE,results='hide'----

## But the preferred assignment operator is "<-".
## RStudio Shortcut: [Alt] [-] will insert the R assignment operator.

a <- 1
a


## ----PRACTICE-ASSIGNMENT-OPERATOR, echo=TRUE,eval=TRUE,purl=TRUE---------

## Create a variable "sank" and give it a value of "1912". 

## Replace this comment with some code.

## ----ATOMIC-DATA-TYPES-NUMERIC, echo=TRUE,eval=FALSE,purl=TRUE-----------
## 
## ## Numeric -----------------------------
## pi <- 3.14159
## 
## ## We can confirm this:
## typeof(pi)          ## This is a function we will use again.
## 

## ----ATOMIC-DATA-TYPES-INTEGERS-FUNNY, echo=TRUE,eval=FALSE,purl=TRUE----
## 
## ## Integers are funny. They have to be created consciously.
## starboard <- 10
## typeof(starboard)           ## I told you. This is a useful function.
## 

## ----ATOMIC-DATA-TYPES-INTEGERS, echo=TRUE,eval=FALSE,purl=TRUE----------
## 
## ## Integers must be created consciously.
## starboard <- as.integer(10)
## typeof(starboard)
## 

## ----ATOMIC-DATA-TYPES-IS-INTEGER, echo=TRUE,eval=FALSE,purl=TRUE--------
## 
## ## We can (double) confirm this:
## is.integer(starboard)
## 

## ----NUMERICS-ARE-SAFER-1, echo=TRUE,eval=FALSE,purl=TRUE,results="hide"----
## 
## ## Question: What is the assigned value of foo?
## port <- as.integer(10)
## port
## 

## ----NUMERICS-ARE-SAFER-2, echo=TRUE,eval=FALSE,purl=TRUE,results="hide"----
## 
## ## Question: What is the assigned value of foo?
## port <- as.integer(3.14159)
## port
## 

## ----NUMERICS-ARE-SAFER-3, echo=TRUE,eval=FALSE,purl=TRUE,results="hide"----
## 
## ## Question: What is the assigned value of foo?
## port <- 3.3 * 4
## port
## 

## ----NUMERICS-ARE-SAFER-4, echo=TRUE,eval=FALSE,purl=TRUE,results="hide"----
## 
## ## Question: What is the assigned value of foo?
## port <- as.integer(3.3) * 3
## port
## 

## ----ATOMIC-DATA-TYPES-LOGICAL-LTE, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## LOGICAL variables are often created in the process of comparing things.
starboard <- 10; port <- 15;

## Question: Is this TRUE or FALSE?
starboard <= port   ## Yeah - It is a little nonsensical.


## ----ATOMIC-DATA-TYPES-LOGICAL-E, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## Question: Is this TRUE or FALSE?
port = starboard


## ----ATOMIC-DATA-TYPES-LOGICAL-EE, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## LOGICAL variables are often created in the process of comparing things.
starboard <- 10; port <- 15;

## THIS IS HOW YOU COMPARE THINGS!
starboard == port


## ----ATOMIC-DATA-TYPES-CHARACTER, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## You can use " or ' to create a character.
## There are subtle differences, mostly if your variable has
## either in it.

## Some character vars:
first_name <- "Captain"
last_name <- "Smith"

## Let's put them together!
paste(first_name, last_name, sep=" ")


## ----ATOMIC-DATA-TYPES-DATE-1, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## POSIX Dates are EASY!
## Like an integer, you have to be explicit.
aft <- as.Date("2015-01-01")

## typeof
typeof(aft)         ## typeof may return something you don't expect.


## ----ATOMIC-DATA-TYPES-DATE-2, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## Kinda looks like a character var.
aft


## ----PRACTICE-ATOMIC-DATA-TYPES, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## 1: Create an variable called "my_age" and then
##    assign it an integer equal to your age.

## 2: Using the following code, which is bigger (later)? a_day or today?

## This creates two date vars.
a_day <- as.Date('2015-06-30')
today <- Sys.Date()

## Use this space to compare a_day to today.
##


## ----VECTORS, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"---------------

yard_arm <- c(1,2,3,4,5)      ## The Titanic's maiden voyage
                              ## lasted for five days.
yard_arm


## ----VECTORS-LENGTH-1, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"------

## The variable yard_arm has five distinct values in it.
length(yard_arm)


## ----VECTORS-LENGTH-2, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"------

## This variable only has one value.
starboard <- 1
length(starboard)


## ----VECTORS-INDEXING-1, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## Returns the THIRD value stored in yard_arm.
yard_arm[3]         ## The square brackets are important.
                    ## They let us explicitly reference specific
                    ## values in the vector.


## ----VECTORS-INDEXING-2, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## Returns ALL values in yard_arm with a value greater than 2.
yard_arm[ yard_arm>2 ]        ## The also make it possible
                              ## to get ranges of values.


## ----ARITHMETIC-ON-VECTORS-1, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## We can do math on vectors.
starboard <- c(25,30,40,45,50)
port <- c(90,70,50,30,10)

starboard + port


## ----ARITHMETIC-ON-VECTORS-2, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## We can do math on vectors.
starboard <- c(25,30,40,45,50)
port <- 3

starboard * port


## ----OPERATING-ON-VECTORS-1, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## We can do math on vectors.
starboard <- c(25,30,40,45,50)

mean(starboard)


## ----OPERATING-ON-VECTORS-2, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## We can do math on vectors.
starboard <- c(25,30,40,45,50)

sd(starboard)


## ----OPERATING-ON-VECTORS-3, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"----

## We can do math on vectors.
starboard <- c(25.1,389.776,43.6,41.3,57.56)

round(starboard,1)


## ----PRACTICE-VECTORS, echo=TRUE,eval=TRUE,purl=TRUE,results="hide"------

## 1: Create an vector, with a length of 4. Put the years
##    you went to highschool into this vector.
##    "Numeric" integers are fine for this. You don't need dates.
##    If you need help, try this:
##    ?c 

## 2: Use an index and a greater than or less than boolean operator
##    to return the last three years you went to highschool.

## 3: Run typeof on your new highschool years variable.
##    What is the output.
##    Does it surprise you?

## 4: What was the "average" year you went to highschool?
##    Yes. This is a completely meaningless number. Sorry.


