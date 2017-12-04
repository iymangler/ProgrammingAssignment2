## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
   
   list(setMatrixVal=setMatrixVal, getMatrixVal=getMatrixVal, setInverseMatrix=setInverseMatrix, getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
