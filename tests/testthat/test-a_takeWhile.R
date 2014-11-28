context("Test for a_takeWhile()")

test_that("take while odd number", {
  expect_equal(a_takeWhile(1:10, x: x %% 2 == 0), 1:2)
})
