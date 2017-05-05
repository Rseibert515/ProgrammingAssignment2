## Put comments here that give an overall description of what your
## functions do

## This function Cache's the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  
m<-NULL

set <- function(y) {
  x <<- y
  m <<- NULL
}

get <- function() x

setMatrixInverse<-function(){m<<-solve(x)}

getMatrixInverse<-function(){m}



list(set=set,get=get,setMatrixInverse=setMatrixInverse,getMatrixInverse=getMatrixInverse)


}




## This function

cacheSolve <- function(x, ...) {
  
  m <- x$getMatrixInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setMatrixInverse()
  m
        
}


