# Bull Riders

# To confirm the linear relationship
plot(bull$YearsPro,
     bull$BuckOuts,
     xlab='Years Pro',
     ylab='Buckouts',
     main='Plot of Years vs Buckouts')

abline(lm(bull$BuckOuts~bull$YearsPro))

# Another relationship
plot(bull$Events,
     bull$BuckOuts,
     xlabel='No of Events',
     ylabel='Buckouts',
     main='Plot of Events vs Buckouts')

abline(lm(bull$BuckOuts~bull$Events))
