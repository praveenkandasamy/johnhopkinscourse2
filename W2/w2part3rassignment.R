corr <- function(directory, threshold = 0){          #function
  filelist <- list.files(path = directory, pattern = "*.csv", full.names = TRUE) # create a list of files vector
  id <- 1:332
  
  for (i in id){
    data <- read.csv(filelist[i]) #loop through all the files and read them
    threshold <- sum(complete.cases(data)) #call completed cases boolean fun and then count the no
  }
  cor(data[c("nitrate", "sulfate")], use = "complete.obs")
}


# couldnt get this to work, possible issue around the last subsetting line of code
