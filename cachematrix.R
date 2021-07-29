## Put comments here that give an overall description of what your
## functions do

## this function is able to create a cached version of inputted matrix

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


## this function uses the cached matrix created by the function above as an
## input and then outputs the inverse of that matrix

cacheSolve <- function(x, ...) {

  cache <- x$getinverse()
  
  if(!is.null(cache)){
    return(cache)
  }
  matrix <- x$get()
    cache <- solve(matrix)
    x$setinverse(cache)
  cache
}