library(SDSFoundations)
acl <- AustinCityLimits

# Research Question
# Among male artists, is there an association between winning a Grammy and the genre of music that he plays?

# 1. Subset the data (males only).
male <- acl[acl$Gender=='M',]

# 2. Create a table to show the marginal distributions for Genre and Grammy.
genre <- table(male$Genre)
genre

Grammy <- table(male$Grammy)
Grammy

# 3. Create a contingency table to show the conditional distribution for Genre and Grammy.
twoway <- table(male$Genre, male$Grammy)
twoway

# 4. Make a bar chart to better visualize how many artists in each Genre received a Grammy.
# 5. Calculate P(A):  the probability of winning a Grammy.
# 6. Calculate P(A|B): the probability of winning Grammy, given the artist's Genre.
# 7. Interpret what these probabilities tell us about the relationship between Genre and winning a Grammy.

# How many male artists won a Grammy? Ans. 35
# How many male artists did not win a Grammy? Ans. 46
# Which genre had the greatest number of Grammy wins? Ans. Rock
# What is the probability that a randomly selected artist was a Grammy winner? 
Grammy <- table(male$Grammy)
prop.table(Grammy)  
# To determine the probability of winning a Grammy if the artist was a singer-songwriter, 
# you would divide _______ by ________. 
# Ans. 2 / 7

# To determine the probability that a randomly-selected Grammy winner was a singer-songwriter, 
# you would divide ________ by ________.
# Ans. 2 / 35

# What is the probability that a randomly selected male artist from each of the following genres won a Grammy?
# Country?
# Ans. 4 / 7 = 0.5714286


