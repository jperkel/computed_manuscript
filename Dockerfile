# get the base image, the rocker/verse has R, RStudio and pandoc
FROM rocker/geospatial:4.0.3

# required
MAINTAINER Ben Marwick <bmarwick@uw.edu>

COPY . /

## Run an install.R script, if it exists.
RUN if [ -f install.R ]; then R --quiet -f install.R; fi

# go into the repo directory
RUN . /etc/environment \
  # render the manuscript into a docx
  && R -e "rmarkdown::render('SN_templates.Rmd')"
