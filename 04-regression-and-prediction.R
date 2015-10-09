## ----04-REGRESSION-AND-PREDICTION, echo=FALSE,eval=TRUE,purl=TRUE--------

## Learning Objectives -----------------
## - Logistic Regression
## - Prediction
## - Export CSV

## Slides URL: https://choens.github.io/titanic-workshop/04-regression-and-prediction.html


## ----IMPORT-DATA, echo=TRUE,eval=TRUE,purl=TRUE--------------------------

## Imports the training data.
ti_train <- read.csv("data/train.csv")
names(ti_train) <- tolower( names(ti_train) )

## Imports the test data.
ti_test <- read.csv("data/test.csv")
names(ti_test) <- tolower( names(ti_test) )


## ----MODEL-1-EVERYONE-LIVES, echo=TRUE,eval=TRUE,purl=TRUE---------------

## This is, quite possibly the world's worst Titanic model.
## This is really here to demonstrate cbind() and write.csv().
## And the laughs. Mostly the laughs.
model_stupid = cbind( passengerid = ti_test$passengerid, survived=1 )
write.csv(model_stupid, file = "models/stupid.csv", row.names=FALSE)


## ----MODEL-2-EVERYONE-DIES, echo=TRUE,eval=TRUE,purl=TRUE----------------

## This just can't be as bad. It just can't be.
## This really is here for completeness and the laughs.
model_everyone_dies = cbind( passengerid = ti_test$passengerid, survived=0 )
write.csv(model_everyone_dies, file = "models/everyone-dies.csv", row.names=FALSE)


## ----MODEL-3-SEX-DEMO, echo=TRUE,eval=FALSE,purl=TRUE--------------------
## 
## ## Builds a model using sex to predict survival.
## model_sex <- glm( survived ~ sex, family = binomial, data = ti_train )
## model_sex
## 

## ----MODEL-3-SEX-PLOTTED, echo=TRUE,eval=FALSE,purl=TRUE-----------------
## 
## ## You can visually look at your model
## ## by using plot(). This code is commented out
## ## because this doesn't export to HTML well.
## plot(model_sex)
## 

## ----MODEL-3-SEX-PREDICTION, echo=TRUE,eval=TRUE,purl=TRUE---------------

## Creates a new vector, called survived.
## Predict.glm takes model_sex and applies it to ti_test.
survived <- predict.glm(model_sex,
                        newdata = ti_test,
                        type = "response"
                        )

## We round these off, because Kaggle's survival rules are clear.
## The survived col must be 1 or 0.
survived <- round(survived,0)

write.csv(cbind(passengerid = ti_test$passengerid, survived = survived)
          ,file = "models/sex.csv"
          ,row.names=FALSE
         )


## ----MODEL-4-SEX-PCLASS, echo=FALSE,eval=TRUE,purl=TRUE------------------

## This is our last model.
## Uses sex + pclass to predict survival.
model_sex_pclass <- glm( survived ~ sex + pclass, family = binomial, data = ti_train )
model_sex_pclass


## ----MODEL-4-SEX-PCLASS-PREDICTION, echo=TRUE,eval=TRUE,purl=TRUE--------

## Creates a new vector, called survived.
## Predict.glm takes model_sex_pclass and applies it to ti_test.
survived <- predict.glm(model_sex_pclass,
                        newdata = ti_test,
                        type = "response"
                        )

## We round these off, because Kaggle's survival rules are clear.
## The survived col must be 1 or 0.
survived <- round(survived,0)

write.csv(cbind(passengerid = ti_test$passengerid, survived = survived)
          ,file = "models/sex+pclass.csv"
          ,row.names=FALSE
         )


## ----MODEL-5-INTERACTIONS, echo=FALSE,eval=TRUE,purl=TRUE----------------

## This is our last model.
## Uses sex + pclass to predict survival.
model_interaction <- glm( survived ~ sex * pclass, family = binomial, data = ti_train )
model_interaction


## ----MODEL-5-INTERACTION-PREDICTION, echo=TRUE,eval=TRUE,purl=TRUE-------

## Creates a new vector, called survived.
## Predict.glm takes model_sex_pclass and applies it to ti_test.
survived <- predict.glm(model_interaction,
                        newdata = ti_test,
                        type = "response"
                        )

## We round these off, because Kaggle's survival rules are clear.
## The survived col must be 1 or 0.
survived <- round(survived,0)

write.csv(cbind(passengerid = ti_test$passengerid, survived = survived)
          ,file = "models/interaction.csv"
          ,row.names=FALSE
         )


## ----MODEL-5-SUMMARY, echo=FALSE,eval=TRUE,purl=TRUE---------------------

## Using summary() on a model returns lots of info.
summary(model_interaction)


