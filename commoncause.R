#
# Common Cause Module
#
# Author: Paul Thomas Britton
#
###################################

GlobalAlpha <- function(M,diri) {
	k <- length(diri)
	GA <- 0
	aT <- 0
	for (i in 1:k)  aT <- aT + i * diri[[i]]
	for (j in M:k) {
		GA <- GA + (k * diri[[j]])/aT
	}
	return(GA)
}
