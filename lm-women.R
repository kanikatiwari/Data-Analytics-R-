# Simple Linear with 1 IV and 1 DV

data(women)
women
names(women)
str(women)

#cov(women$height, women$weight)
#69 : which show positive relationship between height and weight

#cor(women$height, women$weight)
#0.995 : which shows Strong and Positive relationship betw height & weight
0.995^2 # also equal R^2 value in this case (Simple Linear Regression)

plot(x=women$height, y=women$weight, type='b')
#lm( y ~ x , data)
abline(lm(weight ~ height, data=women))
names(women)  #x- IV, y -DV
fit1 = lm(weight ~ height, data=women)  # creating a model
summary(fit1)  #summary of the Model
