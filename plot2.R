# Programmer: Mark Barkell
# Purpose: Plot 2 for Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.

# This file is the one for the Global Active Power on the Y
# and the day of the week on the X.

source("./obtaindata.R")

png(filename = "plot2.png")

plot(
  powerConsumption$DateTime, 
  powerConsumption$Global_active_power, type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
  )

dev.off()
