## The overall purpose of these functions is to find the inverse of an invertible matrix. Since calculating matrix inversion can be time consuming if calculations have to be computed repeatedly, here the program is caching the inverse of the matrix.

## This first function "makeCacheMatrix" establishes the values within the matrix. The below function sets the value of the matrix, gets the value of the matrix, sets the inverse of the matrix, and gets the inverse of the matrix.

makeCacheMatrix<-function(x=matrix()) {
  inv<-NULL
  set<-function(y) {
    x<<-y
    inv<<-NULL
}
get<-function() x
setinverse<-function(inverse) inv<<-inverse
getinverse<-function() inv
list (set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## This function returns the inverse of the function. It uses an "if" argument to determine whether or not the matrix inverse has already been calculated, if it has simply returns the matrix and if not it calculates the inverse and returns the values for that inverse matrix.

cacheSolve<-function(x, ...) {
  inv<-x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
}
data<-x$get()
inv<-solve(data)
x$setinverse(inv)
inv
}
