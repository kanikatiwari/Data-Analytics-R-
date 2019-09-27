#Advanced Data Management

##Mathematical functions

#Absolute Value
abs(-5)

#Square Root
sqrt(25)
sqrt(c(4, 16, 8))

#Smallest integer not graeter than x
ceiling(3.475)

#Greatest integer not graeter than x
floor(3.475)

#Integer formed by truncating values in x towards 0
trunc(5.99)

#Roundinng of value of X with a specified decimal point
round(5.67892, digit=2)

#Roundinng of value of X with a significant digit
signif(5.67892, digit=2)

#cos, sin, tan
cos(4)
sin(3)
tan(5)

#arc cos, arc sin, arc tan
acos(-0.416)
asin(-0.4)
atan(5)

#hyperbolic cos, sin, tan
cosh(-0.416)
sinh(-0.4)
tanh(5)

#logritm of x to the  base n
log(4)
log10(7)
log(10,base=3)

#Exponential fundtion
exp(5)

##Statistical Function

#Mean
mean(c(3,4,5,6,7))

#Median
median(c(1,2,3,4,5,7))

#Standard Deviation
sd(c(1,2,3,4,5))

#Variance
var(c(1,2,3,4,5,6,7,9))

#Median absolute deviation
mad(c(1,2,3,4,9,10))

#quantile
quantile(7,)

#Range
x=c(1,2,3,4,5,6)
range(x)
diff(range(x))

#Sum
sum(c(5,6,7,8,9,11,23))

#difference
x=c(1,2,3,4,5,6)
diff(x, lag=1)

#Minimum
x=c(4,6,2,6,7,10,1)
min(x)

#Maximun
x=c(4,6,2,6,7,10,1)
max(x)

#Scale-Standardise

##Propability Functions

#beta
?beta

#binomial
?binom 

##Character Function

#counting no. of characters
a="poonam"
nchar(a)

#substring
x="abcdefghi"
substr(x,3,5)
?substr
substr("abcdef", 2, 4)
substring("abcdef", 1:6, 1:6)

#Telling the position of the element you mention
?grep 
grep("A",c("A","B","C")) #Position of A in vector
grep("B",c("A","B","C")) #Position of B in vector
grep("[a-z]", letters) #Positions of A to Z in vector

#Learning summary of data and  setting random data
summary(rnorm(5))
?rnorm

set.seed(1234)
mean(rnorm(5))
sd(rnorm(5))
?pretty
pretty(c(0,10),4)
substr('kanika',5,6)
grep('a', 'kanika', fixed=T)
?grep
sub('a','x','kanika')
strsplit('kanika tiwari', '')
paste('c',1:10,sep='-')
x = c(1.3,4.5,5.5, 6, 7.8)
cut(x,2)
y = c(1, 2, 3, 2, 4)
cut(y, 4)
cat(x,y,x)
c(x,y)
head(mtcars)
apply(mtcars, 2, FUN=mean)

