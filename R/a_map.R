#'Map function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a list.
#'
#'@export
a_map <- function(data, ...) {
  func <- lambda(..., envir=parent.frame())
  Map(func, data)
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
  func <- lambda(..., envir=parent.frame())
  unlist(Map(func, data))
}

#'Map function for lambda expression with unlisted output
#'
#'@param data a vector.
#'@param ... lambda expression.
#'
#'@return a vector.
#'
#'@export
Mapu_ <- a_mapu
