candleChart(last(GSPC,"3 months"), ttheme = "white", TA = NULL)
avgPrice <- function(x) apply(HLC(x), 1, mean)
addAvgPrice <- newTA(FUN = avgPrice, col = 1, legend = "AvgPrice")
addT.ind <- newTA(FUN = T.ind, col = "red", legend = "tgtRet")
addAvgPrice(on=1)
addT.ind()