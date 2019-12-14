Cars <- read.csv("C:/Users/naaz/Downloads/Cars.csv")
 View(Cars)
 
#Scatter Plot Matrix:
pairs(Cars[,2:4])
pairs(Cars)


# Correlation Matrix: 
cor(Cars)


#Regression MOdel and Summary
model.car<-lm(MPG~VOL+HP+SP+WT,data.frame(Cars))
summary(model.car)
 
#Diagnostic Plots:
#Residual Plotes, QQ-plots,Std.Residuals vs fitted
plot(model.car)

#Residual vs Regressors
car::residualPlots(model.car)

#Added Variable Plots
car::avPlots(model.car)

#QQ-plots of studentized residuals
car::qqPlot(model.car)

#deletion Diagnostics
influence.measures(model.car)
car::influenceIndexPlot(model.car) #Index Plots of the influence
