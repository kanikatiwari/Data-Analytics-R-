path = 'https://raw.githubusercontent.com/DUanalytics/datasets/master/csv/titanic_train.csv'
titanic <- read.csv(path)
View(titanic)
head(titanic)
names(titanic)
data = titanic[,c(2,3,5,6,7)]  #select few columns only
head(data)
dim(data)
#load libraries
library(rpart)
library(rpart.plot)

names(data)
table(data$Survived)
str(data)
fit <- rpart(Survived ~ ., data = data, method = 'class')
fit
rpart.plot(fit, extra = 104, cex=.8,nn=T)  #plot
table(data$Sex)
table(data$Survived)
table(data$Survived,data$Sex)
head(data)
printcp(fit) #select complexity parameter
prunetree2 = prune(fit, cp=.015)
prunetree2 = prune(fit, cp=.017)
prunetree2
rpart.plot(prunetree2, cex=.8,nn=T, extra=105)
rpart.plot(prunetree2, cex=.8,nn=T)
prunetree2
nrow(data)
table(data$survived)

