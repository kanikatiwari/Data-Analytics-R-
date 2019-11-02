#Qplot
#simple plot
# adding aes
# adding layers with geom
# adding comparison with facet

library(ggplot2)
?econdata
head(co2)
names(co2)
#Simple qplot
qplot(CO2$conc, CO2$uptake, data = CO2) 
# adding aes:colour and shape
qplot(CO2$conc, CO2$uptake, data = CO2, shape = CO2$Treatment, colour = CO2$Plant)
# adding layers with geom : point and lines
qplot(CO2$conc, CO2$uptake, data = CO2, shape = CO2$Treatment, colour = CO2$Plant, geom = c("point", "line"))
# adding comparison with facet
qplot(CO2$conc, CO2$uptake, data = transform(CO2, fct = CO2$Type), shape = CO2$Treatment, colour = CO2$Plant, geom = c("point", "line"), facets = ~fct)
