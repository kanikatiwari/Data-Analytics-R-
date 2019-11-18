#Linear Regression

cars
head(cars)
?cars

# predicting mpg based on hp, wt and am

#mpg= b0 + b1*hp + b2*wt + b3*am  # lm equation

#relationship b/w mpg and wt
plot(mtcars$wt, mtcars$mpg)
# relationsip plot b/w mpg,wt,am and hp
pairs(mtcars[c('mpg', 'hp', 'wt', 'am')])

#creating code for linear regression 
lmcars= lm(mpg~hp+wt+am, mtcars)
lmcars

lmcars1= lm(mpg~hp+wt, mtcars)
lmcars1

lmcars2= lm(mpg~hp, mtcars)
lmcars2
