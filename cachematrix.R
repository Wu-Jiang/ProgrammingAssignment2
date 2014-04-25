## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##I've learned a lot from 
##https://class.coursera.org/rprog-002/forum/thread?thread_id=696, 
##which introduces 'first-class function'

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    #pass the matrix
    x <<- y
    s <<- NULL
  }
    get <- function() x
    setinverse <- function(solve) s <<- solve
    getinverse <- function() s
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
  s <- x$getinverse()
  ##check if the inverse has been stored
  if(!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setinverse(s)
  s
}



