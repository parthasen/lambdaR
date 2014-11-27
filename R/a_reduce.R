#'Reduce function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(binary).
#'
#'@export
a_reduce <- function(data, ..., init, right = FALSE, accumulate = FALSE) {
  func <- lambda(..., envir = parent.frame())
  Reduce(f=func, x=data, init=init, right=right, accumulate=accumulate)
}
