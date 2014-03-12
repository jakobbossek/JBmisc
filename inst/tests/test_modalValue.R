test_that("function modalValue runs as expected", {
  x = c(1:10, 10)
  m = modalValue(x, type = "unique")
  expect_equal(m, 10, "modal value should be unique with no NAs and single most frequent element.")

  x = 1:10
  m = modalValue(x, type = "unique")
  expect_true(is.na(m), "no modal value if unique value wanted, but multiple most frequent exist.")

  m = modalValue(x, type = "all")
  expect_equal(m, x, "each value is modal value if elements pairwise distinct.")
  expect_equal(length(m), length(x))

  x = c(1:10, 11, 11, 11, 12, 12, 12)
  m = modalValue(x, type = "unique")
  expect_true(is.na(m), "should return NA if more than one element is most frequent and unique value wanted.")
  m = modalValue(x, type = "all")
  expect_equal(length(m), 2, "should return vector of two elements.")

  x = c(x, NA, NA, 100, NA)
  m = modalValue(x, type = "unique")
  expect_true(is.na(m), "modal value should be NA if multiple most frequent elements in vector and NAs in vector.")
  m = modalValue(x, type = "all")
  expect_equal(length(m), 2, "should return vector of two elements even if NAs exist.")
})
