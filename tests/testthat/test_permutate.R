context("permutate")

test_that("permutate in fact produces permutations", {
  x = 1:10
  x.permutated = permutate(x)
  expect_equal(length(x), length(x.permutated))

  y = sort(x.permutated)
  expect_identical(x, y)

  x = letters[1:10]
  x.permutated = permutate(x)
  expect_true(setequal(x, x.permutated))
})
