#로지스틱 회기분석

library(survival)
head(colon)

mylogit <- glm(status~obstruct+perfor+adhere+nodes,data=colon)
summary(mylogit)

#perfor을 제외한 모든 변수가 유의한 것을 알 수 있다. 