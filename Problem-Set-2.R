library(SDSFoundations)
animaldata <- AnimalData

# What was the most common way that dogs arrived in the shelter? (as defined by the ???Intake.Type??? variable)
dogs <- animaldata[animaldata$Animal.Type=='Dog', ] 
table(dogs$Intake.Type) # Stray = 189

# What proportion of dogs were brought to the shelter as an owner surrender? (Round to 3 decimal places.)
81 / 291 # 0.278

# Of the dogs that were brought to the shelter as an owner surrender, how many were returned to their owner? (1c)
owner_surrender_dogs = dogs[dogs$Intake.Type=='Owner Surrender',]
table(owner_surrender_dogs$Outcome.Type) # 2

# What was the mean number of days that the dogs referenced in Question 1c spent at the shelter before being returned to their owner? (Round to 1 decimal place.)
owner_surrender_but_return_dogs = owner_surrender_dogs[owner_surrender_dogs$Outcome.Type=='Return to Owner',]
mean(owner_surrender_but_return_dogs$Days.Shelter)

plot(dogs$Intake.Type)
