context("getRandomElements")

test_that("getRandomElements works as expected", {
  expect_error(getRandomElements(c()), info = "sampling from an empty element shoud fail")

  x = 1L
  expect_equal(getRandomElements(x), x, "sampling one element without replacement should return this element")
  expect_equal(getRandomElements(x, replace = TRUE), x, "sampling one element with replacement should return this element")
  expect_error(getRandomElements(x, size = 3L), info = "sampling more elements without replacement than vector contains should fail")

  rnds = getRandomElements(x, size = 3L, replace = TRUE)
  expect_equal(length(rnds), 3L)
  expect_true(all(rnds == x))
})
