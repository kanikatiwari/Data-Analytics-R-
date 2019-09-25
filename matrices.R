#Matrices

m= matrix(nrow = 2, ncol = 2)
m

#dimension
dim(m)

m <- matrix(c(1:3))
class(m)
typeof(m)
m

#Matrix filled collumn wise
m <- matrix(1:6, nrow = 2, ncol = 3)
m
typeof(m)

#Matrix filled row wise
mymatrix= matrix(1:6,nrow=3,byrow=TRUE)
mymatrix

#Other ways to construct matrix
m      <- 1:10
dim(m) = c(5,2)

#adding row or collumn to existing matrix
#cbind- for collumn
#rbind- for rows 
  
