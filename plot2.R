##Peer graded assignment. Plot 2

data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
lmao <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

DateTime <- strptime(paste(lmao$Date, lmao$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(lmao$Global_active_power)

png("plot2.png",width=480,height = 480)
plot(DateTime,GlobalActivePower,type = "l",xlab="",ylab = "Global Active Power (kilowatts)") 
dev.off()


