# Programmer: Mark Barkell
# Purpose: Plot 1 for Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.

# This one is the histogram
source("./obtaindata.R")

png(filename = "plot1.png")

hist(
  powerConsumption$Global_active_power[
    !is.na(as.numeric(powerConsumption$Global_active_power))
           ],
  main = "Global Active Power", 
  xlab = "Global Active Power (kilowatts)",
  ylab = "Frequency",
  col = "red"
  )

dev.off()