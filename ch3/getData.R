library(tseries)
GSPC <- as.xts(get.hist.quote("^GSPC", start = "1970-01-02", 
                              quote = c("Open", "High", "Low", "Close", "Volume", "AdjClose")))
