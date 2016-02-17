library(SDSFoundations)
bull <- BullRiders

# What is the shape of the Earnings distribution for 2012?
hist(bull$Earnings12)
fivenum(bull$Earnings12)

plot(bull$Earnings12, bull$RidePer12)
cor(bull$Earnings12, bull$RidePer12)

new_bull12 <- bull[bull$Events12  > 0 ,]
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))
plot(new_bull12$RidePer12, new_bull12$Earnings12)
plot(new_bull12$CupPoints12, new_bull12$Earnings12)

#Subset the data
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,] 
cor(nooutlier$Earnings12, nooutlier$RidePer12) # 0.8035574
cor(nooutlier$Earnings12, nooutlier$CupPoints12) # 0.8929208

minutes_studied <- c(30, 45,	180, 95, 130, 140, 30, 80, 60, 110, 0, 80)
grade <- c(74, 68, 87, 90, 94, 84, 92, 88, 82, 93, 65, 90)
cor(minutes_studied, grade) #  0.5967026
plot (minutes_studied, grade)

minutes_studied_outlier_removed <- c(30, 45,	180, 95, 130, 140, 80, 60, 110, 0, 80)
grade_outlier_removed <- c(74, 68, 87, 90, 94, 84, 88, 82, 93, 65, 90)
cor(minutes_studied_outlier_removed, grade_outlier_removed)
