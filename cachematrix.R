## Peer-graded Assignment: Programming Assignment 2: Lexical Scoping
## Gituser: rafmaits


## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL                                         #initialize value as NULL
  
  set <- function(y) {
    x <<- y
    i <<- NULL                                      #reset value as NULL
  }
  
  get <- function() x                               #return the value of the Matrix
  
  setInverse <- function(inverse) i <<- inverse     #assign value of the inverse Matrix
  getInverse <- function() i                        #get the value of the inverse Matrix
  
  list(set = set, get = get,setInverse = setInverse, getInverse = getInverse)
      
} 


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  i <- x$getInverse()
    if(!is.null(i)) {                  #if inverse matrix is not NULL
      message("getting cached data")   #Type message: Getting Cached Data
      return(i)                        #return the Matrix Value
    }
  
                                        #if value of the i is NULL then  
  data <- x$get()                       #get the data
    i <- solve(data, ...)               #solve matrix
    x$setInverse(i)                     
    return(m)                           #return the the inverse matrix
}
