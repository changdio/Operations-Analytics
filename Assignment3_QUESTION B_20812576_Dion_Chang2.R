mydata = read.csv(file.choose())
mydata
data_train <- mydata[1:28,1:2]
data_test <- mydata[1:3,3:4]

data_train
data_test

acf(data_train[,2])
pacf(data_train[,2])

result <- arima(data_train[,2],order=c(1,0,0),method=c("CSS"))
result
library(forecast)
forecast(result,1)
196.6542/5 # to containers
