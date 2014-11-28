context("Test for a_find()")

test_that("find first odd number", {
  expect_equal(a_find(1:10, x: x %% 2 == 0), 2)
})

context("Test for Find_()")

test_that("find first odd number", {
  expect_equal(Find_(1:10, x: x %% 2 == 0), 2)
})
