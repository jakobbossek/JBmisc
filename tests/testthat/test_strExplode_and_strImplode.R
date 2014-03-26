context("strExplode and strImplode")

test_that("strExplode and strImplode work as expected", {
  x = "R is a nice programming language"
  substrings = c("R", "is", "a", "nice", "programming", "language")
  sep = " "

  # split string
  exploded = strExplode(x, sep = sep)
  expect_equal(length(exploded), 6)
  for (i in 1:length(substrings)) {
    expect_equal(substrings[i], exploded[[i]])
  }

  # now glue the substrings together
  imploded = strImplode(exploded, sep = sep)
  expect_equal(imploded, x)
})
