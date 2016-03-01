library(SDSFoundations)
acl <- AustinCityLimits

# How many of the first 10 artists in the dataset were Grammy winners?
first_10 <- acl[1:10,]
first_10_g <-first_10[first_10$Grammy=='Y',] #4

# What genre was played by the first female artist in the dataset who was over 60 years of age?
female<- acl[acl$Gender=='F',]
female_over_60 <- female[female$Age>60, ]
female_over_60[1,]$Genre # Jazz/Blues

# Research Question
# For artists age 30 or older, do female artists play different kinds of music on Austin City Limits than male artists?

# 1. Create a subset of the data for artists age 30 or older.
older <-acl[acl$Age>=30,]

# 2. Create a table to show the marginal distribution for each variable.  
genre <- table(older$Genre)
genre
gender <- table(older$Gender)
gender

# 3. Create a contingency table to show the conditional distribution for gender and genre.  
twoway <- table(older$Gender,older$Genre)
twoway

# 4. Make a bar chart to better visualize how many male and female artists played in each genre.
barplot(twoway, legend=T, beside=T)

# 5. Calculate P(A):  the probability of each type of music (genre) being played.
prop.table(genre)

# 6. Calculate P(A|B):  the probability of each genre, given the artist's gender.
# 7. Interpret what these probabilities tell us about the relationship between genre and gender. 
prop.table(twoway,1)

barplot(twoway, legend=TRUE, beside=TRUE)
barplot(twoway, beside=TRUE)
barplot(twoway)
barplot(twoway, legend=TRUE)

sum(prop.table(genre))

prop.table(twoway)
prop.table(twoway,1)
prop.table(twoway,2)

acl <- AustinCityLimits
View(acl)
gender_grammy <- table(acl$Gender, acl$Grammy)
prop.table(acl$Gender, acl$Grammy, 1)

library(SDSFoundations)
acl <- AustinCityLimits

# How many male artists are in the 30+ year old artist subset of the Austin City Limits dataset?
male <- acl[acl$Gender=='M',]
male_over_30 <- male[male$Age >30 ,] # 77

# How many female artists are in the 30+ year old artist subset of the Austin City Limits dataset?
female <- acl[acl$Gender=='F',]
female_over_30 <- female[female$Age >= 30,] # 23

# Proportion of jazz performers that were males
twoway <- table(acl$Gender,acl$Genre)
twoway



genre <- table(acl$Genre)
genre
gender <- table(acl$Gender)
gender


