#' read.test
#' Imports the Titanic testing data set.
#'
#' @return df A dataframe containing the imported dataset.
#'
read.test <- function( ) {
    if("test.csv" %in% dir("data")) {
        ## Imports the CSV data.
        df <- read.csv("data/test.csv")
        names(df) <- tolower(names(df))
        df$name = as.character(df$name)
        return(df)
    } else {
        ## Stops us if R can't find the data.
        stop("Unable to locate test data set.")
    }
}   ## read.test
