#'Filter function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return a vector.
#'
#'@export
a_filter <- function(data, ...) {
  func <- lambda(..., envir = parent.frame())
  Filter(func, data)
}

#'Filter function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return a vector.
#'
#'@export
Filter_ <- a_filter
