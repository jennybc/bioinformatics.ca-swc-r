## data aggregation
gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

## take a data.frame
## linear regression of lifeExp on year
## return intercept and slope

lm(lifeExp ~ year, gDat)

library(ggplot2)
ggplot(gDat, aes(x = year, y = lifeExp)) + geom_point() +
  geom_smooth(method = "lm")

lm(lifeExp ~ I(year - 1952), gDat)
fit  <- lm(lifeExp ~ I(year - 1952), gDat)
str(fit)
summary(fit)
coef(fit)

## can you write a function:
## input: a data.frame
## output: the intercept and slope from (see model above)

jFun <- function(df) {
  fit  <- lm(lifeExp ~ I(year - 1952), df)
  return(coef(fit))
}
jFun(gDat)

## create a subset of gDat = the data for one country
## store it as an object
## apply jFun() to it
## for fun: make the companion figure to sanity check!

x <- subset(gDat, country == "Rwanda")
ggplot(x, aes(x = year, y = lifeExp)) + geom_point() +
  geom_smooth(method = "lm")
jFun(x)

#installed.packages("plyr", dependencies = TRUE)
library(plyr)
ddply(gDat, ~ country + continent , jFun)
