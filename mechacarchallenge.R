#import dependencies
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
# Import data from the mechacar_mpg.csv file
mechacar_mpg <-read.csv(file="/Users/jaspreetkhela/Google Drive/My Drive/SCS Data Analytics Boot Camp Course Work/Boot Camp/Module 15 - Statistics and R/Application/Module 15 Challenge/mechacar-statistical-analysis/assets/data/mechacar_mpg.csv")

# View the head of the created DataFrame
head(mechacar_mpg)

# Generate multiple Regression Analysis
lm_obj <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)
lm_obj

# Summary of the Regression Analysis
summary(lm_obj)

# Deliverable 2: Create Visualizations for the Trip Analysis
# Import data from the suspension_coil.csv file
suspension_coil <- read.csv(file="/Users/jaspreetkhela/Google Drive/My Drive/SCS Data Analytics Boot Camp Course Work/Boot Camp/Module 15 - Statistics and R/Application/Module 15 Challenge/mechacar-statistical-analysis/assets/data/suspension_coil.csv")                                                           # D2:Step 2

# View the head of the created DataFrame
head(suspension_coil)

#create summary of Mean, Median, Variance, and standard deviation
total_summary <- suspension_coil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
head(total_summary)

#Calculate total samples
total_samples  <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(number_of_samples = n())
head(total_samples)

#Create a DataFrame and group each manufacturing lot by the mean, median, variance, and standard deviation
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(lot_summary)

# Deliverable 3: T-Tests on Suspension Coils
# Comparing all lot sample vs the population
# t-Test on the suspension_coil PSI data
t.test(suspension_coil$PSI,mu=1500) 

# One Sample t-Test on Lot 1
suspension_coil_Lot1 <-subset(suspension_coil,Manufacturing_Lot == 'Lot1')
t.test(suspension_coil_Lot1$PSI,mu=1500) 

# One Sample t-Test on Lot 2
suspension_coil_Lot2 <-subset(suspension_coil,Manufacturing_Lot == 'Lot2')
t.test(suspension_coil_Lot2$PSI,mu=1500) 

# One Sample t-Test on Lot 3
suspension_coil_Lot3 <-subset(suspension_coil,Manufacturing_Lot == 'Lot3')
t.test(suspension_coil_Lot3$PSI,mu=1500) 