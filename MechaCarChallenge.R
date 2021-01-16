install.packages("dplyr")

install.packages("tidyverse")

library(dplyr)

library(tidyverse)

setwd("C:/Users/yuuna/MechaCar_Statistical_Analysis")

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

table <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model

summary(table) #generate summary statistics

suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

t.test(suspension_coil$PSI,mu = 1500) #t.test()

t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot1')$PSI,mu = 1500) #t.test() for each manufacturing lot
t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot2')$PSI,mu = 1500) #t.test() for each manufacturing lot
t.test(subset(suspension_coil, Manufacturing_Lot == 'Lot3')$PSI,mu = 1500) #t.test() for each manufacturing lot
