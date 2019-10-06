library(dplyr)
head(airquality)

#dplyr functions
#filter()
#mutate()
#summarise()
#sample()
#count()
#arrange()
#group_by()

#filter function
head(filter(airquality)
head(filter(airquality, Temp > 70))
head(filter(airquality, Temp > 80 & Month > 5))
head(mutate(airquality, TempInC = (Temp - 32) * 5 / 9))
?mutate
