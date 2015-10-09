#!/usr/bin/make -f

all: index participant-instructions participant-materials presentations 


presentations: pres-00 pres-01 pres-02 pres-03 pres-04

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

pres-03: 03-eda-and-hypothesis-testing.Rmd
	Rscript -e 'rmarkdown::render("03-eda-and-hypothesis-testing.Rmd")'
	Rscript -e 'knitr::purl("03-eda-and-hypothesis-testing.Rmd", "03-eda-and-hypothesis-testing.R")'

pres-04: 04-regression-and-prediction.Rmd
	Rscript -e 'rmarkdown::render("04-regression-and-prediction.Rmd")'
	Rscript -e 'knitr::purl("04-regression-and-prediction.Rmd", "04-regression-and-prediction.R")'

participant-instructions:
	Rscript -e 'rmarkdown::render("participant-instructions.Rmd")'

participant-materials:
	zip titanic-workshop.zip \
		01-introduction-to-r.R \
		02-data-frames.R \
		03-eda-and-hypothesis-testing.R \
		04-regression-and-prediction.R \
        data/* \
		models/README.md \
		README-PARTICIPANTS.md

clean:
	rm *.html
	rm models/*.csv
