# create a mock clinical trial dataset
# input: n -- number of subjects
build_mock_dataset <- function(n) {
  subjID <- 1:n
  # generate random #s between 0 and 9
  tmp <- floor(runif(n, min = 0, max = 10))
  # assign those numbers to any of 3 subject groups
  fn <- function(x) { 
    if (x > 6) 'Group 1' 
    else if (x > 3) 'Group 2' 
    else 'Group 3' 
  }
  subj_class <- sapply(tmp, fn)
  # pick random concentrations between 75 and 300
  conc <- floor(runif(n, min = 75, max = 300))
  # combine the data into a table
  return(data.frame(ID = subjID, class = subj_class, conc = conc))
}