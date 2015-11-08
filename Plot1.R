#Plot 1 for Assignment 1 in Exploratory Data Analysis


setwd("C:/Users/Ed/Documents/R Exploratory Data Analysis Course")

#Imports the data set
Data <- read.table("household_power_consumption.txt"
                   ,sep=";"
                   ,header=T
                   ,colClasses = c('character', 'character', 'numeric',
                                   'numeric', 'numeric', 'numeric',
                                   'numeric', 'numeric', 'numeric')
                   ,na.string = '?'
                   ,fill=FALSE
                   ,strip.white=TRUE)

Data$DateTime <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
Data <- subset(Data, as.Date(DateTime) >= as.Date("2007-02-01") & 
                 as.Date(DateTime) <= as.Date("2007-02-02"))


# Read the data and take subset of two days in 02/07 as mentioned in 
# assignment
data <- read.table('household_power_consumption.txt', sep=';', header=T, 
                   colClasses = c('character', 'character', 'numeric',
                                  'numeric', 'numeric', 'numeric',
                                  'numeric', 'numeric', 'numeric'),
                   na.strings='?')
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data <- subset(data, as.Date(DateTime) >= as.Date("2007-02-01") & 
                 as.Date(DateTime) <= as.Date("2007-02-02"))

png("plot1.png", height=480, width=480)

hist(data$Global_active_power, col='red', main = 'Global Active Power',
     xlab = 'Global Active Power (kilowatts)')

dev.off()