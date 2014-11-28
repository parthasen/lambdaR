context("Test for a_takeWhile()")

test_that("take while x < 3", {
  expect_equal(a_takeWhile(1:10, x: x < 3), 1:2)
})

test_that("nomatch", {
  expect_equal(a_takeWhile(1:10, x: x > 3), NULL)
})

test_that("input empty vector", {
  expect_equal(a_takeWhile(c(), x: x < 3), NULL)
})
