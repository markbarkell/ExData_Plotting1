# Programmer: Mark Barkell
# Purpose: Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.
# This particular file will provide functionality to download
# and extra the data file.



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
