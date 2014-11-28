#'Map function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a list.
#'
#'@export
a_map <- function(data, ...) {
  if(!is.list(data)) data <- list(data)
  func <- lambda(...)
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
Map_ <- a_map

#'Map function for lambda expression with unlisted output
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a vector.
#'
#'@export
a_mapu <- function(data, ...) {
  unlist(a_map(data, ...))
}
