context("Test for a_map()")

test_that("compute square number", {
  expect_equal(a_map(1:5, x: x ** 2), list(1,4,9,16,25))
})

context("Test for Map_()")

test_that("compute square number", {
  expect_equal(Map_(1:5, x: x ** 2), list(1,4,9,16,25))
})

context("Test for a_mapu()")

test_that("compute square number", {
  expect_equal(a_mapu(1:5, x: x ** 2), c(1,4,9,16,25))
})
