

# tbolanos
# Plot3.


source("Load.R");

if (is.null(data)) {
  data  <- load();
}

# create png.. as a device


png("plot3.png", width=400, height=400)
par(mfrow=c(1,1))

plot(data$Time, data$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(data$Time, data$Sub_metering_2, col="red")
lines(data$Time, data$Sub_metering_3, col="blue")
legend("topright",
       col=c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=1)


dev.off()

