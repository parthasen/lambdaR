#'Map function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a list.
#'
#'@export
a_map2 <- function(data, ...) {
  if(!is.list(data)) data <- list(data)
  func <- lambda(..., envir=parent.frame())
  args <- c(f=func, data)
  do.call(Map, args)
}

#'Map function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a list.
#'
#'@export
Map2_ <- a_map2
