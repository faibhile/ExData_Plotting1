
a<-read.table("household_power_consumption.txt", nrows=700000, sep=";", na.strings=c("NA", "-", "?", ""))
b <- subset(a, V1=="1/2/2007" | V1=="2/2/2007")

time <- paste(b$V1, b$V2)
d <- strptime(time, "%d/%m/%Y %H:%M:%S")

plot(d, b$V7, ylab="Energy sub metering", xlab="", type="l", col = "black")
lines(d, b$V8,  col = "red")
lines(d, b$V9,  col = "blue")
legend("topright",  col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
