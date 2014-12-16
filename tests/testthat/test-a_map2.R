context("Test for a_map2()")

test_that("add", {
  expect_equal(a_map2(list(1:5, 6:10), x,y: x+y), list(7,9,11,13,15))
})

context("Test for Map_()")

test_that("add", {
  expect_equal(Map2_(list(1:5, 6:10), x,y: x+y), list(7,9,11,13,15))
})
