#Basic Operators of R

#Assignment operators
# Arithmetic operators
#Relational operators
#Logical operators

#Assignment Operators
# <- , <<-, = -- Leftward Assigmnet
# ->, ->> -- rightward assignment

#leftward
h <- 10
i <<- 11
j = 12
#rightward
13 -> k 
14 ->> l

h #left
i #left
j #left
k #right
l #right

#Arithmetic Operators
# + addition
# - subtraction
# * multiplication
# / division
# ^ exponent
# %% modulus (gives remainder from division)
# %|% Integer division

x= 6
y= 8

x + y
x - y
x * y
x / y
x ^ y
x %% y
x %/% y

#Relational Operator
# < Less than
# > Greater than
# <= less than or equal to
# >= greater than or equal to
# == Equal to
# != not equal to
# It gives result as true and false, coz it is relating the vectors. 

a = 5
b = 9

a < b
a > b
a <= b
a >= b
a == b
a != b

#Logical Operators
# ! logical NOT
# & Element wise logical NOT
# | Element wise logical OR
# || Logical OR

f = c(45,31,51,60,78,98)
g = c(34,56,12,67,22,89)

d= (f>40 & f<60)
d
(f<=40 | f<70)
