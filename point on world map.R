library(ggmap)
map <- get_map("Atlanta", zoom = 10)
library(rgdal)
mySHP <- choose.files()
myFile <- readOGR(mySHP)
class(myFile)
mode(myFile)
length(myFile)
library(ggplot2)
myDF <- fortify(myFile)
class(myDF)
head(myDF)
dim(myDF)
names(myDF)
world_map <-  ggplot() +  geom_polygon(data = myDF, aes(x = long, y = lat, group = group)) + geom_path()
##coord_map => set the Map projection, ex : mercator.....etc





mydata1 <- read.csv("C:/Users/User/Desktop/new file/heatmap/ebird extract data/Accra_t3_extent_201905ebird.csv",stringsAsFactors=FALSE)

mydata2 <- read.csv("C:/Users/User/Desktop/new file/heatmap/ebird extract data/Addis Ababa_t3_extent_201905ebird.csv", stringsAsFactors=FALSE)

mydata3 <- read.csv("C:/Users/User/Desktop/new file/heatmap/ebird extract data/Ahmedabad_t3_extent_201905ebird.csv", stringsAsFactors=FALSE)



my_points <- ggplot() +  geom_point(data=mydata1, aes(x=LONGITUDE, y=LATITUDE), color="red")


##world_map + my_points
ggplot() +  geom_polygon(data = myDF, aes(x = long, y = lat, group = group)) + geom_path() +  geom_point(data=mydata1, aes(x=LONGITUDE, y=LATITUDE), color="red") + geom_point(data=mydata2, aes(x=LONGITUDE, y=LATITUDE), color="red") + geom_point(data=mydata3, aes(x=LONGITUDE, y=LATITUDE), color="red")



mydata_fnal <- rbind(mydata1,mydata2)

mydata_fnal2 <- rbind(mydata_fnal,mydata3)
