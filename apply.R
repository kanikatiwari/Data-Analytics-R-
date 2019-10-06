#Apply Family
#Apply functions
#lapply() Sapply() vapply() tapply() rapply() mapply() rep() Sweep() aggregate()

#aplly() function
# used for arrays and matrices

data= trunc(rnorm(30, mean=50, sd=5))
x= matrix(data, nrow=6, byrow=F)
x
apply(x, MARGIN=2, FUN = mean)

#lapply() function
#apply for data frame, vector, list, matrix
#output is always in list form

list= list(4,6,7,8)
matrix= matrix(1:20, nrow=4, T)
matrix
list
A= matrix(rnorm(10) , nrow=2, byrow=T)
B= matrix(rnorm(10), 5, T)
C= matrix(rnorm(10), 5, T)
mylist= list(A,B,C)
#adding 2 to elements of the list
mylist
lapply(list, sum, 2)
?lapply
lapply(matrix, quantile, probs=1:3/4)
lapply(mylist, '[', 2)
#matrix wise mean
lapply(mylist, mean)

#sapply
#simplifying data
