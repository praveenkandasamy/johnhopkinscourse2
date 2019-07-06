complete  <- function(directory, id = 1:332){          #function
  filelist <- list.files(path = directory, pattern = "*.csv", full.names = TRUE) # create a list of files
  nobs <- numeric() # empty numeric vector 
  
  for (i in id){
    data <- read.csv(filelist[i]) #loop through all the files and read them
    nobs <- c(nobs, sum(complete.cases(data)))  #call completed cased boolean fun and then count the no
  }
  data.frame(id, nobs) #output format
}


