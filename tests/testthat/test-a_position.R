context("Test for a_position()")

test_that("find F letter", {
  expect_equal(a_position(LETTERS, x: x == "F"), 6)
})

context("Test for Position_()")

test_that("find F letter", {
  expect_equal(Position_(LETTERS, x: x == "F"), 6)
})
