## #############################################################################
## Packages
##
## Collection of packages needed for the OSF Titanic Workshop.
## Shortened version of my usual packages.R file: 
##
## - Loads packages. Will attempt to install any / all missing packages.
## - Package configuration should be placed in config.R.
##
## You can find these packages on CRAN:
## http://cran.r-project.org/
##
## #############################################################################



## =============================================================================
## Packages
##
## - Uncomment required packages.
##
## Failure to compile a package may be due to out of date global packages.
##    update.packages()
## And try to compile the package again.
##
## =============================================================================

packages <- c(
    "cluster"        ## Functions for clustering (by Rousseeuw et al.)
    ,"dplyr"          ## A grammar of data manipulation. A fast, consistent
                      ## tool for working with data frame like objects, both
                      ## in memory and out of memory.
    ,"ggvis"          ## An implementation of an interactive grammar of
                      ## graphics, taking the best parts of ggplot2,
                      ## combining them with shiny's reactive framework and
                      ## drawing web graphics using vega.
    ,"httr"           ## Provides useful tools for working with HTTP. The API
                      ## is based around http verbs (GET(), POST(), etc) with
                      ## pluggable components to control the request
                      ## (authenticate(), add_headers() and so on).
    ,"pander"         ## Contains some functions catching all messages,
                      ## stdout and other useful information while evaluating
                      ## R code and other helpers to return user specified
                      ## text elements (like: header, paragraph, table, image,
                      ## lists etc.) in Pandoc's markdown or several type of R
                      ## objects similarly automatically transformed to
                      ## markdown format. Also capable of exporting/converting
                      ## (the resulting) complex Pandoc documents to e.g.
                      ## HTML, PDF, docx or odt. This latter reporting feature
                      ## is supported in brew syntax or with a custom
                      ## reference class with a smarty caching backend.
    ,"rmarkdown"      ## Convert R Markdown documents into a variety of
                      ## formats including HTML, MS Word, PDF, and Beamer.
)

if(!exists("packages")) {
    stop("The packages vector does not exist. Check your commas. It is probably a commas problem.")
}

#' Function to load a vector of packages. If a package is missing, it tries
#' to install the package for you if you set install_missing to TRUE.
#'
#' @param packages List of packages to install.
#' @param install_missing Must be either TRUE or FALSE. If TRUE, load_packages
#' will try to install all missing packages. TRUE is the default value. If
#' FALSE, load_packages will try to load the package and return a warning to
#' stderr and will return 5.
#'
#' @return 1 or 5. If a 1 is returned, all went well. If 5 is returned, there
#' was an error.
#'
load_packages = function(packages, install_missing = TRUE) {
    
    if( length(packages) == 0 ) return(1)
    
    ## Identifies missing packages ---------------------------------------------
    missing_packages <- packages[!packages %in% rownames(installed.packages())]
    
    ## Attempts to install missing packages ----------------------------------------
    if( length(missing_packages) > 0 & install_missing == TRUE ) {
        warning("You are missing packages from packages.")
        warning("pdating current packages before installing new packages.")
        update.packages(ask=FALSE)
        message( "Installing the following packages:" )
        message( missing_packages)
        message( "This may take several minutes to complete." )
        install.packages( missing_packages, dependencies = TRUE )
    }
    ## Identifies missing packages ---------------------------------------------
    missing_packages <- packages[! packages %in% rownames(installed.packages())]
    
    
    ## Loads packages, or returns some warnings and 5. -------------------------
    if(length(missing_packages) == 0 || install_missing == FALSE ) {
        
        load_success = rep(FALSE, length(packages))
        
        for(i in 1:length(packages)) {
            load_success[i] = library(packages[i]
                          , character.only = TRUE
                          , logical.return = TRUE
                                      )
        }
        
        if(min(load_success) == 0) {
            warning("Unable to load all packages.")
        } else {
            return(1)
        }
    } else  {
        warning("Packages not loaded.")
        return(5)
    }
}



## =============================================================================
## Load Packages
##
## Loads all packages required by the project.
## =============================================================================
package_results = load_packages(packages = packages, install_missing = TRUE)
if(package_results != 1) {
    message("Attempted to load the following packages:")
    message(packages)
    stop("Package error.")
}

rm(load_packages)
rm(package_results)



## Package configuration should be placed in config.R.
