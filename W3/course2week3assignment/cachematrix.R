## This function is an attempt at optimising mean calculation
## Often repeatadly calculating the mean of objects can be very time consuming
## the function looks at cacheing the mean, if the vector content has not changed

## create a special object that stores a numeric vector and caches its mean
makeCacheMatrix <- function(x = matrix()) {

}

#copy and paste from assi -------------------

#m <- NULL begins by setting the mean to NULL as a placeholder for a future value
#set <- function(y) {x <<- y; m <<- NULL} defines a function to set the vector, x, to a new vector, y, and resets the mean, m, to NULL
#set <- function() x returns the vector, x
#setmean <- function(mean) m <<- mean sets the mean, m, to mean
#getmean <- function() m returns the mean, m
#list(set = set, get = get,setmean = setmean,getmean = getmean) returns the 'special vector' containing all of the functions just defined




makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}



#-----------------------------------------------



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}



#copy and paste from assi -------------------

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}


#-----------------------------------------------


#Lexical scoping example page 81 pf RP book
# Never understoood this bloody thing

> make.power <- function(n) {
      pow <- function(x) {
      x^n
      }
    pow
    }


# Order and list of packages
# depending on new packages you load the order of packages will be reordered
#So if you load a library, then it will be moved to second position (after Global env)
search()

# key thing with Lexical scoping is that a value is assigned within a function
# In the below case y is 10, but within f it "becomes" 2
#this is because the functional environment overrides the global environemnt


y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}


#finding the environment of the function
environment(f)
parent.env(environment(f))










