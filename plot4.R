plot4<- function (){
     
     ###########################
     ## plot2()
     ##
     ## Function written 5/10/2015 for Exploratory Data Analysis Course Project 1
     ## 
     ## Purpose: creates last of 4 required plots 
     ##
     ###########################
     #Setup
     source('./loadElectricityData.R')
     dateVector = c('2007-02-01','2007-02-02')
     
     ##Step 1 Load Data
     myData = loadElectricityData(dateVector)
     
     ##Step 2 Plot Data
     png(filename='plot4.png',width=480,height=480,units='px',pointsize=12)
     # set 2x2 multiframe plot
     par(mfrow=c(2,2))
     #first plot
     plot(myData[,dateTime],myData[,Global_active_power],type='l',ylab = 'Global Active Power',xlab='')
     #second plot
     plot(myData[,dateTime],myData[,Voltage],type='l',ylab = 'Voltage',xlab='')
     #third plot, multiseries     
     #initialize plot
     plot(myData[,dateTime],myData[,Sub_metering_1],type='n',ylab='Energy sub metering',xlab='')
     #add series
     lines(myData[,dateTime],myData[,Sub_metering_1])
     lines(myData[,dateTime],myData[,Sub_metering_2],col='red')
     lines(myData[,dateTime],myData[,Sub_metering_3],col='blue')
     #set legend
     legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),pch="_")
     #fourth plot
     plot(myData[,dateTime],myData[,Global_reactive_power],type='l',ylab = 'Global Reactive Power',xlab='')
     
     dev.off()
}