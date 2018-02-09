#tbolanos
# loads data


load <- function() {
  # Load files..,..
  
  
  # download and unzip files... 
  
  
  date_time <- function(date, time) {
    return (strptime(paste(date, time), "%d/%m/%Y %H:%M:%S"))
  }
  
  
  
  temp <- tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  data <- read.table(unz(temp, "household_power_consumption.txt"), sep = ';', header=TRUE , 
                     colClasses=c("character", "character", rep("numeric",7)), na="?")
  
  unlink(temp)
  
  
  # convert date and time variables to Date/Time class
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  
  
  # only use data from the dates 2007-02-01 and 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  data <- subset(data, Date %in% dates)
  
  return(data);
  
}