library(testthat)

if (interactive()) {
  load_all(".")
} else {
  library(JBmisc)
}

test_dir("inst/tests")
