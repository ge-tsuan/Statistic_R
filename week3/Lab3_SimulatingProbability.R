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
sample(c("��^��","���곽","�T���I")) #�q��B���B�T�������ᤣ��^���H�����

sample(c("��^��","���곽","�T���I"), size = 3, replace = FALSE) #sample(c("��^��","���곽","�T���I"))

sample(c("��^��","���곽","�T���I"), size = 5, replace = TRUE) #�q��B���B�T����5�������^���H�����

sample(c("��^��","���곽","�T���I"), size = 10, replace = TRUE ,prob = c(4,3,2)) #�q��B���B�T����10�������^���H����ˡA�檺���X���v��"4/9"�A����"3/9"�A�T��"2/9"





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
#�N���v�Ƭ���ơA�ç�Xdec(���h�֤p�Ʀ�)

### 2. Start to simulate

space = c(1:10^dec) #�]�m�˥��Ŷ�(�i�H�q�h�־�Ƥ���Ʀr)

result = sample(space,size=1,replace=T)
if (result <= p){
  happen = 1
}else{
  happen = 0
}
#�p�G�q�Ŷ���(1��1000)��X�Ӫ�<= �i�H�Q��쪺�̤j�Ʀr(13)�A
#���ܦb�Ӿ��v(0.013)���A�Өƥ�o��(happen = 1)
#��:�o�ͻP�_�i�]01�ܼơA�Υ�T&F





#####################
## Using "for loop" for simulation
#####################

#�b�ڭ̼g�j��ɡA���n�@�}�l�N����O�g�b�j�餤!
#�Х��b�~�����աA�A�⥦�]��j�餤(�ר�O�ܦh�h���ɭ�)!
#���I:�@�h�@�h����!!!

#Scenario:�ڭn����200���x�a�o��(200���j��)�A�Х��դ@�~������

### 1. Testing

count_flood=0 #�]�m�έp�x�a�o�ͦ��ƪ��ܼ�(�Y�o�͡A���ܼ�+1)

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
#��W���@��......

if (happen == 1){
  count_flood = count_flood+1
}

### 2. Packaging

#�`�N:�g�j��ɡA���n��F��@���]��j�餤
#     ���~�����A�N��~��!
#     ���M�����n���F��A�C�]�@���j��A�N�|�Q����@��!!

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

#��Ƴ]�m�ɡA�ɶq���αN��ƪ��ܼƩR���`�����ܼƦW��
#�p:i (�|�P�j��`�Ϊ�i����)

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
  
  cat(times,"�~���o�ͬx�a������:",count_flood)
  #cat()�i����print�X��J��Ƥ�����r�B�ܼƭ�...
  
}

SimEvent(0.3,200)





#####################
## Practice
#####################

#�Y�����ϨC�~�o�ͬx�a�a�`���v0.3�A�o�ͤg�۬y�a�`���v0.4
#���]�o�ͬx�a��g�۬y�O�����W�ߡA�Хιq�������a�`�o�ͪ��W�v�C
#�ۭq���SimEvent()�����bn�~���A
#(1)�ȵo�ͬx�a������
#(2)�ȵo�ͤg�۬y������
#(3)�P�ɵo�ͬx�a�P�g�۬y������


#����:�бq�o�ͻP�_���ܼƫ��(�b���~�A�O���O�u���Y�@�صo�͡A�άO�P�ɵo�͡C�M��O�U���~���o�ͺ���)