library(ggplot2)
library(moments)
library(forecast)
##importing the data
HR <- read.csv(file.choose(),sep = "," header=T)
##viewing the data
view(HR)
attach(HR)
##viewing the structure of the data (data types)
str(HR)
##summary of the data
nrow(HR)
summary(Attrition)
summary(age)
boxplot(age)
ggplot(data=HR, aes(x=age)) + geom_bar(alpha(=0.5,fill="red", color="black") + ggtitle("age distribution")
ggplot(data = HR, mapping=aes(x="", y=age)) + geom_boxplot(aes(color=attrition))
## 
summary(BusinessTravel)
table(BusinessTravel , Attrition)
Summary(DailyRate)
boxplot(DailyRate)
hist(DailyRate, col="light blue", border="black")
ggplot(data = HR, mapping=aes(x="", y="DailyRate")) + geom_boxplot(aes(color=Attrition))
length(unique(EmployeeNumber))
hist(log2(monthlyincome), col="light pink")
BoxCox.lambda (percentagesalaryhike)
#checking for missing values
as.matrix(sapply(HR, function(x) sum(is.na(x))))

