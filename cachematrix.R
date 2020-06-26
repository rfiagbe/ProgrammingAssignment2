## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix = function(x = matrix()) {
  j <- NULL
  set = function(y) {
    x = y
    j = NULL
  }
  get = function() x
  setinverse = function(inverse) j = inverse
  getinverse = function() j
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

cacheSolve <- function(x, ...) {
  j <- x$getinverse()
  if (!is.null(j)) {
    message("getting cached data")
    return(j)
  }
  data <- x$get()
  j <- solve(data, ...)
  x$setinverse(j)
  j
}


B <- matrix(c(1, 5, 6, 4, 4, 2, 1, 8, 3), byrow = T, 3)
#solve(B) #We pretend that this cant't happen xD
B1 <- makeCacheMatrix(B)
cacheSolve(B1)

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
