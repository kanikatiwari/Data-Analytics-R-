#ggPlot

library('dplyr')
library(ggplot2)

df <- data.frame(dose=c("D1", "D2", "D3"),
                 len=c(4.2, 10, 29.5))
df

#Bar Plot########
#Basic barplot
?ggplot
?geom_bar

#simple bar plotting
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity")

#filling color and border
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", color='blue', fill='white')

#theme change-background
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", color='blue', fill='white') + theme_minimal()

# adding details to bars (inside)
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", color='blue', fill='white') + geom_text(aes(label=len), vjust= 1.6, color='red', size=3.5) + theme_minimal()

# adding details to bars (outside)
ggplot(data=df, aes(x=dose, y=len)) + geom_bar(stat="identity", color='blue', fill='white') + geom_text(aes(label=len), vjust= 1.6, color='red', size=3.5) + theme_minimal()

#change colors of bars-fill
ggplot(data=df, aes(x=dose, y=len, fill=dose)) + geom_bar(stat="identity") + geom_text(aes(label=len), vjust= -0.2, color='red', size=3.5) + theme_classic()

#changing colors of bars-borders
ggplot(data=df, aes(x=dose, y=len, color=dose)) + geom_bar(stat="identity", fill='white') + geom_text(aes(label=len), vjust= -0.2, color='red', size=3.5) + theme_classic()

# adding legends to graph
p= ggplot(data=df, aes(x=dose, y=len, fill=dose)) + geom_bar(stat="identity") + geom_text(aes(label=len), vjust= -0.2, color='red', size=3.5) + theme_classic() + theme(legend.position="top")

# Horizontal bar plot (need to save plot in an element first)
p + coord_flip()

#Pie Chart#######
#Pie Chart
p + coord_polar("y", start=0)
p + coord_polar("y", start=0, clip='on')
p + coord_polar("y", start=0)
?coord_cartesian
?coord_polar

#Box Plot####
#creating a data frame to plot it
df=mtcars
catcols = c('cyl', 'vs', 'am', 'gear', 'carb')
df[,catcols] = lapply(df[,catcols], as.factor)
catcols
df[,catcols]
sapply(df, class)

# simple boxplot
ggplot(df, aes(x='',y=mpg)) + geom_boxplot()

#grouping by cyl, plotting it
ggplot(df, aes(x=cyl, y=mpg, group=cyl)) + geom_boxplot()

#diving the no. of cars based on gear, boxplotting mpg based on no. of cyls
ggplot(df, aes(x=cyl, y=mpg, fill=factor(cyl))) + geom_boxplot() + facet_grid(~ gear)
?facet_grid

(p =ggplot(df, aes(x=factor(gear), y=mpg)) + geom_boxplot())
p + stat_summary(fun.y = 'mean', geom='point', size=5, shape=23, fill='blue') 
p + stat_bin(fun.y = 'mean', geom='point', size=5, shape=23, fill='blue') 


?stat_summary
