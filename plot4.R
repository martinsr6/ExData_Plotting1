##Peer graded assignment. Plot 4

data<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
lmao <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

DateTime <- strptime(paste(lmao$Date, lmao$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
GlobalActivePower <- as.numeric(lmao$Global_active_power)
GlobalReactivePower <- as.numeric(lmao$Global_reactive_power)

png("plot4.png",width=480,height = 480)
par(mfrow=c(2,2))
plot(DateTime,GlobalActivePower,type = "l",xlab="",ylab = "Global Active Power") 
plot(DateTime,lmao$Voltage,type = "l",xlab="datetime",ylab = "Voltage") 
plot(DateTime,lmao$Sub_metering_1,type="l",xlab = "",ylab="Energy sub meeting",col="black")
lines(DateTime,lmao$Sub_metering_2,col="red")
lines(DateTime,lmao$Sub_metering_3,col="blue")
legend("topright",lwd = 1,col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.6)##have to specify line width for it to appear
plot(DateTime,GlobalReactivePower,type = "l",xlab="datetime",ylab = "Global_reactive_power") 
dev.off()
