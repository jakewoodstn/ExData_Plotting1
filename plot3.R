plot3<- function (){
     
     ###########################
     ## plot3()
     ##
     ## Function written 5/10/2015 for Exploratory Data Analysis Course Project 1
     ## 
     ## Purpose: creates third of 4 required plots 
     ##
     ###########################
     #Setup
     source('./loadElectricityData.R')
     dateVector = c('2007-02-01','2007-02-02')
     
     ##Step 1 Load Data
     myData = loadElectricityData(dateVector)
     
     ##Step 2 Plot Data
     png(filename='plot3.png',width=480,height=480,units='px',pointsize=12)
     #initialize plot
     plot(myData[,dateTime],myData[,Sub_metering_1],type='n',ylab='Energy sub metering',xlab='')
     #add series
     lines(myData[,dateTime],myData[,Sub_metering_1])
     lines(myData[,dateTime],myData[,Sub_metering_2],col='red')
     lines(myData[,dateTime],myData[,Sub_metering_3],col='blue')
     #set legend
     legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),pch="_")
     dev.off()
}