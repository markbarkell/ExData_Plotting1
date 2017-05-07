# Programmer: Mark Barkell
# Purpose: Plot 4 for Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.

# This is the one that is the four-square plot

source( "./obtaindata.R")

png(filename = "plot4.png")

par(mfrow = c(2,2))

plot(
  powerConsumption$DateTime, 
  powerConsumption$Global_active_power, type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)"
)

plot(
  powerConsumption$DateTime, 
  powerConsumption$Voltage, type = "l",
  xlab = "",
  ylab = "Voltage"
)

plot(powerConsumption$DateTime, powerConsumption$Sub_metering_1, type = "l", col = "black", lwd = 1,
     xlab = "", ylab = "Energy sub metering")
lines(powerConsumption$DateTime, powerConsumption$Sub_metering_2, type = "l", col = "red", lwd = 1)
lines(powerConsumption$DateTime, powerConsumption$Sub_metering_3, type = "l", col = "blue", lwd = 1)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=1)

plot(
  powerConsumption$DateTime, 
  powerConsumption$Global_reactive_power, type = "l",
  xlab = "",
  ylab = "Global_reactive_power"
)

dev.off()