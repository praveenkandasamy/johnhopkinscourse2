#Get and set WD
getwd()
setwd("./specdata2/")

#check if files/ dir exists
#create directory
file.exists("001.csv")

#If folder doesnt exist create it
if(!file.exists("data")){
  dir.create("data")
}

#Download online data
download.file(url = "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD",
              destfile = "./data/cameradata.csv")

#open local file
read.table()





#trying to create file/ dir with time/ date stamp
#darnit not having too much luck
m <- timestamp()
mdateonly <- date()
m <- timestamp()
dir.create(path = m)