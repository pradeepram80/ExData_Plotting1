power = read.table("./household_power_consumption.txt",sep=";",header=TRUE)
power2 = subset(power, Date=="1/2/2007" | Date=="2/2/2007")

plot(strptime(paste(power2$Date,power2$Time),"%d/%m/%Y %X"),power2$Sub_metering_1, type="l", xlab="", ylab="Energy Sub metering")
lines(strptime(paste(power2$Date,power2$Time),"%d/%m/%Y %X"),power2$Sub_metering_2, col="red")
lines(strptime(paste(power2$Date,power2$Time),"%d/%m/%Y %X"),power2$Sub_metering_3, col="blue")
legend("topright", pch=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,file="plot3.png")
dev.off()
