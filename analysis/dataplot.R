#Team Soylent

setwd("C:/Christie/INFO370/analysis")

#packages for data viz
install.packages("ggplot2")
install.packages('ggmap')
install.packages('dplyr')
library(ggplot2)
library(ggmap)
library(dplyr)

subway.data <- read.csv("cleanedSubwayData.csv")

#create the subway station map
new.york.subway <- get_map("New York, USA", zoom=10)

subway.plot <- ggmap(new.york.subway) + 
  geom_point(data=subway.data, aes(x=Station.Longitude, y=Station.Latitude), color="black", size=1) + 
  ggtitle("Subways in New York")

# read a year's worth of citibike data
citibike.1 <- read.csv("20161.csv")
citibike.2 <- read.csv("20162.csv")
citibike.3 <- read.csv("20163.csv")
citibike.4 <- read.csv("20164.csv")
citibike.5 <- read.csv("20165.csv")
citibike.6 <- read.csv("20166.csv")
citibike.7 <- read.csv("20167.csv")
citibike.8 <- read.csv("20168.csv")
citibike.9 <- read.csv("20169.csv")
citibike.10 <- read.csv("201610.csv")
citibike.11 <- read.csv("201611.csv")
citibike.12 <- read.csv("201612.csv")

#make into one big dataset
citibike.stations <- rbind(citibike.1, citibike.2, citibike.3, citibike.4, citibike.5, citibike.6, citibike.7, citibike.8, citibike.9, citibike.10, citibike.11, citibike.12)

#create start and end stations for citibike data
new.york <- get_map("New York, USA", zoom=12)

citibike.start.stations <- ggmap(new.york) + 
  geom_point(data=citibike.stations, aes(x=Start.Station.Longitude, y=Start.Station.Latitude), color="blue", size=1) + 
  ggtitle("Start Bike Stations")

citibike.end.stations <- ggmap(new.york) + 
  geom_point(data=citibike.stations, aes(x=End.Station.Longitude, y=End.Station.Latitude), color="red", size=1) + 
  ggtitle("End Bike Stations")




# triming and manipulating data for the final all stations plot
subway.trim <- mutate(unique(select(subway.data, Station.Latitude, Station.Longitude)), type="subway")
citibikes.start.trim <- mutate(unique(select(citibike.stations, Start.Station.Latitude, Start.Station.Longitude)), type="start")
citibikes.end.trim <- mutate(unique(select(citibike.stations, End.Station.Latitude, End.Station.Longitude)), type="end")

colnames(subway.trim) <- c("Latitude", "Longitude")
colnames(citibikes.start.trim) <- c("Latitude", "Longitude")
colnames(citibikes.end.trim) <- c("Latitude", "Longitude")

total.stations <- merge(subway.trim, citibikes.trim)

#create all stations map
citibike <- ggmap(new.york) + 
  geom_point(data=total.stations, aes(x=Longitude, y=Latitude), color="red", size=1) + 
  ggtitle("All Stations")




# create voronoi plot

install.packages("deldir", dependencies=TRUE)

library(deldir)

# Generate points
x <- subway.data$Station.Longitude
y <- subway.data$Station.Latitude

# Calculate tesslation
vtess <- deldir(x, y)

# Voronoi
plot(x, y, type="n", asp=1, 
       main = "Voronoi Diagram of Subway Stations",
       xlab = "Longitude",
       ylab = "Latitude")
points(x, y, pch=20, col="red", cex=0.5)
plot(vtess, wlines="tess", wpoints="none", number=FALSE, add=TRUE, lty=1) 
