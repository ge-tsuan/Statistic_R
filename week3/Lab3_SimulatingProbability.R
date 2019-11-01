# Statistics With Practice - 2: Simulating Probability # 
# Instrucutor: Zecheng Wang (NTU Geography) #

# ----------------------------------------------------------------------------
# 1. The sample function
# 2. Happening of an event with probability p
# 3. Using "for loop" for simulation
# 4. Practice
# ----------------------------------------------------------------------------

#####################
## The sample function
#####################

### 1. Using help
?sample

### 2. Sample function
sample(c("菜英文","韓國魚","鋁鏽鐮")) #從菜、韓、鋁中做取後不放回的隨機抽樣

sample(c("菜英文","韓國魚","鋁鏽鐮"), size = 3, replace = FALSE) #sample(c("菜英文","韓國魚","鋁鏽鐮"))

sample(c("菜英文","韓國魚","鋁鏽鐮"), size = 5, replace = TRUE) #從菜、韓、鋁中做5次取後放回的隨機抽樣

sample(c("菜英文","韓國魚","鋁鏽鐮"), size = 10, replace = TRUE ,prob = c(4,3,2)) #從菜、韓、鋁中做10次取後放回的隨機抽樣，菜的取出機率為"4/9"，韓為"3/9"，鋁為"2/9"





#####################
## Happening of an event with probability p
#####################

### 1. Check the decimal places of p

p=0.013
dec=0
while (p%%1 != 0){
  dec = dec+1
  p = p*10
}
#將機率化為整數，並找出dec(有多少小數位)

### 2. Start to simulate

space = c(1:10^dec) #設置樣本空間(可以從多少整數中抽數字)

result = sample(space,size=1,replace=T)
if (result <= p){
  happen = 1
}else{
  happen = 0
}
#如果從空間中(1到1000)抽出來的<= 可以被抽到的最大數字(13)，
#表示在該機率(0.013)中，該事件發生(happen = 1)
#註:發生與否可設01變數，或用T&F





#####################
## Using "for loop" for simulation
#####################

#在我們寫迴圈時，不要一開始就把指令寫在迴圈中!
#請先在外面測試，再把它包到迴圈中(尤其是很多層的時候)!
#重點:一層一層測試!!!

#Scenario:我要模擬200次洪災發生(200次迴圈)，請先試一年的模擬

### 1. Testing

count_flood=0 #設置統計洪災發生次數的變數(若發生，該變數+1)

p=0.3
dec=0
while (p%%1 != 0){
  dec = dec+1
  p = p*10
}
space = c(1:10^dec)
result = sample(space,size=1,replace=T)
if (result <= p){
  happen = 1
}else{
  happen = 0
}
#跟上面一樣......

if (happen == 1){
  count_flood = count_flood+1
}

### 2. Packaging

#注意:寫迴圈時，不要把東西一直包到迴圈中
#     能放外面的，就放外面!
#     不然不必要的東西，每跑一次迴圈，就會被執行一次!!

#####################################################################################################
count_flood=0 

p=0.3
dec=0
while (p%%1 != 0){
  dec = dec+1
  p = p*10
}
space = c(1:10^dec)

for(i in 1:200){
  
  result = sample(space,size=1,replace=T)
  if (result <= p){
    happen = 1
  }else{
    happen = 0
  }
  
  if (happen == 1){
    count_flood = count_flood+1
  }
  
}

#####################################################################################################

### 3. Function and cat()

#函數設置時，盡量不用將函數的變數命成常見的變數名稱
#如:i (會與迴圈常用的i重複)

SimEvent=function(p,times){
  count_flood=0 
  dec=0
  while (p%%1 != 0){
    dec = dec+1
    p = p*10
  }
  space = c(1:10^dec)
  
  for(i in 1:times){
    
    result = sample(space,size=1,replace=T)
    if (result <= p){
      happen = 1
    }else{
      happen = 0
    }
    
    if (happen == 1){
      count_flood = count_flood+1
    }
    
  }
  
  cat(times,"年內發生洪災的次數:",count_flood)
  #cat()可直接print出輸入函數中的文字、變數值...
  
}

SimEvent(0.3,200)





#####################
## Practice
#####################

#某集水區每年發生洪災災害機率0.3，發生土石流災害機率0.4
#假設發生洪災跟土石流是彼此獨立，請用電腦模擬災害發生的頻率。
#自訂函數SimEvent()模擬在n年內，
#(1)僅發生洪災的次數
#(2)僅發生土石流的次數
#(3)同時發生洪災與土石流的次數


#提示:請從發生與否的變數思考(在今年，是不是只有某一種發生，或是同時發生。然後記下今年的發生種類)
