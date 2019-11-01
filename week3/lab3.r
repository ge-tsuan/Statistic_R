p= 0.345
dec=0
while (p%%1!=0)
{
	dec =dec+ 1
	p=p*10
}
space= c(1:10^dec)

result=sample(space, size=1, replace=T)  
if(result<=p)
	{
		happen=1
	}else{
		happen=0
	}

countFlood=0

if( happen==1){
	countFlood=countFlood+1
}

for (i in 1:200){
result=	sample(space,size=1, replace=T)
	if (result<=p){
happen= happen+1
			}else{
happen=0
		}
if (happen==1){
	countFlood= countFlood +1
	}
}

