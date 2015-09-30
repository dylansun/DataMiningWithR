library("e1071")
start <- 1
len.tr <- 1000
len.ts <- 500
tr <- start:(start + len.tr - 1)
ts <- (start+len.tr):(start+len.tr + len.ts - 1)
Tform <- as.formula("T.ind.GSPC~.")
# getting the quotes for the testing period
data(GSPC)
date <- rownames(Tdata.train[start+len.tr,])
market <- GSPC[paste(date, '/', sep = "")][1:len.ts]
# learning the model and obtaining its signal predictions
s <- svm(Tform, Tdata.train[tr,], cost=10, gamma = 0.01)
p <- predict(s, Tdata.train[ts,])
sig <- trading.signals(p,0.1,-0.1)

# now using the simulated trader
t1 <- trading.simulator(market, sig, 'policy.1', list(exp.prof=0.05, bet = 0.2, hold.time = 30))