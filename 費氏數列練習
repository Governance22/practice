#迴圈
#費氏數列:F (N) = F (N-1) + F (N-2)


#for 迴圈
a <- 1
b <- 1
for (i in 1:20){
    print (a)
    c = a+b
    a = b
    b = c
}
print (5)
#先定義出F (1) = a = 1 ; F (2) = b = 1
#c = a + b 將a + b賦值给c
#b = c 把c賦值给b，b原来的值被覆蓋掉 => F (N-1)
#a = b 把b賦值给a，a原来的值被覆蓋掉 => F (N-2)
#a是更新最慢的，從而將每個數都印出来
##a,b,c 順序不能改變


#while迴圈
a <- 1
b <- 1
i = 0
wo <- function(x){
  while(i <= x) {
    print(a)
    c = a +b
    a = b
    b = c
    i = i+1
  } 
}
wo(6)
#和第一個類似
##i = i + 1 (用意？)


#流程控制：if......else
wo <- function(x){
  if (x ==1 || x == 2){
    return(1)
  }else{
    return(wo (x-1) + wo (x-2))
  }
}
wo(6)
##採用遞歸的编程思想。
###原文：https://blog.csdn.net/xxzhangx/article/details/52949084 



#自訂函數
helloWorld <- function(username = '小熊維尼'){
  sprintf('Hello! %s',username)
}
helloWorld('小熊維尼')



myfunction <- function(N){
  
}
