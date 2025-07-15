#test_that("multiplication works", {
#  expect_equal(2 * 2, 4)
#})
#

test_that("animal_sounds produces expected strings", {
#  dog_woof <- animalsounds("dog", "woof")
#  expect_equal(dog_woof, "The dog goes woof!")
  expect_equal(animalsounds("cat", "miaow"), "The cat goes miaow!")
  giraffe <- animalsounds("giraffe")
  expect_equal(giraffe,
               "The giraffe makes no sound.")
})

test_that("handles invalid inputs", {
  expect_error(animalsounds("dog", c("woof", "bow wow wow")),
               class = "error_not_single_string")
  expect_error(animalsounds("cat", "miaow"),
               class = "error_not_single_string")
})



#test_that("error message for invalid input", {
#  expect_snapshot(animalsounds("dog",c("woof", "bow wow wow"))),
#                  error = TRUE
#})
#
