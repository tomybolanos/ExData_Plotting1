
# tbolanos
# Plot2.


source("Load.R");

if (is.null(data)) {
  data  <- load();
}

# create png.. as a device

par(mfrow=c(1,1))
png("plot2.png", width=480, height=480)

plot(data$Time, data$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()
