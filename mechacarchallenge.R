#import dependencies
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
# Import data from the mechacar_mpg.csv file into a DataFrame
mechacar_mpg_df <-read.csv(file="/Users/jaspreetkhela/Google Drive/My Drive/SCS Data Analytics Boot Camp Course Work/Boot Camp/Module 15 - Statistics and R/Application/Module 15 Challenge/mechacar-statistical-analysis/assets/data/mechacar_mpg.csv")

# View the head of the created DataFrame
head(mechacar_mpg_df)

# Generate multiple regression analysis using the data in the mechacar_mpg_df
lm_obj <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg_df)
lm_obj

# Summary of the regression analysis
summary(lm_obj)

# Deliverable 2: Create Visualizations for the Trip Analysis
# Import data from the suspension_coil.csv file into a DataFrame
suspension_coil_df <- read.csv(file="/Users/jaspreetkhela/Google Drive/My Drive/SCS Data Analytics Boot Camp Course Work/Boot Camp/Module 15 - Statistics and R/Application/Module 15 Challenge/mechacar-statistical-analysis/assets/data/suspension_coil.csv")                                                           # D2:Step 2

# View the head of the created DataFrame
head(suspension_coil_df)

# Create summary of mean, median, variance, and standard deviation using the suspension_coil_df
total_summary_df <- suspension_coil_df %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
head(total_summary_df)

#Calculate total samples
total_samples_df  <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarise(number_of_samples = n())
head(total_samples_df)

#Create a DataFrame and group each manufacturing lot by the mean, median, variance, and standard deviation
lot_summary_df <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(lot_summary_df)

# Deliverable 3: T-Tests on Suspension Coils
# t-Test on the suspension_coil PSI data
t.test(suspension_coil_df$PSI, mu=1500) 

# One sample t-test on Lot 1
suspension_coil_lot1_df <-subset(suspension_coil_df, Manufacturing_Lot == 'Lot1')
t.test(suspension_coil_lot1_df$PSI, mu=1500) 

# One sample t-test on Lot 2
suspension_coil_lot2_df <-subset(suspension_coil, Manufacturing_Lot == 'Lot2')
t.test(suspension_coil_lot2_df$PSI, mu=1500) 

# One sample t-test on Lot 3
suspension_coil_lot3_df <-subset(suspension_coil, Manufacturing_Lot == 'Lot3')
t.test(suspension_coil_lot3_df$PSI, mu=1500) 