pollutantmean <- function(directory, pollutant, id = 1:332){ # functions
  filelist <- list.files(path = directory, pattern = "*.csv", full.name = TRUE) # go through folder and get list of files
  values <- numeric() # numeric vector
  
  for (i in id){
    data <- read.csv(filelist[[i]]) # save all the data in a data frame
    values <- c(values, data[[pollutant]])
  }
  mean(values, na.rm = TRUE) #what i want you to do
}

