dataFile <- "./data/household_power_consumption.txt" 
dataSet <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
myValues <- c("1/2/2007","2/2/2007")
dataSubset <- dataSet[dataSet$Date %in% myValues,]

dateTime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(dataSubset$Global_active_power)
png("Plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off()
