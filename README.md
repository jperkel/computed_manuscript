# A model executable manuscript

<!-- badges: start -->

[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jperkel/computed_manuscript/main?urlpath=rstudio) [![.github/workflows/knit-in-docker.yml](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml/badge.svg)](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml)

<!-- badges: end -->

This repository, created to accompany an article published 28 Feb 2022 at [*Nature* magazine](https://www.nature.com/articles/d41586-022-00563-z), demonstrates a fully executable manuscript. The text of the manuscript is contained in the files `computed_manuscript.Rmd` and `child_doc.Rmd`; `computed_manuscript.pdf`, `computed_manuscript.docx` and `computed_manuscript.html` contain the documents rendered in PDF, Microsoft Word, and HTML format, respectively. (See https://observablehq.com/@jperkel/example-executable-observable-notebook for a comparable example written using Observable.)

## Easy: No-installation test-drive 

You can test-drive this repository without installing anything using the free and open-source [Binder](https://mybinder.org/), which allows users to [recreate computational environments](https://www.nature.com/articles/d41586-019-03366-x) in the cloud. Click the 'Launch Binder' button ([![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jperkel/computed_manuscript/main?urlpath=rstudio)) to launch RStudio in your web browser, including all required libraries. (It may take a few minutes to start.)

Once RStudio is running, select `computed_manuscript.Rmd` from the file pane in the bottom right. Feel free to modify it, then click 'Knit' in the toolbar at the top of the main window. It will take a few minutes, as the PDF-rendering engine needs to download and install a few files, but the result will be a newly formatted version of `computed_manuscript.pdf`. (You can select other output formats by clicking the down-arrow next to the Knit button.)

Note: be sure to wait until the PDF-rendering step completes before attempting to open the PDF. If the 'Render' tab at the bottom of the RStudio window has a red 'stop-sign' icon at the top right, it's still working. 

If you see a pop-up window saying that an external browser window failed to open, click cancel, then select `computed_manuscripts.pdf` in the file window at bottom right to view it.

## Advanced: Try it on your own computer:

1.  'Clone' this manuscript. From your computer's command line, execute:

```
git clone git@github.com:jperkel/computed_manuscript.git
```

Alternatively, select click the blue 'Code' button at the top of the [GitHub repository](https://github.com/jperkel/computed_manuscript) to download a ZIP archive of the repository to your computer. 

2.  Navigate to the manuscript directory (`cd computed_manuscript`).
3.  If you haven't already done so, install the [R programming language](https://cran.r-project.org/) and [RStudio development environment](https://www.rstudio.com/).
4.  Open `computed_manuscript.Rmd` in RStudio.
5.  Install required packages. In the console window at the bottom of the RStudio window, execute the following command:

```
install.packages(c("tidyverse","bookdown","rticles","here","ggbeeswarm"))
```

6.  OPTIONAL: To create PDF output, you'll need LaTeX. If it's not already installed, type the following in the console window:

```
install.packages("tinytex")
tinytex::install_tinytex(version = "2022.01")
```

7.  Click the down-arrow icon immediately to the right of 'Knit' button in the toolbar at the top of the main window. Select "Knit to pdf_book", "Knit to Word" or "Knit to HMTL" to compile the Markdown file into the desired format.

## Continuous integration

This repository uses the free [continuous integration](https://www.nature.com/articles/550143a) service [GitHub Actions](https://docs.github.com/en/actions) to ensure that changes to the manuscript do not 'break' its ability to compile to PDF. The file [`knit-in-docker.yml`](https://github.com/jperkel/computed_manuscript/blob/main/.github/workflows/knit-in-docker.yml) directs GitHub Actions to compile the Markdown file to PDF every time this repository changes. (You can see the result of that code-check with the 'knit-in-docker.yml' badge at the top of this README file, and also here: [![.github/workflows/knit-in-docker.yml](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml/badge.svg)](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml)) It does that by executing the [`Dockerfile`](https://github.com/jperkel/computed_manuscript/blob/main/Dockerfile) found in the root directory of the repository. A separate `Dockerfile` in the `.binder` directory provides instructions for [running this code on Binder](https://github.com/jperkel/computed_manuscript/blob/main/.binder/Dockerfile).

## Acknowledgements

Special thanks go to [Ben Marwick](https://github.com/benmarwick/) at the University of Washington in Seattle for his tireless assistance in setting up the Binder and GitHub Actions workflows. Thank you!
