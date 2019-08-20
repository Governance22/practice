library(raster)
library(maps)
library(mapdata)
library(sp)
library(rgdal)
library(sf)
library(geometry)
canada<-getData("GADM",country="CAN",level=1)


taiwan <-getData("GADM",country="TAIWAN",level=1)

tw_map <- ggplot() +  geom_polygon(data = taiwan, aes(x = long, y = lat, group = group)) + geom_path()

##delete problem data => 180 -> 179
#site_name    |	site_no |	"longitude" |	"latitude" |	sampling_number
#1080418DDR05 |	4	      |  120.520194 | 120.520194 |      2


mydata1 <- read.csv("C:/Users/User/Desktop/new file/ma_data.csv", header = TRUE, sep = ",")

str(mydata1)


mydata1[, c(2,5)] <- sapply(mydata1[, c(2,5)], as.numeric)




my_points <- ggplot() +  geom_point(data=mydata1, aes(x=X.longitude, y=X.latitude, size = sampling_number), color="red")


proj.84 <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs")

points.84 <- spTransform(mydata1, CRS = proj.84)




DATA.MAPING <- ggplot() +  geom_polygon(data = taiwan, aes(x = long, y = lat, group = group)) + geom_path() + geom_point(data=mydata1, aes(x=X.longitude, y=X.latitude, size = sampling_number), color="red")


mydata2 <- read.csv("C:/Users/User/Desktop/new file/ma_data_2.csv", header = TRUE, sep = ",")

str(mydata2)
mydata2[, 4] <- sapply(mydata2[, 4], as.numeric)


my_points_2 <- ggplot() +  geom_point(data=mydata2, aes(x=X.longitude, y=X.latitude, size = sampling_number), color="red")












