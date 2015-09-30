Tdata.train <- as.data.frame(modelData(data.model, data.window = c("1970-01-02","1999-12-31")))
Tdata.eval <- na.omit(as.data.frame(modelData(data.model, data.window = c("2000-01-01", "2009-09-15"))))
Tform <- as.formula("T.ind.GSPC~.")
