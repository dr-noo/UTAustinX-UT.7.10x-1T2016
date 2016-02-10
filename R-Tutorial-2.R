head(animaldata)
table(animaldata$Sex)

#bar chart for categorical variable
plot(animaldata$Sex, main='Bar Chart of Animal Gender', xlab='Animal Gender', ylab='Frequency')

#histogram plot
hist(animaldata$Age.Intake, main='Histogram of Intake Ages', xlab='Age at Intake')

