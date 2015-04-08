# Titanic Workshop

Instructions and demo code for the Titanic Workshop at the 2015 SUNY
Albany Open Source Fair.

## Workshop Requirements:

1. You must have access to a laptop for personal use during the
   workshop. I don't have extras, sorry.
2. Prior to the OSF, install R on the aforementioned laptop.

    http://cran.r-project.org/
 
3. Run packages.R (in this repo) to install several required
   packages. You will need an Internet connection for this script to
   work. Feel free to just copy paste it into R / RStudio or run it
   with:

    setwd("path to folder holding packages.R")
    source("packages.R")  

4. Download or clone this repo to the aforementioned laptop before
   coming to the workshop. This is workshop, not a demo.

   There will be code examples you will want to have access to. You
   do not need to know how to use Git to participate in this
   workshop. You can just download this repo as a ZIP file.

**WARNING:** This repo is NOT yet complete. I expect this to be ready by
February 10, 2015. But, not myself, I should probably recommend you do
a quick pull to sync with the repo the day of the workshop.

## Recommended Setup:

Quite frankly, the default R interface stinks. I strongly recommend
you install RStudio or some other R interface of your choice. The
course materials will be distributed and interacted with as .R and
.Rmd files. I recommend using an editor that can handle R markdown
files, in addition to plain-vanilla .R files.

- RStudio is the easiest to install and setup. I strongly recommend
  RStudio unless you have a compelling reason to use something else.

    - http://www.rstudio.co/mproducts/RStudio/#Desk

- ESS is the best for Emacs fans. In addition to ESS, you will want to
  install polymode.

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
knowledgeable of and support RStudio / ESS. Use other interfaces, such
as Statet, only if you feel confident you can set up and configure
them prior to the workshop.

If you have problems getting setup for the workshop, please file a bug
against this project to get my attention and I'll work through it with
you. If you have problems installing R, RStudio or Emacs / ESS, file a
bug against this README file. If you have trouble installing the
packages, file a bug against packages.R.
