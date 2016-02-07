library(SDSFoundations)
bike <- BikeData

# Primary Research Question
# How many of the cyclists were students, how often did they ride, and what was the average distance they rode?
# Let's break this analysis into its required steps:
# 1. Find the number of students in the dataset.
# 2. Pull out the student data into a separate dataframe for analysis.
# 3. Make a table to find how often the students ride.
# 4. Find the average distance ridden.

# Find the number of students in the dataset
table(bike$student)

# Pull out student data into a new dataframe
student <- bike[bike$student=='1',]

# Find how often the students ride, using the new dataframe
table(student$cyc_freq)

# Create a vector for the distance variable
distance <- student$distance

# Find average distance ridden
mean(distance)


#Read in the dataset and name it bike
bike<-BikeData
#Create a vector of the times
rider_times<-bike$time
#Check the contents of our rider_times vector
rider_times

