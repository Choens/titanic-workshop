#' read.train
#' Imports the Titanic training data set.
#'
#' @return df A dataframe containing the imported dataset.
#'
read.train <- function( ) {
    ## Test to make sure there is something to import.
    if("train.csv" %in% dir("data")) {
        ## Imports the CSV data.
        df <- read.csv("data/train.csv")
        ## All the col names are lower case!
        names(df) <- tolower(names(df))
        ## Simplifies the name col
        df$name = as.character(df$name)
        return(df)
    } else {
        ## Stops us if R can't find the data.
        stop("Unable to locate train data set.")
    }
}   ## read.train
