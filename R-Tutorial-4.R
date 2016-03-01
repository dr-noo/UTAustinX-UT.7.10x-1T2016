# import "AustinCityLimit.csv"

gtab <- table(acl$Grammy)

prop.test(gtab)

gtab2 <- table(acl$Grammy, acl$Gender)

prop.table(gtab2)
prop.table(gtab2, 1)
prop.table(gtab2, 2)


barplot(gtab, main="ACL Grammy Winners", xlab="Grammy Winner", ylab="Counts")

barplot(gtab2)

gtab2

barplot(gtab2, legend=T, main="Gender by Granny Winner", ylab="Counts", xlab="Gender")
barplot(gtab2, legend=T, main="Gender by Granny Winner", ylab="Counts", xlab="Gender", beside=T)

barplot(prop.table(gtab2,2))
