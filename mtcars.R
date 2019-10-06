# comment to explain your code
mtcars #control + enter
?mtcars
?mean
class(mtcars)

summary(mtcars) #summary of data
str(mtcars)

table(mtcars$gear)
table(mtcars$cyl, mtcars$gear, dnn= c("cyl","gear"))

taxila = 100:103
names = c('A', 'B', 'C')
x= setNames(100:103, c('A','B','C', 'D'))
x
class(x)
typeof(x)
str(x)
attributes(x)
?setNames
