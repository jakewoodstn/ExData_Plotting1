loadElectricityData<-function(dateVector){
     ###########################
     ## loadElectricityData(dateVector)
     ##
     ## Function written 5/10/2015 for Exploratory Data Analysis Course Project 1
     ## 
     ## Purpose: Returns a data.table containing the subset of data from the 
     ## UCI Electric Consumption Data Set corresponding to the dates sent in dateVector
     ##
     ###########################
     ##Setup
     require(data.table)
     dateVector<-as.Date(dateVector)
     
     ##Step 1: load raw data
     ##TODO: research filtering data during load rather than after full data is loaded
     rawData=suppressWarnings(fread('data/household_power_consumption.txt',na.strings=('?')))
     
     ##Step 2: subset and type data
     data = rawData[as.Date(rawData[,Date],format='%d/%m/%Y') %in% dateVector]
     data[,Global_active_power:=as.numeric(Global_active_power)]
     data[,Global_reactive_power:=as.numeric(Global_reactive_power)]
     data[,Voltage:=as.numeric(Voltage)]
     data[,Global_intensity:=as.numeric(Global_intensity)]
     data[,Sub_metering_1:=as.numeric(Sub_metering_1)]
     data[,Sub_metering_2:=as.numeric(Sub_metering_2)]
     data[,Sub_metering_3:=as.numeric(Sub_metering_3)]
     
     ##Step 3: add typed datetime
     
     data[,dateTime:=as.POSIXct(paste(Date,Time),format='%d/%m/%Y %H:%M:%S')]
     
     ##return
     data
}