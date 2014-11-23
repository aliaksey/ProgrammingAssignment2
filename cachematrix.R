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
  #store evruthing as a list
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Return a matrix that is the inverse of 'x', but first check if it is already calculated

cacheSolve <- function(x=matrix(), ...) {
  # check previous calculations    
  i <- x$getinverse()
  #if matrix already solved get solution as a response
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  
  #if matrix was not solved get the  solution 
  matx <- x$get()
  i <- solve(matx, ...)
  x$setinverse(i)
  i
}
