library(SDSFoundations)
bike <- BikeData
males <- bike[bike$gender == 'M',]
male_times <- males$time

# male ride time
mean(male_times)

# How many daily riders are in the dataset?
table(bike$cyc_freq) # 47

# How many of the daily riders are male?
table(males$cyc_freq) # 38

# What is the average age of daily riders? (Round to 1 decimal place.)
daily_riders <- bike[bike$cyc_freq=='Daily',]
mean(daily_riders$age) # 33.7

# TRY THIS:  Can you compare the average age of the male daily riders and the female daily riders? 
# (Hint: Can you subset the datafile again to separate the males and the females?)
daily_riders_males <- daily_riders[daily_riders$gender=='M',]
daily_riders_females <- daily_riders[daily_riders$gender=='F',]
mean(daily_riders_males$age) # 33.9
mean(daily_riders_females$age) # 32.6

# TRY THIS:  How would you create a datafile that only includes male daily riders that are age 30 or older?   
thirty_age_older_daily_riders_males <- daily_riders_males[daily_riders_males$age>=30,] # 25


