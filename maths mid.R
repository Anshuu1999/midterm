# upload the dataset

data = read.csv("diabetes.csv")
install.packages("dplyr")
library(dplyr)

install.packages("explore")
library(explore)
# Exploratory data analysis

explore_tbl(data)
describe(data)
explore_all(data)
explore_tbl(data)
data %>%
  select(Glucose,Pregnancies,BloodPressure,SkinThickness,Insulin,BMI,Age,DiabetesPedigreeFunction) %>%
  explore_all(target = Age)
attach(data)
plot(SkinThickness,DiabetesPedigreeFunction,
     main="Basic Scatter plot of Pregnancies vs. DiabetesPedigreeFunction",
     xlab="Pregnancies",
     ylab="DiabetesPedigreeFunction")
abline(lm(Pregnancies~DiabetesPedigreeFunction), col="yellow", lwd=2, lty=1)
lines(lowess(Pregnancies~DiabetesPedigreeFunction), col="green",lwd=2,lty=2)
