## My functions create a matrix and get the inverse of that matrix to cache it the environment makeCahceMatrix


## This function creates a matrix and gets its inverse to cache it



makeCacheMatrix <- function(x = matrix()) {
	
	m<- NULL
	
	set<- function(y) {
		
		x<<- y
		m<<-NULL 


	

	}

	get<- function() x
	setinverse<- function(solve) m<<-solve
	getinverse<- function() m	
	list(set=set, get=get, setinverse=setinverse,getinverse=getinverse)
		




}


## this function returns the value of the cached matrix in case it has been already computed

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
