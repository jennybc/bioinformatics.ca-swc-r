set.seed(1)
(x <- round(rnorm(8), 2))
str(x)
names(x) <- letters[1:8]
x
names(x)
x[4]
x[c(3, 6, 7)]
x[-1]
x
x < 0
x[x < 0]
which(x < 0)

(y <- 1:3)
(z <- 3:7)
y + z

x
x[c(TRUE, FALSE)]
x(2)

x["b"]
x[c("a", "c", "f")]
x$b
