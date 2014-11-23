#'Reduce function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(binary).
#'
#'@export
Reduce_ <- function(data, ..., init, right = FALSE, accumulate = FALSE) {
  func <- lambda(...)
  Reduce(f=func, x=data, init=init, right=right, accumulate=accumulate)
}
