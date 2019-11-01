---
title: '統計學及實習＿作業一'
author: "Khó͘ Gē-Choân"
date: "9/11/2019"
output: html_document
---

## 3.1

```r
(2019-2014)/22*100
```

```
## [1] 22.72727
```

## 3.2

```r
age=22
fisrtyear=2014
fifthyear=2019
(fifthyear-fisrtyear)/age*100
```

```
## [1] 22.72727
```

## 3.4

```r
a=c(4,5,8,11)
sum(a)
```

```
## [1] 28
```

## 3.5

```r
x=rnorm(100)
plot(x)
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4-1.png)

## 3.6

```r
help(sqrt)
```

## 5

```r
x<-rnorm(100)
plot(x)
"""好像沒有辦法用rmarkdown表示存檔的過程......

```

```
## Error: <text>:3:3: unexpected INCOMPLETE_STRING
## 4: 
## 5: 
##      ^
```
## 6.2

```r
P<-seq(31:60)
Q<-matrix(31:60,  ncol=5, nrow=6)
```

## 6.3


```r
x1=rnorm(100)
x2=rnorm(100)
x3=rnorm(100)
t=data.frame("a"=x1, "b"=x1+x2, "c"=x1+x2+x3)
plot(t)
```

![plot of chunk unnamed-chunk-8](figure/unnamed-chunk-8-1.png)

```r
sapply(t, sd)
```

```
##        a        b        c 
## 1.052296 1.336243 1.665769
```

## 6.4.


```r
plot(t$a, type="l", ylim=range(t),
 lwd=10, col=rgb(1,0,0,0.3))
lines(t$b, type="p", lwd=2,
 col=rgb(0.3,0.4,0.3,0.9))
points(t$c, pch=13, cex=10,
 col=rgb(0,0,1,0.3))
```

![plot of chunk unnamed-chunk-9](figure/unnamed-chunk-9-1.png)
-----

- rgb:
	定義顏色的函式，如圖表中線條或是點的顏色。
- lwd:調整線的粗細。
- type：可以選擇"p","l"或"t",l是折線圖，p是散點圖。 
- cex:調整點的大小
- pch:改變點的形狀

## 8

```r
d = data.frame(a = c(1,2,4,8,16,32),
 g = c(2,4,8,16,32,64),x=c(3,6,12,24,48,96))
write.table(d, file="tst1.txt",
 row.names=TRUE)
dd=read.table(file="tst1.txt",)
dd$g=dd$g*5
print(dd)
```

```
##    a   g  x
## 1  1  10  3
## 2  2  20  6
## 3  4  40 12
## 4  8  80 24
## 5 16 160 48
## 6 32 320 96
```

```r
write.table(dd, file="tst2.txt", row.names=TRUE)
```

## 9

```r
mean(sqrt(rnorm(100)))
```

```
## Warning in sqrt(rnorm(100)): NaNs produced
```

```
## [1] NaN
```

```r
mean(sqrt(rnorm(100)),na.rm=TRUE)
```

```
## Warning in sqrt(rnorm(100)): NaNs produced
```

```
## [1] 0.7643233
```

## 10

```r
date3=strptime( c("20190913000000","20141206000000","20200830000000"),format="%Y%m%d%H%M%S")
presents=c(0,0,1)
plot(date3,presents,lwd=5)
```

![plot of chunk unnamed-chunk-12](figure/unnamed-chunk-12-1.png)

## 11.2


```r
h=seq(1:100)
s=c()
for (i in 5:90)
{	s[i]=h[i]*10}
for(i in 1:4 )
{s[i]=h[i]*0.1}
for(i in 91:100)
{s[i]=h[i]*0.1}
print(s)
```

```
##   [1]   0.1   0.2   0.3   0.4  50.0  60.0  70.0  80.0  90.0 100.0 110.0
##  [12] 120.0 130.0 140.0 150.0 160.0 170.0 180.0 190.0 200.0 210.0 220.0
##  [23] 230.0 240.0 250.0 260.0 270.0 280.0 290.0 300.0 310.0 320.0 330.0
##  [34] 340.0 350.0 360.0 370.0 380.0 390.0 400.0 410.0 420.0 430.0 440.0
##  [45] 450.0 460.0 470.0 480.0 490.0 500.0 510.0 520.0 530.0 540.0 550.0
##  [56] 560.0 570.0 580.0 590.0 600.0 610.0 620.0 630.0 640.0 650.0 660.0
##  [67] 670.0 680.0 690.0 700.0 710.0 720.0 730.0 740.0 750.0 760.0 770.0
##  [78] 780.0 790.0 800.0 810.0 820.0 830.0 840.0 850.0 860.0 870.0 880.0
##  [89] 890.0 900.0   9.1   9.2   9.3   9.4   9.5   9.6   9.7   9.8   9.9
## [100]  10.0
```
	

## 11.3

```r
fun1=function(arg1,arg2)
{x<-rnorm(100)
y=seq(100)
	s=c()
for (i in 1:length(y))
{s[i]=y[i]*arg1+x[i]*arg2}

return(mean(s)) 
}
fun1(12,3)
```

```
## [1] 605.954
```






