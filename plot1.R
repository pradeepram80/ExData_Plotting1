power = read.table("./household_power_consumption.txt",sep=";",header=TRUE)
power2 = subset(power, Date=="1/2/2007" | Date=="2/2/2007")
hist(as.numeric(power2$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png")
dev.off()	



