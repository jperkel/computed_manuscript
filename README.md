# Executable manuscript

<!-- badges: start -->

[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jperkel/computed_manuscript/main?urlpath=rstudio) [![.github/workflows/knit-in-docker.yml](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml/badge.svg)](https://github.com/jperkel/computed_manuscript/actions/workflows/knit-in-docker.yml)

<!-- badges: end -->

This repository demonstrates a fully executable manuscript. The manuscript itself is contained in the file `computed_manuscript.Rmd`; `computed_manuscript.pdf` contains the resulting formatted document, which is created automatically using the LaTeX typesetting system.

To try this on your own computer:

1.  'Clone' this manuscript by clicking the blue 'Code' button at the top of the [GitHub repository](https://github.com/jperkel/computed_manuscript) and downloading a ZIP archive of the repository to your computer.
2.  Decompress the archive.
3.  If you haven't already done so, install the [R programming language](https://cran.r-project.org/) and [RStudio development environment](https://www.rstudio.com/).
4.  Open `computed_manuscript.Rmd` in RStudio.
5.  Install required packages. In the console window at the bottom of the RStudio window, execute the following command:

```
install.packages(c("tidyverse","bookdown","rticles","here","ggbeeswarm"))
```

6.  Install LaTeX. In the console window, type:

```
install.packages("tidytex")
tinytex::install_tinytex(version = "2022.01")
```

7.  Click the 'Knit' button in the toolbar at the top of the main window to compile the Markdown file into a PDF.

Thanks to huge help from [Ben Marwick](https://twitter.com/benmarwick) at the University of Washington in Seattle, you can also test-drive this repository without installing everything using the free and open-source [Binder](https://mybinder.org/) service, which allows users to recreate computational environments in the cloud. Click the 'Launch Binder' button above to launch RStudio in your web browser, including all required libraries. (It may take a few minutes to start.)

Once RStudio is running, select `computed_manuscript.Rmd` from the file pane in the bottom right. Feel free to modify it if you want, then click 'Knit' in the toolbar at the top of the main window. It will take a few minutes to render, as the PDF-rendering engine needs to download a few files, but the result will be a newly formatted version of `computed_manuscript.pdf`.

## Continuous integration

Thanks again to huge help from Ben Marwick, this repository uses the free [GitHub Actions](https://docs.github.com/en/actions) [continuous integration](https://www.nature.com/articles/550143a) service to ensure that changes to the manuscript do not 'break' its ability to compile to PDF. The file [`knit-in-docker.yml`](https://github.com/jperkel/computed_manuscript/blob/main/.github/workflows/knit-in-docker.yml) directs GitHub Actions to compile the Markdown file to PDF every time this repository changes. (You can see the result of that code-check with the 'knit-in-docker.yml' badge at the top of this README file.) It does that by executing the [`Dockerfile`](https://github.com/jperkel/computed_manuscript/blob/main/Dockerfile) found in the root directory of the repository. (A separate `Dockerfile`, found in the `.binder` directory, [provides instructions](https://github.com/jperkel/computed_manuscript/blob/main/.binder/Dockerfile) for running this code on Binder.)
