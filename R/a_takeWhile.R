#'takeWhile function for lambda expression
#'
#'@param data a vector.
#'@param ... lambda expression(unary).
#'
#'@return a vector.
#'
#'@examples
#'library(lambdaR)
#'library(dplyr)
#'1:10 %>% a_takeWhile(x: x < 3)
#'
#'@export
a_takeWhile <- function(data, ..., nomatch = NULL) {
  index = a_position(data, a_negate(...))
  if(is.na(index) || index <= 1) {
    return(nomatch)
  } else {
    return(data[seq_len(index-1)])
  }
}
