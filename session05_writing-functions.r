## writing functions
gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

## let's compute the difference between a variable's max and min
## practice with lifeExp, pop, gdpPercap
## read up on min(), max(), range()

with(gDat, max(lifeExp) - min(lifeExp))
max(gDat$lifeExp) - min(gDat$lifeExp)

range(gDat$lifeExp)
range(gDat$lifeExp)[2] - range(gDat$lifeExp)[1]
diff(range(gDat$lifeExp))

jRange <- range(gDat$lifeExp)
jRange[2] - jRange[1]

which.min(gDat$lifeExp)
gDat[1293, ]
gDat[which.min(gDat$lifeExp), ]

## let's package that into a function
max_minus_min <- function(x) max(x) - min(x)
max_minus_min(gDat$lifeExp)

## use max_minus_min() on another variable
max_minus_min(gDat$gdpPercap)
max_minus_min(1:100)
max_minus_min(runif(1000))
max_minus_min(gDat$country)
max_minus_min("i am a duck")

x <- gDat$lifeExp
max_minus_min(x)
x

## get to know the quantile() function
## use lifeExp as your variable
str(subset(gDat, select = lifeExp))
str(gDat$lifeExp)
quantile(gDat$lifeExp)
quantile(gDat$lifeExp, probs = c(0.1, 0.2))
quantile(gDat$lifeExp, probs = seq(0, 1, 0.1))

x <- 1:5
x[3] <- NA
quantile(x)
quantile(x, na.rm = TRUE)

quantile(gDat$lifeExp, probs = 0.5)
quantile(gDat$lifeExp, probs = 0)
quantile(gDat$lifeExp, probs = 1)

## use quantile to get 0.25 and 0.75 quantiles
## store them
## take difference
a <- quantile(gDat$lifeExp, probs = 0.25)
b <- quantile(gDat$lifeExp, probs = 0.75)
b - a

quantile(gDat$lifeExp, probs = 0.75) -
  quantile(gDat$lifeExp, probs = 0.25)

diff(range(quantile(gDat$lifeExp, probs = c(0.25, 0.75))))

diff(range(quantile(gDat$lifeExp, probs = c(0.75, 0.3, 0.25))))

max_minus_min <- function(x) {
  return(max(x) - min(x))
}
max_minus_min(gDat$lifeExp)

## upgrade max_minus_min <- function(x) max(x) - min(x)
## to take difference between two quantiles
## inputs: x = numeric vector
##        probs = the probabilities
## returns: difference between the quantiles

#function to find the difference in quantiles
diff.quantile <- function(x) diff(range(quantile(x, probs=b)))
b <- c(0.2, 0.75)
diff.quantile(gDat$lifeExp)
rm(b)
diff.quantile(gDat$lifeExp) ## oops object 'b' not found!

quantile_max_minus_min <- function(x,a,b) {
  diff(range(quantile(x, probs = c(a,b))))
}
quantile_max_minus_min(gDat$lifeExp, a = 0.25, b = 0.75)

quant_diff <- function(df, x, range_quant) {
  diff(range(quantile(df[[x]], probs = range_quant)))
}
quant_diff(gDat, x = "lifeExp", range_quant = c(0.25, 0.75))

str(gDat$lifeExp)
str(subset(gDat, select = lifeExp))
str(gDat["lifeExp"])
str(gDat[["lifeExp"]])

quantile_diff <- function(x, probs) {
  the_quantiles <- quantile(x, probs = probs)
  return(max(the_quantiles) - min(the_quantiles))
}
quantile_diff(gDat$lifeExp, probs = c(0.25, 0.75))
IQR(gDat$lifeExp)
quantile_diff(gDat$lifeExp, probs = c(0, 1))
diff(range(gDat$lifeExp))
quantile_diff(gDat$lifeExp, probs = c(0.5, 0.5))

quantile_diff(gDat$lifeExp)

quantile_diff <- function(x, probs = c(0, 1)) {
  the_quantiles <- quantile(x, probs = probs)
  return(max(the_quantiles) - min(the_quantiles))
}
quantile_diff(gDat$lifeExp)
quantile_diff(gDat$lifeExp, probs = c(0.25, 0.75))
quantile_diff(gDat$lifeExp, probs = c(0.75, 0.25))

search()
