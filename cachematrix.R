## Inversion of Matrix to cache the matrix instead of computing it for each time
## This should save on costly computation.

## function makeCacheMatrix creates a list of function to setMatrix value , get
##    matrix value, set the inverse value of matrix and get inverse value of matrix

makeCacheMatrix <- function(x = matrix()) {
    #initialize my matrix
    myMatrix<-NULL

   #set matrix value   
   setMatrixVal<-function(y) {
     x<<-y
     myMatrix<<-NULL
   }
   #get the value of matrix
   getMatrixVal<-function() x 
   #set the inverse value of matrix
   setInverseMatrix<-function(inverse) myMatrix<<-inverse
   #get the inverse value of matrix
   getInverseMatrix<-function() myMatrix
   
   list(setMatrixVal=setMatrixVal, getMatrixVal=getMatrixVal, setInverseMatrix=setInverseMatrix, getInverseMatrix=getInverseMatrix)
}


## function cacheSolve returns the inverse of matrix
##   Returns inverse of matrix if not already calculated. If already calculated,
##   return the calculated value.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverseMatrix<-x$getInverseMatrix()
  # checking if value is not null so retrieve value from cache
  if(!is.null(inverseMatrix)) {
     message("Already inverted Matrix!")
     return(inverseMatrix)
  }
  
  #first get
  calcInv<-x$getMatrixVal()
  #use solve function to compute inverse
  inverseMatrix<-solve(calcInv, ...)
  #set the inverse matrix
  x$setInverseMatrix(inverseMatrix)
  return(inverseMatrix)
}
