
#student profile
ns= 200
age=round(runif(n=ns, min=20, max=30))
gender = sample(c('M','F'), size=ns, replace=T, prob=c(.7,.3))
table(gender)
#rep('M',100)
batch = sample(c('2017','2018','2019'), size=ns, replace=T, prob=c(.3,.3,.6))
table(batch)
domain = sample(c('Finance', 'HR', 'Operations', 'Markeitng'), size = ns, replace= T)
cgpa = round(rnorm(n=ns, mean=7, sd=.75),2)
range(cgpa) ; mean(cgpa)
class12 = round(rnorm(n=ns, mean= 70, sd=7),2)
range(class12); mean(cgpa)
ug = round(rnorm(n=ns, mean= 70, sd=5),2)
range(ug); mean(ug)
students= data.frame(age, gender, batch, domain, cgpa, ug, class12)
head(students)
students$select = sample(c('Placed', 'NotPlaced'), size= ns, replace= T, prob= c(.7,.3))
table(students$select)
students$salary= round(rnorm(n=ns, mean=12, sd=1),2)
students$salary = ifelse(students$select == 'NotPlaced',NA, students$salary)
range(student$salary)
head(students)
View(students)

#summarise
#getting frequency
nrow(students) #no. of students
table(students$batch)
table(students$domain)
table(students$batch, students$domain, students$gender)
table(students$domain, students$select)

#building graphs
hist(students$cgpa)
hist(students$cgpa, breaks = c(0, 6.5, 8.5, 10))
hist(students$age, breaks = c(20,24,26,30))

#base plot using dplyr and graph
t1 = students %>% group_by(gender) %>% summarise(MeanAge= mean(age))
barplot(height= t1$MeanAge)

#ggplot
#loading packages
library(ggplot2)
library(dplyr)

#graph for gender
ggplot(students, aes(x=gender, fill= gender)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..)) 

?geom_text

#graph for domain
ggplot(students, aes(x=domain, fill= domain)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..))

#position of text in stack order
ggplot(students, aes(x=domain, fill= batch)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..), position = position_stack())

#posotion of text in between the area
ggplot(students, aes(x=domain, fill= batch)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..), position = position_stack(), vjust = 2)

#graph for domain, batch and gender

ggplot(students, aes(x=domain, fill= batch)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..), position = position_stack(), vjust = 1, cex=3) + facet_grid(select~ gender)

ggplot(students, aes(x=gender, fill= gender)) + geom_bar(stat = 'count') + geom_text(stat = 'count', aes(label=..count..), position = position_stack(), vjust = 1, cex=3) + facet_grid(select~ domain)
