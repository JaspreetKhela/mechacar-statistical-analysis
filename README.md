# MechaCar Prototype Statistical Analysis

## Overview of the Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked the data analytics team to review the production data for insights that may help the manufacturing team.

In this analysis project, the data analytics team completed the following:
* Performed multiple linear regression analysis to identify which variables in the dataset predicted the miles per gallon (mpg) of MechaCar prototypes;
* Collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots;
* Ran t-tests to determine whether or not the manufacturing lots were statistically different from the mean population; and
* Designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Linear Regression to Predict MPG
The following figure was obtained from the analysis.
_____

![1_linear_regression_to_predict_mpg](https://user-images.githubusercontent.com/80941606/193956762-e79531d4-38d6-496b-b83c-5b27ed9ffc27.png)

**Figure 1**: This was the output from performing the linear regression analysis on the mechacar_mpg_df.

_____

Our linear regression computation helps us to address the following questions:
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * 
* Is the slope of the linear model considered to be zero? Why or why not?
  * 
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * 

## Summary Statistics on Suspension Coils
The following figures were obtained from the analysis.
_____

![2_summary_statistics_on_suspension_coils_total_summary_df](https://user-images.githubusercontent.com/80941606/193957273-1a6ccd62-a009-4f58-81a4-e2f1e1cc88da.png)

**Figure 2**: This was the output from the total_summary_df for the suspension coils analysis.

_____

![3_summary_statistics_on_suspension_coils_lot_summary_df](https://user-images.githubusercontent.com/80941606/193957315-194dfe5d-28a2-4363-aeab-a7b129492821.png)

**Figure 3**: This was the output from the lot_summary_df for the suspension coils analysis.

_____

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  We can ask ourselves the following question: 
* Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  * 

## T-Tests on Suspension Coils
The following figures were obtained from the analysis.
_____

![4_one_sample_t_test_suspension_coils](https://user-images.githubusercontent.com/80941606/193959238-8480c1a1-7ea7-44e1-acd5-16b8ccc85ab2.png)

**Figure 4**: This was the output from the t-test performed on the population of suspension coils.

_____

![5_one_sample_t_test_lot1_suspension_coils](https://user-images.githubusercontent.com/80941606/193959252-758a6d61-f3de-4fd1-aaa3-e871cdfa30df.png)

![6_one_sample_t_test_lot2_suspension_coils](https://user-images.githubusercontent.com/80941606/193959271-e61a61f3-4d62-40ec-8a9a-5ea300b319ae.png)

![7_one_sample_t_test_lot3_suspension_coils](https://user-images.githubusercontent.com/80941606/193959283-f5339310-05fa-445c-bfe4-6a220abde211.png)

**Figure 5**: This was the output from the t-test performed on the sample populations of suspension coils within Lot 1, Lot 2, and Lot 3, respectively.

_____

We can briefly summarize our interpretations and findings for the t-test results as follows:
* 

## Study Design: MechaCar vs Competition
A statistical study that can quantify how the MechaCar performs against the competition can address the following questions:
* What metric or metrics are you going to test?
  * 
* What is the null hypothesis or alternative hypothesis?
  * 
* What statistical test would you use to test the hypothesis? And why?
  * 
* What data is needed to run the statistical test?
  * 
