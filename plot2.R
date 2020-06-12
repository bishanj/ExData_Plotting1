# Plot 2

## Loads and reads in data
source("LoadHPC.R") 
LoadHPC()

## Creates Plot 2
par(mfcol = c(1,1))
hpc2007$datetime <- as.POSIXct(paste(hpc2007$Date, hpc2007$Time))
plot(hpc2007$datetime, hpc2007$Global_active_power, type ="l", main = "", 
     ylab = "Global Active Power (kilowatts)", xlab = "")

## copy to PNG
dev.copy(png, file = "plot2.png")
dev.off()
