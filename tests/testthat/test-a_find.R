context("Test for a_find()")

test_that("find F letter", {
  expect_equal(a_find(LETTERS, x: x == "F"), "F")
})

context("Test for Find_()")

test_that("find F letter", {
  expect_equal(Find_(LETTERS, x: x == "F"), "F")
})
