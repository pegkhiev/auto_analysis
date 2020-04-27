mpg_data <- read.csv(file = "MechaCar_mpg.csv", check.names = T, stringsAsFactors = F)

#MPG Regression Model 
#In the given dataset, all variables (except AWD which is a dichotomous data type), 
# are variables of interest that can affect mpg performance. Therefore
# the model includes all 3 variables. 

lm(mpg~ vehicle.length+spoiler.angle+ground.clearance, data=mpg_data)
summary(lm(mpg~ vehicle.length+spoiler.angle+ground.clearance, data=mpg_data))

#Suspension Coil Statistical Summary
coil_data <-read.csv(file = "Suspension_Coil.csv", check.names=T, stringsAsFactors = F)
summary(coil_data)
#Calculate the standard deviation and variance of suspension coil data
sd(coil_data$PSI)
var(coil_data$PSI)

#The one-sample T-test is chosen as the objective is to 
# compare the similarity of this sample versus the population.
#Perform one-sample T-test of suspension coil PSI data
t.test(coil_data$PSI,mu=1500)
