## Function that creates list of functions that are able to 
makeCacheMatrix <- function(x = matrix()) {
#set the value of the inverted matrix
  i <- NULL
  #get the value of the matrix from the input
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x
  #set the inverse matrix by solving it
  setinverse <- function(solve) i <<- solve
  #get the inverse matrix
  getinverse <- function() i
  