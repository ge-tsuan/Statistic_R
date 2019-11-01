# Statistics With Practice - 5: Sampling Distribution & Parameters # 
# Instrucutor: Zecheng Wang (NTU Geography) #

# ----------------------------------------------------------------------------
# 1. Sample Proportions
# 2. Difference in Two Sample Proportions(Practice)
# 3. Sample Means
# 4. Sample Mean of Paired Differences(Practice)
# 5. Difference in Two Sample Means(Practice)
# ----------------------------------------------------------------------------

#########################
## Sample Proportions
#########################

n9.4=2400
p9.4=0.4

# 1. Simulational "mean of propotion" and "sd of propotion"

## Step 1. Sampling one time
Bino.event = function(n, p) {
  dec=0
  while (p%%1 != 0){
    dec = dec+1
    p = p*10
  }
  space = c(1:10^dec)
  
  simp.event = c()
  for (i in 1:n) {
    samp = sample(space, 1, replace = T)
    
    if (samp <= p) {
      event = 1
    } else {
      event = 0
    }
    
    simp.event[i] = event
  }
  
  x = sum(simp.event)
  p_hat=x/n
  
  return(p_hat)
}

Bino.event(n = n9.4, p = p9.4)


## Step 2. Sampling multiple times ¡÷ sample distribution
simu_p_hat = c()

for (i in 1:1000) {
  simu_p_hat[i] = Bino.event(n9.4,p9.4)
}


## Step 3.Draw sample distribution
hist(simu_p_hat, prob = T, breaks = 20,
     main = "Example 9.4 Sample Distribution",
     xlab = "Sample propotion (p hat)",
     col = "pink" , border = "white")



# 2. Theoretical "mean of propotion" and "sd of propotion"

## Step 1. Calculate ¡§mean of proportions¡¨ and ¡§sd of proportions¡¨
theo_mean = p9.4
theo_sd = sqrt(p9.4*(1-p9.4)/n9.4)

### Compare with Simulation:
mean(simu_p_hat)
theo_mean

sd(simu_p_hat)
theo_sd

## Step 2.Overlapping theoretical results
curve(dnorm(x,mean=theo_mean,sd=theo_sd),add=T)





#########################
## Sample Means
#########################

# mu=8¡Fsigna=5¡Fn=25
mu9.8=8
signa9.8=5
n9.8=25

# 1. Simulational ¡§mean of means¡¨ and ¡§sd of means¡¨

## Step 1. Sampling one time
Norm.event = function(mean,sigma,n){
  simp.event = rnorm(n,mean,sigma)
  xbar = mean(simp.event)
  
  return(xbar)
}

Norm.event(mu9.8,signa9.8,n9.8)

## Step 2. Sampling multiple times ¡÷ sample distribution
simu_xbar = c()
for(i in 1:1000){
  simu_xbar[i] = Norm.event(mu9.8,signa9.8,n9.8)
}

## Step 3.Draw sample distribution
hist(simu_xbar, prob = T, breaks = 20,
     main = "Example 9.8 Sample Distribution",
     xlab = "Sample means (xbar)",
     col = "lightblue" , border = "white")



# 2. Theoretical ¡§mean of means¡¨ and ¡§sd of means¡¨

## Step 1. Calculate ¡§mean of means¡¨ and ¡§sd of means¡¨
theo_mean = mu9.8
theo_sd = signa9.8/sqrt(n9.8)

### Compare with Simulation:
mean(simu_xbar)
theo_mean

sd(simu_xbar)
theo_sd

## Step 2.Overlapping theoretical results
curve(dnorm(x,mean=theo_mean,sd=theo_sd),add=T)




