#The likelihood function for Bernoulli trials 
#The scenario is that a hospital admitted 400 patients of heart attach, 72 of them died after 3 months 

likelihood=function(n,y,theta){return(theta^y*(1-theta)^(n-y))} #Create the likelihood function
theta=seq(from=.01, to=.99, by=.01) #Create a sequence of values for theta
plot(theta,likelihood(400,72,theta)) #Plot theta agains likelihood 
abline(v=72/400) #Add a vertical line to indicate the value that maximise the likelihood

#The log likelihood
loglikelihood=function(n,y,theta){return(y*log(theta)+(n-y)*log(1-theta))}
plot(theta,loglikelihood(400,72,theta))
abline(v=72/400)

plot(theta,loglikelihood(400,72,theta), type = "l") #Change the plot to line chart
