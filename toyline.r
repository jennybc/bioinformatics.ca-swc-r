a <- 4
b <- 1.2
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sqrt(0.4))
plot(x, y)
abline(a = a, b = b, col = "orange", lwd = 2)
dev.print(pdf, "toyline-linear.pdf")
