## Compute the matrix inversion caching the inverse of a matrix.
## It is assumed that the matrix supplied is always invertible

## makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## cacheSolve return the inverse of the special "matrix" 
## from the cache if the inverse has already been calculated 
## (and the matrix has not changed); otherwise, the inverse is computed.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
<<<<<<< HEAD
}
=======
}
>>>>>>> 479906be760cf94678a748ae52c6bcde3ad100a7
