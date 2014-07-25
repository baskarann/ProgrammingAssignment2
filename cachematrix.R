## Name of the Script: chachematrix
## cachematrix contain two functions and these two functions together 
## produce a inverse matrix for a given invertible matrix


## Name of the Function - makeCaheMatrix
## set function initializes the object "x" with the matrix provided 
## and resets the object "m" to Null

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinvmx <- function(invmx) m <<- invmx
  getinvmx <- function() m
  list(set = set, get = get, setinvmx = setinvmx, getinvmx = getinvmx)

}


## Name of the function - cacheSolve
## For a given invertible matrix the function returns the inverse matrix
## If a matrix is provided the function calculates an inverse matrix and returns the inverse matrix
## If the function is called with no matrix provided the function returns an inverse matrix from the cache
## If the provided matrix is invertible then the function returns inverse matrix otherwise solve function returns an error

cacheSolve <- function(x,c,r, ...) {

  ## Return a matrix that is the inverse of 'x' from cache 
m <- x$getinvmx()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  ## Calculation of inverse matrix using solve function and sets the inverse matrix object "m" with the
  ## calculated inverse matrix
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinvmx(m)
  m
}
