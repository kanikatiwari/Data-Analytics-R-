#Arrays

#one two or more dimensions

d= array(1:3, c(2,4))
d

f= array(1:6, c(2,3))
f

#Constructing an array with dimension names
vector1 <- c(5,9,3)
vector2 <- c(10,11,12,13,14,15)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names, matrix.names))
result
?array