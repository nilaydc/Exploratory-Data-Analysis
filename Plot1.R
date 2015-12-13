dataFile <- "./data/household_power_consumption.txt" 
dataSet <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
myValues <- c("1/2/2007","2/2/2007")
dataSubset <- dataSet[dataSet$Date %in% myValues,]
globalActivePower <- as.numeric(dataSubset$Global_active_power)
png("Plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
dev.off()
