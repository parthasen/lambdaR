#'Map function for lambda expression(unary)
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@export
Map_ <- function(data, ...) {
  func <- lambda(...)
  Map(func, data)
}
