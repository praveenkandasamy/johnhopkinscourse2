# Loop oover a list and evaluate a function at each element
# always returns a list regardless of class of the input object
lapply
#example
x <- list(a = 1:4, b = rnorm(10))
lapply(x, mean)

# like lapply but simpler
# if each element is of length one it will return a vector rather than an list
sapply
x <- list(a = 1:4, b = rnorm(10))
sapply(x, mean)

# apply the functions over the margins of an array
apply
x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) ## Take the mean of each column
apply(x, 1, sum) ## Take the mean of each row

#multivariate version of lapply
mapply
#For example, the following is tedious to type
#list(rep(1, 4), rep(2, 3), rep(3, 2), rep(4, 1))
#With mapply(), instead we can do
mapply(rep, 1:4, 4:1)

#tapply functions over the subset of a vector
tapply




# The split() function takes a vector or other objects and splits it into groups determined by a factor
# or list of factors
# called map reduce in other instances, basically breaks a vector does somethine to each piece
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)

  #call airquality data example
  library(datasets)
  head(airquality)
  s <- split(airquality, airquality$Month)
  
  lapply(s, function(x) {
    colMeans(x[, c("Ozone", "Solar.R", "Wind")])
    })
  #for more readable output, with na removed as well
  sapply(s, function(x){
      colMeans(x[,c("Ozone", "Solar.R", "Wind")],
               na.rm = TRUE)
  })
  # splitting to more than once level
  # stil lconfused on this one, have trouble on the str/ split function
  x <- rnorm(10)
  f1 <- gl(2, 5)
  f2 <- gl(5, 2)
  interaction(f1, f2)
  str(split(x, list(f1, f2)))
  
  str(split(x, list(f1, f2), drop = TRUE))

  
#D#debugging
  
  #message: A generic notification/diagnostic, function continues. Like built under R version etc
  #warning: An indication that something is wrong but not necessarily fatal; execution of the unction continues. 
  #error: An indication that a fatal problem has occurred and execution of the function stops.
  #errors are produced by the stop() function.
  #condition: A generic concept for indicating that something unexpected has occurred; programmers
  #can create their own custom conditions if they want.
  
  #invisible function stops auto printing
  printmessage <- function(x) {
        if(x > 0)
            print("x is greater than zero")
        else
            print("x is less than or equal to zero")
        invisible(x)
  }
  
  #Questions to ask when debugging
  
    #. What was your input? How did you call the function?
    #. What were you expecting? Output, messages, other results?
    #. What did you get?
    #. How does what you get differ from what you were expecting?
    #. Were your expectations correct in the first place?
    #. Can you reproduce the problem (exactly)? exception when you are accessing input data from a different server
  
  
#Functions used to Debug r errors
  
  #. traceback(): prints out the function call stack after an error occurs; does nothing if there's
  #no error
  #. debug(): flags a function for "debug" mode which allows you to step through execution of a
  # function one line at a time
  #. browser(): suspends the execution of a function wherever it is called and puts the function in
  #debug mode
  #. trace(): allows you to insert debugging code into a function a specific places
  #. recover(): allows you to modify the error behavior so that you can browse the function call
  #stack
  
  
#Example of functions used to debug
  mean(x)
  traceback()  
