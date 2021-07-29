## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cache<-NULL
  set<-function(y){
    x<<-y
    cache<-NULL
  }
  get <- function()x
  setinverse <- function(inverse) cache<<-inverse
  getinverse <- function() cache
  
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  cache <- x$getinverse()
  
  if(!is.null(cache)){
    return(cache)
  }
  matrix <- x$get()
  cache <- solve(matrix)
  x$setinverse(cache)
  cache
}