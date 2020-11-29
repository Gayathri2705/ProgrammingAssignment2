## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse_mat <- NULL
   setfunc <-function(y){
         x<<-y
          inverse_mat <<- NULL
}
          getfunc <- function() {x}
       set_Inverse <-function(inverse){inverse_mat <<- inverse}
        get_Inverse<- function(){inverse_mat}
   list(setfunc = setfunc, getfunc = getfunc, set_Inverse = set_Inverse, get_Inverse =get_Inverse)
        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse_mat <- x$get_Inverse()
       if(!is.null(inverse_mat)){
                 message("getting cached data")
                  return(inverse_mat)
          }
            mat <- x$getfunc()
            inverse_mat<- solve(mat, ...)
            x$set_Inverse(inverse_mat)
            inverse_mat
}
