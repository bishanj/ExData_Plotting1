LoadHPC <- function() {
    
    # Getting the data from the web
    if(!file.exists("./data")) {dir.create("./data")} #creating dir if it doesn't exist
    if(!file.exists("./data/household_power_consumption.txt")) {
        fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileURL, destfile = "./data/hpc.zip", method = "curl")
        unzip("./data/hpc.zip", exdir = "./data")
    }
    
    # Read table to R
    hpc <<- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE,
                       na.strings = "?")
    hpc$Date <<- as.Date(hpc$Date, format = "%d/%m/%Y")    

    # Subset to required data
    hpc2007 <<- subset(hpc, Date == "2007-02-01" | Date == "2007-02-02")
}