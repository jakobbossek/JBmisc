library(methods)
library(devtools)
library(testthat)

if (interactive()) {
  load_all(".")
} else {
  library(JBmisc)
}

test_dir("tests/testthat")
