context("getBootstrapSamples")

test_that("bootstraping works", {
  x = letters[1:10]
  n = length(x)
  x.bootstraps = getBootstrapSamples(x)
  expect_equal(length(x.bootstraps), 5)
  expect_true(all(sapply(x.bootstraps, length) == n))
  for (i in 1:length(x.bootstraps)) {
    expect_true(all(x.bootstraps[[i]] %in% x))
  }
})
