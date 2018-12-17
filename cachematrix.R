## Put comments here that give an overall description of what your
## functions do

## This function makes a special case matrix object. It will create the possibility to add some additional 
## information to the matrix x
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


## This function calculates the inverse of the special case matrix object. Is this object already has a 
## inverse calculated, it will return this.
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
