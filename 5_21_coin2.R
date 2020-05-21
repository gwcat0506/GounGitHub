#2. 단순 선형 회기 분석 
data2 = read.csv("C:\\Users\\최고운\\Desktop\\sample.csv")
data2
x<-data2$money
y<-data2$happiness

cor.test(x,y)
#상관계수가 0.79로 상관 관계가 있다고 볼 수 있다. 

plot(x,y)
m <- lm(y~x)
summary(m)
#p-value: < 2.2e-16 로 매우 작기 때문에 기울기는 0이다는 귀무가설 기각
#모형이 유의하다. 돈과 행복도 간의 관계가 존재한다. 

#y = -116.69460 + 1.03942x 표현
abline(m)
