context("Test for a_filter()")

test_that("filter odd number", {
  expect_equal(a_filter(1:10, x: x %% 2 == 0), c(2,4,6,8,10))
})
