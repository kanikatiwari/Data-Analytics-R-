#Basic Graphs
# Plots - Scatterplot, matrix plot, marginal plot, dotplot, probability plot, boxplot, interval plot, time series plot, contour plot, individual value plot, area graphs, 
# Charts - Bar Chart, Pie Chart, 
# Histogram
#Stem and Leaf

#Plot
sale5 <- c(6, 4, 9, 7, 6, 12, 8, 10, 9, 13)
plot(sale5)
abline(lsfit(1:10, sale5))
abline(lsfit(1:10, sale5, intercept = FALSE), col = 4) # less fitting

#BarPlot####

cylinders = table(mtcars$cyl)
barplot(height=cylinders)

barplot(height=table(mtcars$am))
barplot(height=table(mtcars$gear), col=1:3, main='No of cars of each gear type', xlab='Gear Type', ylab='Count of Cars')

barplot(height=table(mtcars$carb), col=1:5, horiz = T)

#pie##
x = c(10,20,40,50)
pie(x)
xlabels = c('A','B','C','D')
pie(x, labels=xlabels)

#Pie with mtcars####
(cylinders = table(mtcars$cyl))
pie(x=cylinders)
pie(x=cylinders, labels=c('4-Cyl','6-Cyl','8-Cyl'))
pie(x=cylinders, labels=paste(c('4-Cyl','6-Cyl','8-Cyl'),'\n', cylinders, ' cars', sep='-')) 

#Box Plot#####
?boxplot
?abline
boxplot(x=mtcars$mpg)
abline(h=mean(mtcars$mpg))

#box plot with lines showing quantile values of mpg 
boxplot(x=mtcars$mpg, col='green')
abline(h=quantile(mtcars$mpg), col= 1:6)  
