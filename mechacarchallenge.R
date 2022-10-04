library(dplyr)

#DELIVERABLE 1

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#linear regression
linear_reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance +AWD, data=MechaCar_mpg_df)
#Summary
summary(linear_reg)

#DELIVERABLE 2

#read in the Suspension_Coil.csv file
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#dataframe using the summarize()
summarize_Suspension_Coil <- Suspension_Coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep') 
#dataframe using group_by(Manufacturing_Lot)
summarize_SuspensionCoil_perlot <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep') 