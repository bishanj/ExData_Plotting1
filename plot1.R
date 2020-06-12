# Plot 1

## Loads and reads in data
source("LoadHPC.R") 
LoadHPC()

## Creates Plot 1
hist(hpc2007$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

## copy to PNG
dev.copy(png, file = "plot1.png")
dev.off()
