#3.다중 회귀분석

library(MASS)
head(birthwt)

fit <- lm(bwt~age+lwt+smoke+ptl+ht+ui,data=birthwt)
fit

plot(bwt~age+lwt+smoke+ptl+ht+ui,data = birthwt)
summary(fit)
#lwt,smoke,ht,ui는 p-value값이 0.05보다 작아서 유의하지만
#나머지는 그렇지 않다. 
