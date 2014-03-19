context("which.min2 and which.max")

test_that("which.min2/which.max2 works as expected", {
  expect_true(is.na(which.min2(c())))
  expect_true(is.na(which.max2(c())))

  x = 1:10
  x.list = as.list(x)
  types = c("first", "last", "all", "random")
  sapply(types, function(type) {
    expect_equal(which.min2(x, type = type), 1L)
    expect_equal(which.min2(x.list, type = type), 1L)
    expect_equal(which.max2(x, type = type), 10L)
    expect_equal(which.max2(x.list, type = type), 10L)
  })

  x = c(10, 2, 2, 9, 4, 2, 4, 3, 19, 19)
  expected.min.idxs = c(2, 3, 6)
  expected.max.idxs = c(9, 10)

  expect_equal(which.min2(x, type = "first"), 2L)
  expect_equal(which.min2(x, type = "all"), expected.min.idxs)
  expect_equal(which.min2(x, type = "last"), 6L)
  rnd.idx = which.min2(x, type = "random")
  expect_true(rnd.idx %in% expected.min.idxs)

  expect_equal(which.max2(x, type = "first"), 9L)
  expect_equal(which.max2(x, type = "all"), expected.max.idxs)
  expect_equal(which.max2(x, type = "last"), 10L)
  rnd.idx = which.max2(x, type = "random")
  expect_true(rnd.idx %in% expected.max.idxs)
})
