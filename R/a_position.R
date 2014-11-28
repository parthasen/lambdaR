#'Position function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return an index.
#'
#'@export
a_position <- function(data, ..., right = FALSE, nomatch = NA_integer_) {
  func <- lambda(..., envir = parent.frame())
  Position(func, data, right = right, nomatch = nomatch)
}

#'Position function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return an index.
#'
#'@export
Position_ <- a_position
