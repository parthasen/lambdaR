context("Test for lambda()")

test_that("one variable", {
  expect_equal(lambda(x: x + 1), function(x) x + 1)
})

test_that("two variable", {
  expect_equal(lambda(x,y: x + y), function(x,y) x + y)
})

test_that("one variable with placeholder", {
  expect_equal(lambda(._ + 1), function(x1) x1 + 1)
})

test_that("two variable with placeholder", {
  expect_equal(lambda(._ + ._), function(x1,x2) x1 + x2)
})
