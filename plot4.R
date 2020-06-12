# Plot 4

## Loads and reads in data
source("LoadHPC.R") 
LoadHPC()

## Creates Plot 4
hpc2007$datetime <- as.POSIXct(paste(hpc2007$Date, hpc2007$Time))
par(mfcol = c(1,2))
plot(hpc2007$datetime, hpc2007$Global_active_power, type ="l", main = "", 
     ylab = "Global Active Power (kilowatts)", xlab = "")
plot(hpc2007$datetime, hpc2007$Voltage, type ="l", main = "", 
     ylab = "Voltage", xlab = "datetime")

## copy to PNG
dev.copy(png, file = "plot4.png")
dev.off()
