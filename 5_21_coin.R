#1. 상관분석

data = read.csv("C:\\Users\\최고운\\Desktop\\건강검진정보(상관분석).csv")
data
plot(data$신장.5Cm단위. ~ data$체중.5Kg단위., main="평균키와 몸무게", xlab="Height", ylab="Weight")
cor(data$신장.5Cm단위.,data$체중.5Kg단위.)
#0.66정도로 상관이 없다고는 볼 수 없다?

