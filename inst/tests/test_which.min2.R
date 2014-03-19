context("which.min2")

test_that("which.min2 works as expected", {
  expect_true(is.na(which.min2(c())))

  x = 1:10
  x.list = as.list(x)
  types = c("first", "last", "all", "random")
  sapply(types, function(type) {
    expect_equal(which.min2(x, type = type), 1L)
    expect_equal(which.min2(x.list, type = type), 1L)
  })

  x = c(10, 2, 2, 9, 4, 2, 4, 3, 19)
  expected.min.idxs = c(2, 3, 6)
  expect_equal(which.min2(x, type = "first"), 2L)
  expect_equal(which.min2(x, type = "all"), expected.min.idxs)
  expect_equal(which.min2(x, type = "last"), 6L)
  rnd.idx = which.min2(x, type = "random")
  expect_true(rnd.idx %in% expected.min.idxs)
})
