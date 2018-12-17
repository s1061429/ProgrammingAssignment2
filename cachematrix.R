## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        setMatrix <- function(y) {
                x <<- y
                i <<- NULL
        }
        getMatrix <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(setMatrix = setMatrix, getMatrix = getMatrix,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        matrix <- x$getMatrix()
        i <- solve(matrix, ...)
        x$setInverse(i)
        i
        ## Return a matrix that is the inverse of 'x'
}
