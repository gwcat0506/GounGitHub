class <- read.csv("class.csv")
str(class)
library(psych)
describe(class)
opar <- par(no.readonly = TRUE)
layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = TRUE)) 
boxplot(class)
hist(class$class1)
hist(class$class2)
par(opar)
var.test(class$class1,class$class2) 
t.test(class$class1,class$class2, 
       var.equal = TRUE, 
       conf.level = 0.95)
x=81.50
se=2.73
data <-rnorm(1000, x, se)
data <- sort(data)
plot(data, 
     dnorm(data, x, se), 
     col="red",
     type='l')
abline(v=x, col="blue", lty=3)

par(new=T) 


x= 79.35 
se=3.07
data <-rnorm(1000, x, se)
data <- sort(data)
plot(data, 
     dnorm(data, x, se), 
     type='l', 
     col="red")
abline(v=x, col="red", lty=3)

