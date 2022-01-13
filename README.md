# Executable manuscript

<!-- badges: start --> 
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jperkel/computed_manuscript/main?urlpath=rstudio) 
<!-- badges: end -->

This repository demonstrates a fully executable manuscript. The manuscript itself is in the file `computed_manuscript.Rmd`; `computed_manuscript.pdf` contains the resulting formatted document, which is created automatically using the LaTeX typesetting system.

Thanks to huge help from [Ben Marwick](<https://twitter.com/benmarwick>) at the University of Washington in Seattle, you can test-drive this repository on Binder. Click the 'Launch Binder' button above to launch RStudio in your web browser, including all required libraries. (It may take a few minutes to start.)

Once RStudio is running, select `computed_manuscript.Rmd` from the file pane in the bottom right. Feel free to modify it if you want, then click 'knit' in the toolbar at the top of the main window. It will take a few minutes to render, as the PDF-rendering engine needs to download a few files, but the result will be a newly formatted version of `computed_manuscript.pdf`.
