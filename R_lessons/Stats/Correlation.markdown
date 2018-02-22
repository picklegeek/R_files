
Corelation tells the amount of linear relationship between variables
A value of 1 indicates a straight linear relationship, 0 indicates a non linear one
 
 ```r
 library(ggplot2)
 library(dplyr)
 ```
 
 ```
 ## 
 ## Attaching package: 'dplyr'
 ```
 
 ```
 ## The following objects are masked from 'package:stats':
 ## 
 ##     filter, lag
 ```
 
 ```
 ## The following objects are masked from 'package:base':
 ## 
 ##     intersect, setdiff, setequal, union
 ```
 
 ```r
 mtcars %>% group_by(gear) %>% summarize(N=n(), r = cor(mpg,wt))
 ```
 
 ```
 ## # A tibble: 3 x 3
 ##    gear     N      r
 ##   <dbl> <int>  <dbl>
 ## 1  3.00    15 -0.780
 ## 2  4.00    12 -0.823
 ## 3  5.00     5 -0.990
 ```
 
 ```r
 ggplot(mtcars,aes(mpg,wt,color = factor(gear))) + geom_point()
 ```
 
 ![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)
