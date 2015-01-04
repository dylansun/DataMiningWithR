g <- c("f","m","m","m","m","m","f","m","f","f")

# when changes to factor, they are actully numbers in R
gf <- factor(g)
gf

# change them to numbers.
gn <- as.numeric(gf)
gn

other.g <- factor(c("m","m","m","m","m"),level = c("f","m"))
other.g
table(gf)
a <- factor(c("adult", "adult","jvnenile","jvnenile","adult", "adult","jvnenile","jvnenile","adult", "adult"))
table(a)
# when use talbe(a,gf) they are asked to be of same length
# What R does? it's simapley match them in order, called column connected table
# f m m m m m f m f f
# a a j j a a j j a a 
t <- table(a,gf)

margin.table(t,1)
margin.table(t,2)

# p(row_i | col_j)
prop.table(t,1)
prop.table(t,2)
