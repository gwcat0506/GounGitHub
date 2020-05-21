TM <- read.csv("TakingMedicine.csv")
show(TM)

library(psych)
describe(TM)
dif <- c(TM$after-TM$before) 
describe(dif)



opar <- par(no.readonly = TRUE)
layout(matrix(c(1, 2, 3, 3), 2, 2, byrow = TRUE)) 
hist(TM$before, main="사전 발모량")
hist(TM$after, main="사후 발모량")
boxplot(dif, main="발모량 차이") 
par(opar)

t.test(TM$after, TM$before, 
       alternative = c("two.sided"),
       paired = TRUE,
       conf.level = 0.95)



mu=0
se=1120.01
inter = qt(p=0.025, df=49)
data <-rnorm(1000, mu, se)
data <- sort(data)
plot(data, 
     dnorm(data, mu, se), 
     type='l', 
     main="발모량 차이 검정")

abline(v=mu, col="green", lty=5)
abline(v=mu+inter*se, col="blue", lty=5) 
abline(v=mu-inter*se, col="blue", lty=5)
