# A model executable manuscript

<!-- badges: start -->

[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jperkel/computed_manuscript/main?urlpath=rstudio) [![.github/workflows/knit-in-docker.yml](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml/badge.svg)](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml)

<!-- badges: end -->

This repository, created to accompany an in-development article at [*Nature magazine*](https://www.nature.com), demonstrates a fully executable manuscript. The text of the manuscript is contained in the file `computed_manuscript.Rmd`; `computed_manuscript.pdf`, `computed_manuscript.docx` and `computed_manuscript.html` contain the resulting documents rendered in PDF, Microsoft Word, and HTML format, respectively.

## To try this on your own computer:

1.  'Clone' this manuscript. From your computer's command line, execute:

```
git clone git@github.com:jperkel/computed_manuscript.git
```

(Alternatively, select click the blue 'Code' button at the top of the [GitHub repository](https://github.com/jperkel/computed_manuscript) to download a ZIP archive of the repository to your computer.). 

2.  Navigate to the manuscript directory (`cd computed_manuscript`).
3.  If you haven't already done so, install the [R programming language](https://cran.r-project.org/) and [RStudio development environment](https://www.rstudio.com/).
4.  Open `computed_manuscript.Rmd` in RStudio.
5.  Install required packages. In the console window at the bottom of the RStudio window, execute the following command:

```
install.packages(c("tidyverse","bookdown","rticles","here","ggbeeswarm"))
```

6.  If you want to create a PDF output, install LaTeX. In the console window, type:

```
install.packages("tidytex")
tinytex::install_tinytex(version = "2022.01")
```

7.  Click the down-arrow icon immediately to the right of 'Knit' button in the toolbar at the top of the main window. Select "Knit to pdf_book", "Knit to Word" or "Knit to HMTL" to compile the Markdown file into the desired format.

## No-installation test-drive 

You can test-drive this repository without installing anything using the free and open-source [Binder](https://mybinder.org/) service, which allows users to [recreate computational environments](https://www.nature.com/articles/d41586-019-03366-x) in the cloud. Click the 'Launch Binder' button above to launch RStudio in your web browser, including all required libraries. (It may take a few minutes to start.)

Once RStudio is running, select `computed_manuscript.Rmd` from the file pane in the bottom right. Feel free to modify it, then click 'Knit' in the toolbar at the top of the main window. It will take a few minutes to render, as the PDF-rendering engine needs to download and install a few files, but the result will be a newly formatted version of `computed_manuscript.pdf`.

Note, if you get a pop-up window saying that a new window failed to open, click cancel, then select `computed_manuscripts.pdf` in the file window at bottom right to view it.

## Continuous integration

Thisrepository uses the free [continuous integration](https://www.nature.com/articles/550143a) service [GitHub Actions](https://docs.github.com/en/actions) to ensure that changes to the manuscript do not 'break' its ability to compile to PDF. The file [`knit-in-docker.yml`](https://github.com/jperkel/computed_manuscript/blob/main/.github/workflows/knit-in-docker.yml) directs GitHub Actions to compile the Markdown file to PDF every time this repository changes. (You can see the result of that code-check with the 'knit-in-docker.yml' badge at the top of this README file, and also here: [![.github/workflows/knit-in-docker.yml](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml/badge.svg)](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml)) It does that by executing the [`Dockerfile`](https://github.com/jperkel/computed_manuscript/blob/main/Dockerfile) found in the root directory of the repository. A separate `Dockerfile`, found in the `.binder` directory, provides instructions for [running this code on Binder](https://github.com/jperkel/computed_manuscript/blob/main/.binder/Dockerfile).

## Acknowledgements

Special thanks go to [Ben Marwick](https://github.com/benmarwick/) at the University of Washington in Seattle, who provided tireless assistance in setting up the Binder and GitHub Actions workflows. 