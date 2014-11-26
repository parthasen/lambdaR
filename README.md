# Lambda expressions in R
Koji MAKIYAMA  



## Overview

With this package, you can use lambda expressions in R:


```r
library(lambdaR)
library(dplyr)
1:10 %>% Filter_(x: x %% 2 == 0) %>% Map_(x: x ** 2) %>% Reduce_(x,y: x + y)
```

```
## [1] 220
```

You can use placeholders:


```r
1:10 %>% Filter_(._ %% 2 == 0) %>% Map_(._ ** 2) %>% Reduce_(._ + ._)
```

```
## [1] 220
```

And you can write like below:


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

## Usage

### lambda()

`lambda()` function is to enable using lambda expressions in R:


```r
increment <- lambda(x: x + 1)
add <- lambda(x,y: x + y)
```

That allows to redefine higher order functions using lambda expressions.

### Application

We redefined higher order functions:

- `Filter()` to `Filter_()`
- `Map()` to `Map_()`
- `Reduce()` to `Reduce_()`

You can input lambda expressions to these functions:


```r
1:10 %>% Filter_(x: x %% 2 == 0)
```

```
## [1]  2  4  6  8 10
```


```r
1:10 %>% Map_(x: x ** 2) %>% unlist
```

```
##  [1]   1   4   9  16  25  36  49  64  81 100
```


```r
list(1:5, 6:10) %>% Map_(x,y: x + y) %>% unlist
```

```
## [1]  7  9 11 13 15
```


```r
1:10 %>% Reduce_(x,y: x + y)
```

```
## [1] 55
```

And also you can use placeholders:


```r
1:10 %>% Filter_(._ %% 2 == 0)
```

```
## [1]  2  4  6  8 10
```


```r
1:10 %>% Map_(._ ** 2) %>% unlist
```

```
##  [1]   1   4   9  16  25  36  49  64  81 100
```


```r
list(1:5, 6:10) %>% Map_(._ + ._) %>% unlist
```

```
## [1]  7  9 11 13 15
```


```r
1:10 %>% Reduce_(._ + ._)
```

```
## [1] 55
```
