context("Test for Map_()")

test_that("compute square number", {
  expect_equal(Map_(1:5, x: x ** 2), list(1,4,9,16,25))
})

test_that("add", {
  expect_equal(Map_(list(1:5, 6:10), x,y: x+y), list(7,9,11,13,15))
})
