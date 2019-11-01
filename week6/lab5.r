

qesult=rbinom(2400, 1, 0.4)
mean(result)
simu.p.hat=c()
for (i in 1:1000)
{
	simu.p.hat[i]=mean(rbinom(2400, 1, 0.4))

}

hist(simu.p.hat, prob = T, breaks = 20,
     main = "Example 9.4 Sample Distribution",
     xlab = "Sample propotion (p hat)",
     col = "pink" , border = "white")

