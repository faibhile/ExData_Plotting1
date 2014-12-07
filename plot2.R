
a<-read.table("household_power_consumption.txt", nrows=700000, sep=";", na.strings=c("NA", "-", "?", ""))
b <- subset(a, V1=="1/2/2007" | V1=="2/2/2007")

time <- paste(b$V1, b$V2)
d <- strptime(time, "%d/%m/%Y %H:%M:%S")

plot( d, b$V3, ylab="Global Aactive Power (kilowatts)", xlab="", type="l")
