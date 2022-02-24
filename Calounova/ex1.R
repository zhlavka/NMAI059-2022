## Beta distribuce

# https://en.wikipedia.org/wiki/Beta_distribution

x <- seq(0, 1)

# HUSTOTNI FCE
curve(dbeta(x,0.5,0.5), col='red')
curve(dbeta(x,5,1), add = TRUE, col='blue')
curve(dbeta(x,1,3), add = TRUE, col='green')
curve(dbeta(x,2,2), add = TRUE, col='purple')
curve(dbeta(x,2,5), add = TRUE, col='orange')

# DISTRIBUCNI FCE
curve(pbeta(x,0.5,0.5), col='red')
curve(pbeta(x,5,1), add = TRUE, col='blue')
curve(pbeta(x,1,3), add = TRUE, col='green')
curve(pbeta(x,2,2), add = TRUE, col='purple')
curve(pbeta(x,2,5), add = TRUE, col='orange')
