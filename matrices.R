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
mymatrix= matrix(1:6,nrow=3,byrow=TRUE, dimnames= list(c("d", "e","f"), c("a", "b")) )
mymatrix

?matrix
#Other ways to construct matrix
m     <- 1:10
dim(m) = c(5,2)

#adding row or collumn to existing matrix
#cbind- for collumn
#rbind- for rows 
?cbind

c= c(7,8,9)
mymatrix1= cbind(mymatrix, c)
mymatrix1

g= c(10,11,12)
mymatrix2= rbind(mymatrix1, g)
mymatrix2

#Slicing a Matrix:
#We can select one or many elements from a matrix by using the square brackets [ ]. 

mymatrix2[1,2] # Element at place- 1row 2column

mymatrix2 [1:3,1:2] #Elements at place- 1,2,3 rows and 1,2 columns

mymatrix2[1,] #Slicing first row

mymatrix2[,2] #Slicing second column 
