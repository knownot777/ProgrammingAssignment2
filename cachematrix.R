## My functions create a matrix and get the inverse of that matrix to cache it the environment makeCahceMatrix


## This function creates a matrix and gets its inverse to cache it.

##	1.set the value of the matrix
##	2.get the value of the matrix
##	3.set the value of the matrix
##	4.get the value of the matrix



makeCacheMatrix <- function(x = matrix()) {
	
	m<- NULL
	
	set<- function(y) {
		
		x<<- y
		m<<-NULL 


	

	}

	get<- function() x
	setinverse<- function(inverse) m<<-inverse
	getinverse<- function() m	
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
		




}


## this function returns the value of the cached matrix in case it has been already computed
## The following function calculates the inverse of the Matrix created with the above function. 
## However, it first checks to see if the inverse has already been calculated. 
## If so, it gets the inverse from the cache and skips the computation. 
## Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
       
 ## Return a matrix that is the inverse of 'x'

	m<-x$getinverse()
	
	if(!is.null(m)) {
	message("getting cached data")
	return(m)	
	}
	
	data<-x$get()
	m<-solve(data,...)
	x$setinverse(m)
	m
}
