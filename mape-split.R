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
#random sample index
splitindex= sample()
train_index= sample(1:nrow(beaver1), 0.8*nrow(beaver1))
test_index= setdiff(1:nrow(beaver1), train_index)
View(train_index)


#simple sample


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