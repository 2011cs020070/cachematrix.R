## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

library(MASS)
 CacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    
    x<<-y
    inv<<-NULL
  }
  
  get<-function()x
  setinv<-function(inverse)ip<<-inverse
  getinv<-function(){
    er<-ginv(x)
    er%*%x
  }
  
  list(set=set,get=get,setinv=setinv,getinv=getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  ip<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  
  
  
  data<-x$get()
  inv<-solve(data,...)
  x$setip(inv)
  inv
}

p<-CacheMatrix(matrix(1:10,5,2))
p$get()
p$getinv()

p<-CacheMatrix(matrix(1:10,5,2))
p$get()
p$getinv()
