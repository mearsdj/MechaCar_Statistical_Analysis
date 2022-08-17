# loading necessary libraries
library(tidyverse)

#importing the mpg data set
mecha_mpg <- read.csv("MechaCar_mpg.csv")
#running linear regression model agains the mpg data set, and summarizing results
model_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg)
model_summary <- summary(model_mpg)

#importing the suspension coil dataset

susp_coils <- read.csv("Suspension_Coil.csv")

psi_all_lots <- susp_coils %>%
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),PSI_Variance=var(PSI),
PSI_Standard_Deviation=sd(PSI))

psi_by_lot <- susp_coils %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI),PSI_Variance=var(PSI),
PSI_Standard_Deviation=sd(PSI), .keep='groups')


#https://nathancarter.github.io/how2data/site/how-to-do-a-hypothesis-test-for-population-variance-in-r/
# for lot3, is the variance statistically significant?
#var can't exceed 100
# hyp.var <- 100
#calc degrees of freedom, number of obs - 1
# df <- length(lot3_coils)
# df <- nrow(lot3_coils)
# df <- nrow(lot3_coils)-1
#calculate ratio of vars, out test stat
# test.statistic <- df*var(lot2_coils$PSI)/hyp.var
# test.statistic <- df*var(lot1_coils$PSI)/hyp.var
# test.statistic <- df*var(lot3_coils$PSI)/hyp.var
#use chi sq test to determine significance
# 2*pchisq(test.statistic,df=df,lower.tail = FALSE)