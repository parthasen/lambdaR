#'Negate function for lambda expression
#'
#'@param ... lambda expression.
#'
#'@return a function.
#'
#'@export
a_negate <- function(...) {
  func <- lambda(..., envir = parent.frame())
  Negate(func)
}

#'Negate function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return a function.
#'
#'@export
Negate_ <- a_negate
