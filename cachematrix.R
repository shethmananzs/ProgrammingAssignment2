## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
n <- NULL
  set <- function(y) {
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) n <<- inverse
  getinverse <- function() n
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

  ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
      n <- x$getinverse()
  if(!is.null(n)) {
    message("getting cached data")
    return(n)
  }
  matr <- x$get()
  n <- solve(matr, ...)
  x$setinverse(n)
  n
}
