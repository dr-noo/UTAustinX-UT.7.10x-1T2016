library(SDSFoundations)
animaldata <- AnimalData
animaldata_first10 <- animaldata[1:10,]
table(animaldata_first10$Outcome.Type)

#Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]



#How many adult dogs are in the shelter?
adult_dogs <- animaldata[animaldata$Age.Intake >= 1 & animaldata$Animal.Type=='Dog', ] # 226

#How many adult cats are in the shelter?
adult_cats <- animaldata[animaldata$Age.Intake >= 1 & animaldata$Animal.Type=='Cat',] # 56

# What is the shape of the distribution of weight for adult dogs?
hist(adult_dogs$Weight) # positively skewed

# What is the shape of the distribution of weight for adult cats?
hist(adult_cats$Weight) # approximately normal

# Which measure of center should be used to describe the average weight of the adult cats?
# Ans. mean

# Average adult cat weight in pounds (rounded to one decimal place)=
mean(adult_cats$Weight) # 8.6

# What is the standard deviation for the weight of the adult cats? Round to two decimal places.
sd(adult_cats$Weight) #1.911

# What is the z-score of a 13 pound adult cat? Round to one decimal point.
z_13_lb_cat = (13 - 8.6) / 1.911
z_13_lb_cat # 2.3

# Which of these best describes the location of a 13 pound adult cat in the shelter distribution?
# Ans. More than 2 standard deviations above the mean. More than 2 standard deviations above the mean. - correct

# What proportion of adult cats weigh more than 13 pounds, according to your data? Use the following code to answer this question: 1-pnorm(zcat).
# Replace "zcat" with your z-score for the cat. Round to three decimal places.
zcat = 2.3
1-pnorm(zcat) # 0.011

# Looking now at the descriptive statistics for the weight of adult dogs in the shelter:
# What quartile would contain a 13-pound adult dog?
fivenum(adult_dogs$Weight)

# What percentage of adult dogs in the shelter weigh more than 13 pounds?
# 75%

hist(adult_dogs$Weight)
hist(adult_cats$Weight)

median(adult_cats$Weight) # 8.5
median(adult_dogs$Weight) # 35.3

sd(adult_dogs$Weight)     # 23.46612
mean(adult_dogs$Weight)   # 35.67035
fivenum(adult_dogs$Weight) # 3.30  13.50  35.25  54.00 131.00

sd(adult_cats$Weight)     # 1.911517
mean(adult_cats$Weight)   # 8.603571
fivenum(adult_cats$Weight) # 4.75  7.40  8.50  9.75 13.50
