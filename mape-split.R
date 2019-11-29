#MAPE
#Mean Absolute Percentage Error Loss

#rowMeans(abs((actual-predicted)/actual) * 100)
#mean(abs((y - predicted)/y))
#http://www.forecastpro.com/Trends/forecasting101August2011.html

#Splitting data in train and test data


day= rep(346, times=6 )
time= c(840,850,900,910,920,930)
temp= c(36.33, 36.34, 36.35, 36.42, 36.55, 36.69)
active = rep(0 , times=6)
beaver1 = data.frame(day,time,temp,active)

#Way 1
#using sample.split 
library(caTools)
data(beaver1)
mysplit= sample.split(beaver1,SplitRatio = 0.65)
train= subset(beaver1,mysplit==T)
test= subset(beaver1,mysplit==F)
View(train)
View(test)

#Way 2
#simple sample
#using iris data set to split it
iris
dim(iris)
#creating a sample 
a= sample(150,100)
iris_train = iris[a,]
iris_test = iris[-a,]
dim(iris_train)
dim(iris_test)


#Way 3
#using caret
library(caret)
beaver1
traindataindex= createDataPartition(beaver1, p=0.7, list=F)
traindataindex
trainData= beaver1[traindataindex,]
testData= beaver1[-traindataindex,]
View(trainData)
View(testData)