# Programmer: Mark Barkell
# Purpose: Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.
# This particular file will provide functionality to download
# and extra the data file.



# Download the data from the web, extract the zip file.
# If those actions are already in effect, then, don't do much.
bringDataToCurrentDirectory <- function() {
  householdPowerComFileName <- "power_consumption.zip"
  datafileName <- "household_power_consumption.txt"
  if (!file.exists(householdPowerComFileName)
      && !file.exists(datafileName)) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = householdPowerComFileName)  
  }
  
  if (!file.exists(datafileName)) {
    unzip(householdPowerComFileName)
  }
}

# Get the data from the web and extract it.
bringDataToCurrentDirectory()

# Data start date for the assignment
startDate <- as.Date("2007-02-01")
# Data end date for the assignment
endDate <- as.Date("2007-02-02")  

# Reads in the whole of the Power Consumption data.
# Subsets the returned data by the programming assignment's
# start date and end date.
getPowerConsumption <- function () {
  powerConsumption <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
  
  orgDateString <- powerConsumption$Date
  datetimeInfo <- strptime(paste(orgDateString, powerConsumption$Time), format = "%d/%m/%Y %H:%M:%S")
  
  
  powerConsumption$Global_active_power <- as.numeric(powerConsumption$Global_active_power)
  powerConsumption$Global_intensity <- as.numeric(powerConsumption$Global_intensity)
  powerConsumption$Voltage <- as.numeric(powerConsumption$Voltage)
  powerConsumption$Global_reactive_power <- as.numeric(powerConsumption$Global_reactive_power)
  powerConsumption$Date <- as.Date(strptime(powerConsumption$Date, "%d/%m/%Y", tz = "UTC"))
  powerConsumption$DateTime <- datetimeInfo
  powerConsumption <- powerConsumption[powerConsumption$Date >= startDate & powerConsumption$Date <= endDate,]
  powerConsumption
}


# Reading the large data file takes some time.  So, only reading
# it when it is not ready read in.
if (!exists("powerConsumption")) {
  powerConsumption <- getPowerConsumption()  
}
