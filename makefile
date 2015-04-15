#!/usr/bin/make -f

all: presentations guides


guide-01: guide-01-introduction-to-r.Rmd
	Rscript -e 'rmarkdown::render("guide-01-introduction-to-r.Rmd")'

guide-02: guide-02-exploratory-analysis.Rmd
	Rscript -e 'rmarkdown::render("guide-02-exploratory-analysis.Rmd")'

guide-03: guide-03-projection.Rmd
	Rscript -e 'rmarkdown::render("guide-03-projection.Rmd")'

guides: guide-01 guide-02 guide-03

presentations: pres-00 pres-01 pres-02 pres-03

pres-00: presentation-00-about.Rmd
	Rscript -e 'rmarkdown::render("presentation-00-about.Rmd")'

pres-01: presentation-01-introduction-to-r.Rmd
	Rscript -e 'rmarkdown::render("presentation-01-introduction-to-r.Rmd")'

pres-02: presentation-02-exploratory-analysis.Rmd
	Rscript -e 'rmarkdown::render("presentation-02-exploratory-analysis.Rmd")'

pres-03: presentation-03-projection.Rmd
	Rscript -e 'rmarkdown::render("presentation-03-projection.Rmd")'

clean:
	rm *.html
	rm *.csv
