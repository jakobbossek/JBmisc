context("getAttributeNames")

test_that("attribute names are correct", {
  x = 1:10
  expect_true(is.null(getAttributeNames(x)))

  attr(x, "size") = length(x)
  expect_equal(getAttributeNames(x), c("size"))
})

