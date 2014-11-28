context("Test for a_negate()")

test_that("even number to odd number", {
  expect_equal(a_negate(x: x %% 2 == 0)(1:5), c(TRUE, FALSE, TRUE, FALSE, TRUE))
})

context("Test for Negate_()")

test_that("even number to odd number", {
  expect_equal(Negate_(x: x %% 2 == 0)(1:5), c(TRUE, FALSE, TRUE, FALSE, TRUE))
})
