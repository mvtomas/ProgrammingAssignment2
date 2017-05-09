## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  #store a matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  #returnes the stored matrix 
  get <- function() x
  #cache the given argument
  setinv <- function(invers) inv <<- invers
  #get the inverse value
  getinv <- function() inv
  # Return a list
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
# gets the inverse value
  inv <- x$getinv()
# if a cached value exists return it
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
 # otherwise get the matrix, caclulate the inverse and store it
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
 # Return the inverse
  inv
}
