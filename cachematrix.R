## Put comments here that give an overall description of what your
## functions do

# Caching the Inverse of a Matrix

## Write a short comment describing this function
# saves a matrix and the solve function
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function
# Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
