
# tbolanos
# Plot1.


source("Load.R");

if (is.null(data)) {
  data  <- load();
}

# create png.. as a device

par(mfrow=c(1,1))
png("plot1.png", width=400, height=400)

hist(data$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")

dev.off()
