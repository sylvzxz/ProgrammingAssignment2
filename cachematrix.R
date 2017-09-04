## Write a short comment describing this function
## The first function is to performe the following tasks:
## Set the value of the Matrix
## Get the value of the Matrix
## Set the value of the inverse
## Get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## Write a short comment describing this function
## This function computes the inverse of the special "matrix" created by makeCacheMatrix
##If the inverse has already been calculated and the matrix has not changed, then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(i)
        }
        mat <- x$get()
        i <- solve(mat,...)
        x$getinverse(i)
}
