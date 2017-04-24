## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setcachematrix <- function(cachematrixinverse) m <<- cachemactrixinverse
        getcachematrix <- function() m
        list(set = set, get = get,
             setcachematrix = setcachematrix,
             getcachematrix = getcachematrix)
}


## This function computes the inverse of the special "matrix" if is not inverse.
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getcachematrix()
        if(solve(m) != m) {
                data <- x$get()
                m <- solve(data, ...)
                x$setcachematrix(m)
                return(m)
        } else 
                message("getting inverse cached matrix")
        m
        
}
