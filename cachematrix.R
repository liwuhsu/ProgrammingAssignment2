## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## create a function which returns a list of four functions 
makeCacheMatrix <- function(x = matrix()) {
        ivm <- NULL #set the initial value
        set <- function(y){
                x <<- y
                ivm <<- NULL
        } # set the value of the vector
        get <- function() x # return the value of the vector
        setmatrix <- function(inversematrix) ivm <<- inversematrix # set the value of the inverse matrix
        getmatrix <- function() ivm # return the value of the inverse matrix
        list(set = set, get = get, setmatrix = setmatrix, getmatrix = getmatrix) #return the list of four functions
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ivm <- x$getmatrix()
        if(!is.null(ivm)) {
                message("getting cached data")
                return(ivm)
        } # if the inverse matrix is cached, return message "getting cached data" and end this function
        data <- x$get() # if not, assign the data to 'data'
        ivm <- solve(data, ...) #solve the inverse matrix and assign it to 'ivm'
        x$setmatrix(ivm) # call function to cache the inversematrix
        ivm # return the inverse matrix
}

