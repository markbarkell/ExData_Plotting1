# Programmer: Mark Barkell
# Purpose: Plot 3 for Peer-graded Assignment for Course: "Exploratory Data Analysis"
# Week 1.

# This is the one that does the three colored lines for the three 
# types of sub metering.   the metering is on the Y.  The 
# date time combination is on the X.

source( "./obtaindata.R")

png(filename = "plot3.png")

par(mfrow = c(1,1))

plot(powerConsumption$DateTime, powerConsumption$Sub_metering_1, type = "l", col = "black", lwd = 1,
     xlab = "", ylab = "Energy sub metering")
lines(powerConsumption$DateTime, powerConsumption$Sub_metering_2, type = "l", col = "red", lwd = 1)
lines(powerConsumption$DateTime, powerConsumption$Sub_metering_3, type = "l", col = "blue", lwd = 1)
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, lwd=1)

dev.off()

# Note, a good reference for finding out how to use the plot/lines
# functionality for this type of purpose is to look at
# page 34 in the chapter "Basic Graph Functions" of the book R Graphs Cookbook
# by Hrishi V. Mittal.   Such is where I learned how to use the lines()
# function after the plot() function.   
# In order to do the assignment, though, I had to deviate from the
# book's example in a great number of ways:
# 1.  The book's example is for completely different types of data.
# 2.  The book did not use a seperate x and y parameter as I did here.
# 3.  Of course, I did the assignment instead of what the book was trying
# to show.

# The following is the publisher of that particular book: Packt


  