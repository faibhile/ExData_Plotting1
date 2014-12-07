
a<-read.table("household_power_consumption.txt", nrows=700000, sep=";", na.strings=c("NA", "-", "?", ""))
b <- subset(a, V1=="1/2/2007" | V1=="2/2/2007")

c<-(b$V3)

hist(as.numeric(c),  xlab="Global Active Power (kilowatts)", col="Red", main = paste("Global Active Power"))

