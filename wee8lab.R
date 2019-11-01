qnorm(0.9, mean=0, sd=1)

curve(dnorm(x), -4,4)
curve(pnorm(x), -4, 4)
curve(qnorm(x), )
qnorm(0.9999999999)


curve(dt(x, df=10), -3,3)

curve(pt(x, df=10), -3,3)

curve(qt(x, df=10), )

curve(dt(x, df=30), -3,3,lwd=4,ylab="y", col="lightblue")


ind=c(1,2,3,5,10,30)
for (i in ind){
  curve(dt(x, df=i), -3,3,lwd=1.5,ylab="y",add=T, col="pink")
}





conf.level=0.95


t.value=qt((1-conf.level)/2, df=n-1, lower.tail=F)

x=rnorm(30)
n=length(x)
x_bar=mean(x)
sd(x)

se.x=sd(x)/sqrt(n)
se.x
t=qt(1-0.05/2 ,df=n-1)
t

x_bar+t*se.x

x_bar-t*se.x

t.test(x, conf.level = 0.95)

##############


rm(list=ls())
conf=0.95
n=20
x=rnorm(20)
y=rnorm(20)
s=x-y
s_bar=mean(s)
s_bar
se=abs(sd(s)/sqrt(n))
se
t.value=qt(1-0.05/2,df=n-1)
t.value
s_bar+se*t.value
s_bar-se*t.value
sd(s)
t.test(x, y, paired=T, conf.level=0.95)
#############


rm(list=ls())


DF=function(s.1, s.2, n.1, n.2){
  ((s.1^2/n.1)+(s.2^2/n.2))^2 /
  ((1/(n.1-1))*(s.1^2/n.1)^2) +
  ((1/(n.2-1))*(s.2^2/n.2)^2)
}



x=rnorm(30)
y=rnorm(35)
n.x=length(x)
n.y=length(y)
x_bar=mean(x)
y_bar=mean(y)
s.x=sd(x)
s.y=sd(y)

DF(s.x, s.y, n.x, n.y)


se=sqrt(s.x^2/n.x+s.y^2/n.y)
t.value=qt(1-0.05/2, df=DF(s.x, s.y, n.x, n.y))

t.test(x, y, paired = F)
