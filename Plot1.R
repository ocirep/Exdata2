## Read the data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year
data_by_year<-aggregate(Emissions~year,NEI,sum)

## Make the plot
plot(data_by_year$year,data_by_year$Emissions,xlab="Year",ylab="Total emissions (tons)",col='red',pch=16)
lines(data_by_year$year,data_by_year$Emissions,col='red')

## Save plot to png file
dev.copy(png,'plot1.png')
dev.off()
