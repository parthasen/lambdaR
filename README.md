# Lambda expressions in R
Koji MAKIYAMA  



## Overture

With this package, you can use lambda expressions.


```r
library(lambdaR)
library(dplyr)
1:10 %>% Filter_(x: x %% 2 == 0) %>% Map_(x: x ** 2) %>% Reduce_(x,y: x + y)
```

```
## [1] 220
```

You can use placeholder.


```r
1:10 %>% Filter_(._ %% 2 == 0) %>% Map_(._ ** 2) %>% Reduce_(._ + ._)
```

```
## [1] 220
```

And You can write like below.


```r
is_even <- lambda(._ %% 2 == 0)
square <- lambda(._ ** 2)
add <- lambda(._ + ._)
1:10 %>% Filter_(is_even) %>% Map_(square) %>% Reduce_(add)
```

```
## [1] 220
```

## How to install


```r
install.packages("devtools") # if you have not installed "devtools" package
devtools::install_github("hoxo-m/lambdaR")
```

