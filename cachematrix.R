## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   myMatrix<-NULL
   
   setMatrixVal<-function(y) {
     x<<-y
     myMatrix<<-NULL
   }
   
   getMatrixVal<-function() x 
   setInverseMatrix<-function(inverse) myMatrix<<-inverse
   getInverseMatrix<-function() myMatrix
   list(setMatrixVal=setMatrixVal, getMatrixVal=getMatrixVal, setInverseMatrix=setInverseMatrix, getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
