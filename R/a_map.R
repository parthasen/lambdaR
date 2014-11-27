#'Map function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@export
a_map <- function(data, ...) {
  if(!is.list(data)) data <- list(data)
  func <- lambda(...)
  args <- c(f=func, data)
  do.call(Map, args)
}
