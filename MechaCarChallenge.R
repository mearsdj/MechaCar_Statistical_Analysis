library(tidyverse)
mecha_mpg <- read.csv("MechaCar_mpg.csv")
model_mpg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mecha_mpg)
model_summary <- summary(model_mpg)