#Vector
#have only one kind of data - numeric, character, logical or integer
# c()-- c means concatenation
#https://swcarpentry.github.io/r-novice-inflammation/13-supp-data-structures/


#numeric
x = c(2,3,4)
x
class(x)

#Character
y= c('a', 'b', 'c')
y

#logical
z= c(TRUE, TRUE, FALSE, FALSE)
z

#integers
a = c(1L, 2L, 3L)
a
class(a)
length(a)
typeof(a)
str(a)
attributes(a)

?attributes()

#adding element to vector

y = c(y, 'd')
y

#Vectors from a Sequence of Numbers
series= 1:10
series 
seq(10)
seq(1,10,1.5)
  
#Missing Values in Vector
#is.na
#anyNA
#anyNA

u= c('a', 'c',NA, 'd')
v= c(4, 6, 8, NA, 9)
k= c(1.5, NA, 1.8)
s= c(1, 2, 3, 4, 5)

is.na(u)
is.na(k)
anyNA(v)
anyNA(s)

xx <- c(1.7, "a")
xx
xx <- c(TRUE, 2)
xx <- c("a", TRUE)