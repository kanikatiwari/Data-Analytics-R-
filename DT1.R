#decision tree
iris
dim(iris)
#creating a sample 
a= sample(150,100)
iris_train = iris[a,]
iris_test = iris[-a,]
dim(iris_train)
dim(iris_test)

library(rpart)
library(rpart.plot)

#model for classification, defualt method
dtm = rpart(Species~ ., data= iris_train, method = 'class')
dtm
View(iris)

rpart.plot(dtm)
rpart.plot(dtm, extra=4)
rpart.plot(dtm, type= 1, extra=4)

table(iris$Species)

library(dplyr)
table(filter(iris_train, iris_train$Petal.Length < 2.7, iris_train$Petal.Width<1.75))

p= predict(dtm, iris_test, type = 'class')
plot(p)
#Comparing actual with predicted
table(iris_test[,5],p)

dtm1 = rpart(Petal.Length~ ., data= iris_train, method = 'anova')
rpart.plot(dtm1, type = 2)
?rpart.plot
p1= predict(dtm1, iris_test, type = 'anova')
p1
table(iris_test[,3],p1)
