# MechaCar_Statistical_Analysis

## AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs management would like the data analytics team to review the production data for insights that may help the manufacturing team.

### Resources

- Data Source: 
	- MechaCar_mpg.csv
	- Suspension_Coil.csv

- Software:
	- RStudio version 1.3.1093


## Linear Regression to Predict MPG
![alt text](https://github.com/Yunaka1269/MechaCar_Statistical_Analysis/blob/main/pic/linear_reg.PNG "Linear_Reg")
-Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

	In the summary output, each Pr(>|+|) value represents the probability that each cofficient contributes a random amount of variance to the linear model. According to results, vehicle length and ground clearance (as well as intercept) are statistically to provide non-random amount of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on mpg.

-Is the slope of the linear model considered to be zero? Why or why not?

	The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

	When an intercept is statistically significant, it means there are other variables and factors that contribute to the variation in mpg that have not been included in our model. The lack of significant variables is evidence of overfitting failing to generalize and predict future data correctly. 

## Summary Statistics on Suspension Coils
-The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

	Current manufacturing data for all manufacturing total meets the design specification, however, Lot3 variance exceeds 100 pounds per square inch therefore Lot3 fails to meet the specification. 

## T-Tests on Suspension Coils
-briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

	Assuming our significance level was the common 0.05 percent, p-value is above significance level for across all manufacturing lots and individual Lot1 and Lot2. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar. However, p-value is below significance level for Lot3 and is statistically different.

## Study Design: MechaCar vs Competition
-Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

	city/highway/combined fuel efficiency, horse power, and cost are to be of interest to a consumer because they are monetary value that consumers can easily visualize.  

-What metric or metrics are you going to test?

	city/highway/combined fuel efficiency against competitors

-What is the null hypothesis or alternative hypothesis?

	H0 : The difference between our paired observations (the true mean difference, or "μd") is equal to zero.
	
	Ha : The difference between our paired observations (the true mean difference, or "μd") is not equal to zero.

-What statistical test would you use to test the hypothesis? And why?

	two-sample t-test because we pair observations in one dataset metric with observations in another (competition)

-What data is needed to run the statistical test?

	We need to collect mpg data of competitor's vehicle. 
