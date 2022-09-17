## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

library(MASS)
CacheMatrix <- function(x = matrix()) {
  ip<-NULL
  set<-function(y){
    
    x<<-y
    ip<<-NULL
  }
  
  get<-function()x
  setip<-function(inverse)ip<<-inverse
  getip<-function(){
    er<-getip(x)
    er%*%x
  }
  
  list(set=set,get=get,setip=setip,getip=getip)
  
=======
makeCacheMatrix <- function(x = matrix()) {

>>>>>>> parent of c5738c1 (Update cachematrix.R)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
<<<<<<< HEAD
  ## Return a matrix that is the inverse of 'x'
  
  ip<-x$getip()
  if(!is.null(ip)){
    message("getting cached data")
    return(ip)
  }
  
  
  
  data<-x$get()
  ip<-solve(data,...)
  x$setip[(ip)]
  ip
  }




=======
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> parent of c5738c1 (Update cachematrix.R)
