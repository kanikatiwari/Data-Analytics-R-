library(DAAG)  # library for data set ais
# it cointains AIS dataset and CVlm (Cross-Validation for Linear Regression)
library(dplyr)  #for data manipulation
?ais  #understand the data set
#Perform Linear regression  model that can be use to predict hematocrit (hc) by establishing a statistically significant linear relationship with hemaglobin (hg). Consider Only one sex type (i.e, male)
#also explain the model output, draw boxplotm, density and histogram to understand the data. predict hc for any unknown value of hg
#use plot command to understand the assumptions of LM

#-------------------
head(ais, n=5)
#it’s a data frame with 202 observations and 13 variables. It represents a study on a group of australian athletes of how some characteristics of the blood varied with sport body size and sex type.
#Focusing only on blood characteristics (leaving out the body size), the goal is building a simple regression model that can be use to predict hematocrit (hc) by establishing a statistically significant linear relationship with hemaglobin (hg).
#Only one sex type is considered (i.e, male, in order to have a more homogeneous group);
ais2 <- subset(ais, sex=="m") # only male athletes
ais3 = ais2[,c(3,4)] # subset column number that correspond to "hg" and "hc"
head(ais3)
df = ais3
head(df)
#rename columns("hg"="HEMAGLOBIN", "hc"="HEMATOCRIT")) # rename variables
df <- df %>% rename(HEMAGLOBIN=hg, HEMATOCRIT=hc)
str(df) # new dataset now includes 102 observations

#check if there are any missing values in the dataset:
colSums(is.na(df)) # report how many missing values are per column

#univariate summary information of the new dataset:
summary(df) # overview of the two selected variables

#Graphical Analysis-----
#box plot of hemaglobin
boxplot(df$HEMAGLOBIN, col = "yellow", border="blue",  main = "HEMAGLOBIN boxplot",  ylab = "g per decaliter")
#box plot of hematocrit
boxplot(df$HEMATOCRIT, col = "orange", border="blue",  main = "HEMATROCRIT boxplot",   ylab = "percent values")

#outliers-----
boxplot.stats(df$HEMAGLOBIN)$out # HEMAGLOBIN outliers
boxplot.stats(df$HEMATOCRIT)$out #HEMATOCRIT outliers

#histogram-----
hist(df$HEMAGLOBIN)
hist(df$HEMATOCRIT)

#Density plot-----
plot(density(df$HEMAGLOBIN))
plot(density(df$HEMATOCRIT))

#Scatter plot-----
plot(df$HEMAGLOBIN, df$HEMATOCRIT)

#Building linear model-----

#Predicting linear model
set.seed(123)  # setting seed to reproduce results of random sampling
trainingRowIndex <- sample(1:nrow(df), 0.7*nrow(df))  #  training and testing: 70/30 split
trainingData <- df[trainingRowIndex, ]  # training data
testData  <- df[-trainingRowIndex, ]   # test data
#Now it’s possible to develop the model on the training data and use it to predict HEMATOCRIT on test data.

modTrain <- lm(HEMATOCRIT ~ HEMAGLOBIN, data=trainingData)  # build the model
predict <- predict(modTrain, testData)  # predicted values
summary(modTrain)

#Model Output
#R-squared : For the simple linear regression, R-squared is the square of the correlation between two variables. Its value can vary between 0 and 1: a value close to 0 means that the regression model does not explain the variance in the response variable, while a number close to 1 that the observed variance in the response variable is well explained. In the current case, R-squared suggests the linear model fit explains a ~ 80% of the variance observed in the data.

#Now, taking into consideration the test data, the correlation between actuals values and predicted values can be used as a form of accuracy measure
act_pred <- data.frame(cbind(actuals=testData$HEMATOCRIT, predicteds=predict)) # actuals_predicteds 
cor(act_pred)
#Correlation shows a high value of 88.6 %, so it means that actuals values and predicted values have similar directional movement.


#Checking accuracy
#Mean absolute percentage deviation is so defined:

mape <- mean(abs((act_pred$predicteds - act_pred$actuals))/act_pred$actuals)
print(mape) # show the result

#The result of about 0.02 is very low, and means a very good prediction accuracy.

#Diagnostics Plots------
#Residuals vs Fitted values

plot(modTrain, pch=16, col="blue", lty=1, lwd=2, which=1) 
plot(mod1, pch=16, col="blue", lty=1, lwd=2, which=1) 

#Residual data of the simple linear regression model is the difference between the observed data of the dependent variable and the fitted values.
#The plot is useful for checking the assumption of linearity and homoscedasticity. To assess the assumption of linearity, residuals should be not too far from 0 (ideally, standardized values should be in the range of -2 and +2). To assess he assumption of homoscedasticity, residuals should be randomly and equally distributed around the horizontal red line (which is just a scatterplot smoother, showing the average value of the residuals at each value of fitted value) representing a residual error of zero.In the current case, the red trend line is almost at zero except towards the right side, due to outliers presence. Some values, in particular observations “166”, “169” and "172" are outside the range between -2 and +2.

#qq-plot
plot(modTrain, pch=16, col="blue", lty=1, lwd=2, which=2)  
#The normal Q-Q (quantile-quantile) plot is a scatterplot that allows to see if a set of data plausibly come from a normal distribution.
#It is created by plotting two sets of quantiles vs one another: graphically, the points will fall along a a straight line if both sets of quantiles come from the same distribution.
#In the current case, points form a line in the middle of the graph, but tend to deviate from the diagonal line in both the upper and lower extremities. Plot behaviour like this, means that the tails are lighter (have smaller values) than what would be expected under the standard modeling assumptions (of the Normal distribution). Again the observations that can be noticed in the tails are "166”, “169” and "172".

#scale -location
plot(mod1, pch=16, col="blue", lty=1, lwd=2, which=3)
#The scale-location plot shows the square root of the standardized residuals (sort of a square root of relative error) as a function of the fitted values. It is useful to see how the residuals are spread and check the assumption of homoscedasticity (that it if the residuals have an equal variance or not).
#In the current case, the red trend line is almost horizontal except towards the right side. Again, observations “166”, “169” and "172" are outside the level of +1.5

#Residuals vs Leverage
plot(modTrain, pch=16, col="blue", lty=1, lwd=2, which=5)  
plot(modTrain, pch=16, col="blue", lty=1, lwd=2, which=4)

#The plot shows each points leverage, which represents a measure of its importance in determining the regression result. Each point far from the dashed line can be intended as an influential point.
#Cook’s distance is the measure of the infuence of each observation on the regression coefficients. Distances larger than 1 suggest the presence of a possible outlier. In the current case, large Cook’s distance (higher than 2) of observation “166” is evident.
