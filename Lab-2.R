library(SDSFoundations)
animaldata <- AnimalData
animaldata_first10 <- animaldata[1:10,]
table(animaldata_first10$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

#Pull out only adult animals (age>=1)
adult <- animaldata[animaldata$Age.Intake >= 1 , ]

