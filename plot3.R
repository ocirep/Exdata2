library(ggplot2)
## Read the data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Subset Baltimore
NEI_Baltimore<-subset(NEI,fips=='24510')

## Group by year
data_by_year<-aggregate(Emissions~year,NEI_Baltimore,sum)

## Make the plot
plot(data_by_year$year,data_by_year$Emissions,xlab="Year",ylab="Total emissions (tons)",col='red',pch=16)
lines(data_by_year$year,data_by_year$Emissions,col='red')
title(main='Total emissions in Baltimore')

## Save plot to png file
dev.copy(png,'plot2.png')
dev.off()
