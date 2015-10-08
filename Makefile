#!/usr/bin/make -f

all: presentations


presentations: pres-00 pres-01 pres-02 pres-03

index: index.Rmd
	Rscript -e 'rmarkdown::render("index.Rmd")'

pres-00: 00-workshop.Rmd
	Rscript -e 'rmarkdown::render("00-workshop.Rmd")'

pres-01: 01-introduction-to-r.Rmd
	Rscript -e 'rmarkdown::render("01-introduction-to-r.Rmd")'
	Rscript -e 'knitr::purl("01-introduction-to-r.Rmd", "01-introduction-to-r.R")'

pres-02: 02-data-frames.Rmd
	Rscript -e 'rmarkdown::render("02-data-frames.Rmd")'
	Rscript -e 'knitr::purl("02-data-frames.Rmd", "02-data-frames.R")'

pres-03: 03-exploratory-analysis.Rmd
	Rscript -e 'rmarkdown::render("03-exploratory-analysis.Rmd")'
	Rscript -e 'knitr::purl("03-exploratory-analysis.Rmd", "03-exploratory-analysis.R")'

pres-04: 04-projection.Rmd
	Rscript -e 'rmarkdown::render("04-projection.Rmd")'
	Rscript -e 'knitr::purl("04-projection.Rmd", "04-projection.Rmd")'

participant-instructions:
	Rscript -e 'rmarkdown::render("participant-instructions.Rmd")'

participant-materials:
	zip titanic-workshop.zip \
		01-introduction-to-r.Rmd \
		02-data-frames.html \
		data/*

clean:
	rm *.html
	rm models/*.csv
