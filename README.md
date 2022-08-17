# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

In our analysis of variables that can be used to predict fuel efficiency (in mpg),
the following two variables were found to be statistically significant:
- vehicle_length
- ground_clearance

The slope of the regression line was also found to be statistically significant.
Given the statistical significance of the intercept, we can say with confidence
that it's not equal to zero.

With an adjusted R-squared of 0.6825, we can conclude that the model does have
reasonable predictive power for the mpg of MechaCar prototypes.

## Summary Statistics on Suspension Coils

In the analysis of 3 suspension coil manufacturing lots it was determined that one
of the lots, Lot3, does not meet the design specification.
The design spec requires that the variance of coil PSI can't exceed 100.
As can be seen below, at the aggregate level (all lots combined) the combined
lots do meet the requirement,but when analyzed by lot, as noted, Lot3 falls outside the
desired tolerance.

### Overall Summary:

![Overall Summary](total_summary.png)

### Lot Summary:

![Lot Summary](lot_summary.png)


## T-Tests on Suspension Coils

T-tests were performed across the suspension coil manufacturing lots to determine
whether the mean PSI overall, and for each lot, was different from an expected 1500 PSI.
As seen in the first result below, the overall (i.e. combined) mean was not determined to be statistically different
from 1500.

![overall t result](total_t_test.png)

At the lot level, for Lot 1 and Lot 2, we fail to reject the null hypothesis that mean coil PSI
is different from 1500, but for Lot 3, we do reject the null, so conclude that the mean for Lot 3
is statistically different from 1500.  This is consistent with our variance results for Lot 3 as well.
T-test results for each lot are shown below:

![Lot 1](Lot1_t_test.png)


![Lot 2](Lot2_t_test.png)


![Lot 3](Lot3_t_test.png)


## Study Design: MechaCar vs Competition

