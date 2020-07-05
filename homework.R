
#Task1
makeCacheMatrix <- function(x = matrix()){
q <- NULL
set <- function(z){
x <<- z
q <<- NULL
}
get <- function()x
setInverse <- function(inverse)q <<- inverse
getInverse <- function()q
list(set = set, get = get,setInverse = setInverse,getInverse = getInverse)
}

#Task2
cacheSolve <- function(x, ...){
q <- x$getInverse()
if(!is.null(q)){message("getting cached data") return(q)}
dg <- x$get()
q <- solve(dg, ...)
x$setInverse(q)
q
}