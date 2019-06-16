## 2017-10-26 Ecoinformatics
#.libPaths('~/Library/R/site-libraries/')

x <- 10
# 使用 ifelse() 函式
ifelse(x <= 5, "Yes", "No")
# 使用 if ... else ...
if ( x <= 5 ){
  print("Yes")
} else {
  print("No")
}

a <-  rnorm(1)
# if-elseif-else 選擇
if ( a < 5 ) {
  print("a is less than 5")
} else if ( a > 0 ) {
  print("a is between 0 to 5")
} else {
  print("a is greater than 5")
}

# 重複
# 在 R 裡頭要代表序列的話，可以用 n:m
1:100
for ( i in 1:100 ){
  print(i)
}
# while 迴圈
i <- 1
while ( i <= 100 ){
  # 印出 i 的數值
  print(i)
  # 接下來設定 i' = i + 1，也就是每印完一個數字後，
  # i 自動加 1
  i <- i + 1
}

while ( 1 + 1 == 2 ){
  print("1+1=2, 對啊，這還用說")
}