library(xts)
x1 <- xts(rnorm(100), seq(as.POSIXct("2000-01-01"), len = 100, by = "day"))
x1[1:5]
x2 <- xts(rnorm(100), seq(as.POSIXct("2000-01-01 13:00"), len = 100, by = "min"))
x2[1:4]
x3 <- xts(rnorm(3), as.Date(c("2005-01-01", "2005-01-10", "2005-01-12")))
