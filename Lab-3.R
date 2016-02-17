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
