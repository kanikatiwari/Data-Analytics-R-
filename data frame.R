#data frame

#Data frame can contains different data sets- numeric, character, logical or integer

#Dataframe1
patient_ID= c(1,2,3,4)
age=c(21,28,26,23)
diabetes = c("Type1", "Type2", "Type3", "Type4")
status= c("Improved", "Poor", "Improved", "Poor")

patient_data= data.frame(patient_ID,age,diabetes,status)
patient_data


#Dataframe2
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))

#sample(c('M','F'), size=30, replace=F, prob=c(.7,.3))

(marks1 = floor(rnorm(30,mean= 50,sd=10)))

(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
table(course)
df= data.frame(rollno, sname, gender, course, marks1, marks2, stringsAsFactors = F)
df
str(df)

#by defualt R creates all the vectors with charater data as Factor.

#Now we will make Faactor by ourself like Gender and Course

df$gender = factor(df$gender)
df$course = factor(df$course, levels= c('BBA','MBA'), ordered = TRUE)
str(df)
df

#Slicing the Data Frame

df[7,]
#using dplyr function
df %>% slice(3)
df %>% slice(3:6)

