## Session 1.2 R objects
gDat <- read.delim("gapminderDataFiveYear.txt")
gDat
str(gDat)
head(gDat)
head(gDat, n=10)
tail(gDat)
tail(gDat, n=10)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(gDat)
length(gDat)
summary(gDat)


plot( lifeExp ~ year, data=gDat)
plot( lifeExp~gdpPercap, data=gDat)


str(gDat)
gDat$lifeExp
summary( gDat$lifeExp )
hist( gDat$lifeExp )


## exercise
## make a histogram of gdpPercap
hist( gDat$gdpPercap )


gDat$continent
str(gDat)
as.character(gDat$continent)


## subset
subset( gDat, subset= country == "Cambodia")
subset( gDat, subset= country == "Cambod") ## won't work because Cambod is not a value
subset( gDat, subset= country %in% c("Cambodia","Japan", "Spain") )
subset( gDat, subset= year < 1962)

## exercise
## subset dataset for which life exp < 32
subset( gDat, subset=lifeExp < 32)

subset( gDat, subset=lifeExp < 32, select=c(country, lifeExp, pop))
myData <- subset( gDat, subset=lifeExp < 32, select=c(country, 
                                            lifeExp, pop))
myData
mean(myData$lifeExp)
with(myData, mean(lifeExp))


plot( lifeExp ~ year, data=gDat, subset=country=="Spain")
lm( lifeExp ~ year, data=gDat, subset=country=="Canada")

mean( lifeExp, data=gDat, subset=country=="Canada") #nono
with(gDat, mean(lifeExp))
with( subset(gDat, subset=country=="Canada"), mean(lifeExp))



## 
x <- 5
x
x <- c(3, 5)
x
x[3] <- 4
x <- c(1,2,3,5,6)
x^2

x <- c(1, 3, "cabbage")
x
class(x)




## 
x <- c(1,2,3); x
x <- rnorm(10); x
x <- x < 0; x

x <- c("jenny", "andy", "shaun")
x


x <- cbind(1:5, c("a","b","c","d","e"))
x
x[3,]
x[,1]
x[3,2]

gDat[3,]






