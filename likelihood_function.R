likelihood=function(n,y,theta){return(theta^y*(1-theta)^(1-y))}
theta=seq(from=.01, to=.00, by=.01)
plot(theta,likelihood(400,0.72,theta))
