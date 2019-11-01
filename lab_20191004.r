xx=seq(-3,3, length.out=100)
yy=dnorm(xx, mean=0, sd=1)
plot(x=xx, y=yy, type="l",xlab="value", ylab="PDF" ,main="Normal distribution")
region.x = xx[xx >= -1 & xx <= 1]
region.y = yy[xx >= -1 & xx <= 1]
region.x2 = c(head(region.x,1), region.x, tail(region.x,1))
region.y2 = c(0, region.y, 0)
polygon(region.x2, region.y2, col = "green", )


region.x3=xx[xx>=1  ]
region.x4=c(head(region.x3,1), region.x3,tail(region.x3,1))
region.y3=yy[xx>=1 ]
region.y4=c(0,region.y3,0)
polygon(region.x4, region.y4, col = "red")

region.x5=xx[xx<= -1]
region.x6=c(head(region.x5,1), region.x5,tail(region.x5,1))
region.y5=yy[xx<= -1]
region.y6=c(0,region.y5,0)
polygon(region.x6, region.y6, col = "red")


