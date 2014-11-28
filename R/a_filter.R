#'Filter function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return a vector.
#'
#'@examples
#'library(lambdaR)
#'library(dplyr)
#'1:10 %>% a_filter(x: x %% 2 == 0)
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
#'@examples
#'library(lambdaR)
#'library(dplyr)
#'1:10 %>% Filter_(x: x %% 2 == 0)
#'
#'@export
Filter_ <- a_filter
