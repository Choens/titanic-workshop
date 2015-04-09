# Titanic Workshop

Instructions and demo code for the Titanic Workshop at the 2015 SUNY
Albany Open Source Fair.

**Note:** Workshop materials are a work in progress.

- The packages.R file is finalized, unless someone reports a bug in
  the code. Workshop participants can use packages.R to install
  packages that will be needed for the workshop. See below for more
  details.
- The presentation and paricipant materials will be finalized by the
  morning of February 13, 2015. This README will be updated to reflect
  this updated information at that time.

## Workshop Requirements:

1. You must have access to a laptop for personal use during the
   workshop. Unfortunately, I don't have any extras.
2. Prior to the OSF, install R on the aforementioned laptop. Binaries
   can be downloaded from: http://cran.r-project.org/

   To install R on Ubuntu more easily (I assume you are CLI friendly):

    sudo apt-get install \
      build-essential \
      libcurl4-openssl-dev \
      r-base-dev \
      r-base-html \
      r-doc-html \
      r-doc-info \
      r-recommended

   Linux users will need to install some basic dev packages. On
   Windows, R installs binaries by default. On Linux install.packages()
   downloads the source code and compiles locally.

3. Run the packages.R file (in this repo) to install several required
   packages. You will need an Internet connection for this script to
   work. Feel free to just copy paste it into R / RStudio or run it
   with:

    setwd("full/path/to/folder/holding/packages.R")
    source("packages.R")

   If the above code doesn't work or doesn't make sense to you, just
   copy / paste the CODE from packages.R and paste them into RStudio
   at the command prompt and let it spin. R may ask you where you
   would like to download packages from. Any PA or New England mirror
   should be fine.

4. Download or clone this repo to the aforementioned laptop before
   coming to the workshop. This is workshop, not a demo.

   There will be code examples you will want to have access to. You
   do not need to know how to use Git to participate in this
   workshop. You can just download this repo as a ZIP file.

## Recommended Setup:

Quite frankly, the default R interface stinks. I strongly recommend
you install RStudio or some other R interface of your choice. The
course materials will be distributed and interacted with as .R and
.Rmd files. I recommend using an editor that can handle Rmarkdown
files, in addition to plain-vanilla .R files.

- RStudio is the easiest to install (on all platforms) and setup. I
  strongly recommend RStudio unless you have a compelling reason to
  use something else.

    - http://www.rstudio.co/mproducts/RStudio/#Desk

- ESS is the best for Emacs fans. In addition to ESS, you will want to
  install polymode. I assume anyone wanting to use Emacs is pretty
  independent, but here are some potentially useful links:

    - http://ess.r-project.org/
    - https://github.com/vspinu/polymode
    - If you would like to know more about how to set
      these up you can look at my two public Emacs repos:
    
        - Windows - https://github.com/choens/.emacs.d.win
        - Linux - https://github.com/choens/.emacs.d.lin
    
- Statet is the best option of fans of Eclipse.
    
    - http://www.walware.de/goto/statet

There are dedicated R interfaces for other popular text editors such
as Sublime and Vim. Participants may use any R interface, including
the default R interpreter, but the presenter only claims to be
knowledgeable of and support RStudio / Emacs+ESS. Use other
interfaces, such as Statet, only if you feel confident you can set up
and configure them prior to the workshop. Remember, you must be able
to work effectively with Rmarkdown files, which intersperse R code
with plain text.

If you have problems getting setup for the workshop, please file a bug
against this project to get my attention and I'll work through it with
you. If you have problems installing R, RStudio or Emacs / ESS, file a
bug against this README file. If you have trouble installing the
packages, file a bug against packages.R.
