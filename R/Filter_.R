#'Filter function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@export
Filter_ <- function(data, ...) {
  func <- lambda(..., envir = parent.frame())
  Filter(func, data)
}
