plot2<- function (){
     
     ###########################
     ## plot2()
     ##
     ## Function written 5/10/2015 for Exploratory Data Analysis Course Project 1
     ## 
     ## Purpose: creates second of 4 required plots 
     ##
     ###########################
     #Setup
     source('./loadElectricityData.R')
     dateVector = c('2007-02-01','2007-02-02')
     
     ##Step 1 Load Data
     myData = loadElectricityData(dateVector)
     
     ##Step 2 Plot Data
     png(filename='plot2.png',width=480,height=480,units='px',pointsize=12)
     plot(myData[,dateTime],myData[,Global_active_power],type='l',ylab = 'Global Active Power (kilowatts)',xlab='')
     dev.off()
}