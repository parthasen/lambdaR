#'Lambda function
#'
#'@param ... lambda expression.
#'
#'@export
lambda <- function(...) {
  args <- lazyeval::lazy_dots(...)
  args_len <- length(args)
  args <- Map(function(x) x$expr, args)
  vars <- unlist(Map(function(x) deparse(x), args[-length(args)]))
  expr <- as.character(args[length(args)])
  if(args_len == 0) {
    function() {}
  } else if(args_len == 1 && !stringr::str_detect(expr, ":")) {
    if(stringr::str_detect(expr, "\\._")) {
      var_count <- stringr::str_count(expr, "\\._")
      vars <- paste0("x", seq_len(var_count))
      expr <- Reduce(function(expr,var) stringr::str_replace(expr, "\\._", var), vars, expr)
      vars_str = paste0(vars, collapse=",")
      func_str <- sprintf("function(%s) %s", vars_str, expr)
      eval(parse(text=func_str), envir = parent.frame())
    } else {
      func <- eval(args[[1]], envir = parent.frame())
      if(is.function(func)) {
        func
      } else {
        func_str <- sprintf("function() %s", expr)
        eval(parse(text=func_str), envir = parent.frame())
      }
    }
  } else {
    expr <- stringr::str_split(expr, ":")[[1]]
    var <- expr[1]
    expr <- paste0(expr[-1], collapse=":")
    vars <- ifelse(is.null(vars), 
                   var, 
                   paste(paste(vars, collapse=","), var, sep=","))
    fun_str <- sprintf("function(%s) %s", vars, expr)
    eval(parse(text=fun_str), envir = parent.frame())
  }
}
