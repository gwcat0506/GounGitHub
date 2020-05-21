#5.14 coin

#반복측정 분산 분석

install.packages("agricolae")
library(agricolae)
library(ggplot2)
library(reshape2)
library(dplyr)

CSV = read.csv("반복측정분산분석.csv")

CSV_I<-melt(data,id,vars="id")
colnames(CSV_I)<-c("id","time","value")
CSV_I$id <- factor(CSV_I$id)
CSV_I$time<- factor(CSV_I$time)
head(CSV_I)

ggplot(data=CSV_I,aes(x=time,y=value))+
  geom_line(aes(group=id,col=id))+
  geom_point(aes(col=id))

anova<-aov(value~time+Error(id/time),data=CSV_I)
summary(anova)

with(CSV_I,pairwise.t.test(value,time,paired=T,p.adjust.method = "bonferroni"))
#3개월 후는 혈중농도가 차이가 있지 않다. 
#3개월 후와 6개월 후는 차이가 있다. 

#이원배치 분산 분석

mtcars$am <- factor(mtcars$am, levels=c(0,1), labels=c("automatic","manual"))
mtcats$cyl <- factor(mtcats$cyl, levels = c(4,6,8), labels=c("4cyl","6cyl","8cyl"))

summary(mtcars)
boxplot(mpg~am*cyl, mtcars, xlab = "interaction", ylab = "satixfaction")

interaction.plot(mtcars$am, mtcats$cyl,mtcats$mpg)
mtcars.aov <- aov(mpg~am*cyl, mtcars)
summary(mtcats.aov)