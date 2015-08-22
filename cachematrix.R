## TESTE 02 RPROG 031
## DICOGASPAR

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <-- inverse
  getinverse <- function() inv
  list(set = set, get = get, getinverser=getinverse, setinverse=setinverse)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)}
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
  
}
