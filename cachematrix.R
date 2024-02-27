## These functions creates a temp matrix to set and get the value of the matrix,
## and set and get the value of the inverse, then calc the inverse of the
## matrix we created, checking first to see if inverse has already been calced
## and if so, uses the cached value.

## makeCacheMatrix creates a temp matrix to set and get the value of the matrix,
## and set and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) { inv <- NULL
set <- function(y) {
  x <<- y
  inv <<- NULL
}
get <- function() x
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## cacheSolve calcs the inverse of the matrix we created, checking first to see
## if inverse has already been calced and if so, uses the cached value.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setInverse(inv)
  inv
}
solve(x)