# Plot 4

## Loads and reads in data
source("LoadHPC.R") 
LoadHPC()

## Creates Plot 4
hpc2007$datetime <- as.POSIXct(paste(hpc2007$Date, hpc2007$Time))
par(mfrow = c(2,2))
plot(hpc2007$datetime, hpc2007$Global_active_power, type ="l", main = "", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
plot(hpc2007$datetime, hpc2007$Voltage, type ="l", main = "", 
     ylab = "Voltage", xlab = "datetime")
plot(hpc2007$datetime, hpc2007$Sub_metering_1, type ="l", main = "", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
lines(hpc2007$datetime, hpc2007$Sub_metering_2, type ="l",  col = "red")
lines(hpc2007$datetime, hpc2007$Sub_metering_3, type ="l",  col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.5)
plot(hpc2007$datetime, hpc2007$Global_reactive_power, type ="l", main = "", 
     ylab = "Global_reactive_power", xlab = "datetime")

## copy to PNG
dev.copy(png, file = "plot4.png")
dev.off()
