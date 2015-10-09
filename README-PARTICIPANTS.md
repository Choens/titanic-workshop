# README

The Titanic Introduction to R uses the Kaggle Titanic dat set to
introduce professional and student researchers to the R programming
language. All code here is distributed under the GPL3 license. Other
licenses may apply to the data, etc.

## ZIP File Contents

- This ZIP file contains a series of R Scripts which will be useful
  for you in today's class.
- The R Scripts are organized in a manner that follows the
  presentations and slides. And, these scripts provide you with ALL of
  the code on the slides.
- You are welcome to keep these files, data, etc.
- There are two folders in this file. The data/ folder contains the
  Kaggle Titanic data we will use today. The models/ folder is a place
  for you to store your model output, without cluttering your primary
  work space.
- After downloading this ZIP file (and reading this README file)
  please unzip the contents of this folder someplace easy for you to
  find. You will want to use these materials in today's workshop.

## Workshop Requirements:

1. You must have access to a computer during the workshop.
2. Please install R on the aforementioned computer prior to the
   workshop. 
3. Workshop materials are available at: https://choens.github.io/titanic-workshop/

## Installing R

Pre-compiled binaries for Windows and Mac OS X can be downloaded from:

http://cran.r-project.org/

This workshop requires Base R. No additional packages are required.

To install R on Debian / Ubuntu: (I assume you are CLI friendly):

    sudo apt-get install \
        build-essential \
        libcurl4-openssl-dev \
        r-base-dev \
        r-base-html \
        r-doc-html \
        r-doc-info \
        r-recommended

Fans of Fedora (and other Red Hat clones / derivatives) should use the
following code.

    sudo dnf install \
        R \
        R-java \
        R-RODBC

If anyone would like to contribute instructions for SUSE or any other
Linux or BSD derivative, I'll post them here.

## Recommended Setup:

The default R interface stinks. I recommend participants install
RStudio or some other R interface of your choice. Course materials
will be distributed as .R and .Rmd files. I recommend using an editor
that can handle R script and RMarkdown files.

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
knowledgeable of and support RStudio / Emacs+ESS. All screenshots are
of RStudio. Use other interfaces, such as Statet, only if you feel
confident you can set up and configure them prior to the
workshop. Remember, you must be able to work effectively with
Rmarkdown files, which intersperse R code with plain text.

If you have problems getting setup for the workshop, please file a bug
against this project to get my attention and I'll work through it with
you. If you have problems installing R, RStudio or Emacs / ESS, file a
bug against this README file. If you have trouble installing the
packages, file a bug against packages.R.

## License

Copyright (C) 2015 Andrew Choens

This program is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see
<http://www.gnu.org/licenses/>.
