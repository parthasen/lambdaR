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
#'1:10 %>% a_takeWhile(x: x %% 2 == 0)
#'
#'@export
a_takeWhile <- function(data, ..., nomatch = NULL) {
  index = a_position(data, ...)
  if(is.na(index)) {
    return(nomatch)
  } else {
    return(data[seq_len(index)])
  }
}
