#'Find function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return an obejct.
#'
#'@export
a_find <- function(data, ..., right = FALSE, nomatch = NULL) {
  func <- lambda(..., envir = parent.frame())
  Find(func, data, right = right, nomatch = nomatch)
}

#'Find function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return an obejct.
#'
#'@export
Find_ <- a_find
