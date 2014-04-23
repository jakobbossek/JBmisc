context("fallThrough")

test_that("fallThrough finds the first not null element", {
  needle = 1L
  expect_equal(fallThrough(needle), needle)
  expect_equal(fallThrough(needle, NULL), needle)
  expect_equal(fallThrough(NULL, needle), needle)
  expect_true(is.na(fallThrough(NULL, NA, needle)))
  expect_equal(fallThrough(NULL, NA, needle, na.as.null = TRUE), needle)
})
