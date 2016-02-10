library(SDSFoundations)
animaldata <- AnimalData
animaldata_first10 <- animaldata[1:10,]
table(animaldata_first10$Outcome.Type)

#Find the number of animals that were adopted
table(animaldata$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

#Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))
hist(daystoadopt)
median(daystoadopt)
IQR(daystoadopt)
fivenum(daystoadopt)

# z-score calculation
(211 - mean(daystoadopt)) / sd(daystoadopt)

# which animal is the 211 days to be adopted
row = which(animaldata$Days.Shelter==max(daystoadopt))
identified = animaldata[row, ]
