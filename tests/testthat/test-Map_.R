context("Test for Map_()")

test_that("compute square number", {
  expect_equal(Map_(1:5, x: x ** 2), list(1,4,9,16,25))
})
