power = read.table("./household_power_consumption.txt",sep=";",header=TRUE)
power2 = subset(power, Date=="1/2/2007" | Date=="2/2/2007")
plot(strptime(paste(power2$Date,power2$Time),"%d/%m/%Y %X"),power2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kiloWatts)")
dev.copy(png,"plot2.png")
dev.off()
