# Plot 3

## Loads and reads in data
source("LoadHPC.R") 
LoadHPC()

## Creates Plot 3
par(mfcol = c(1,1))
hpc2007$datetime <- as.POSIXct(paste(hpc2007$Date, hpc2007$Time))
plot(hpc2007$datetime, hpc2007$Sub_metering_1, type ="l", main = "", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
lines(hpc2007$datetime, hpc2007$Sub_metering_2, type ="l",  col = "red")
lines(hpc2007$datetime, hpc2007$Sub_metering_3, type ="l",  col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## copy to PNG
dev.copy(png, file = "plot3.png")
dev.off()
