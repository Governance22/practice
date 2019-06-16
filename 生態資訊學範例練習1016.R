## 數學計算
# 餘數和商的練習
a <- 131 %% 68
b <- 131 %/% 68
# 常數：圓周率(內建)
pi

log10(2)
log(10)
log2(10)
exp(5)
# 最大最小值，使用 max, min
max(3,1,8,7,6)
min(3,1,8,7,6)
# 計算平均數，使用 3,1,8,7,6 這個數列，用 c() 儲存成
# R 的 vector 形式
vect1 <-  c(3,1,8,7,6)
mean(vect1)

# 調整小數顯示位數，預設是 7 位（包含小數點以上的數值）
# 3.141592653 --> 顯示為 ---> 3.141593
# 最大值 22
options(digits = 22)

# 矩陣運算
A <- matrix(c(1,3,2,4,2,3,2,3,1),3,3)
B <- matrix(c(2,1,3,4,1,5,1,2,2),3,3)
# 相乘積
A %*% B
# 元素之間相乘
A * B

# 練習
# 方法 1
P <- c(3,5,7,1,8,9,2,1,5,4)
p1 <- P[1]*log(P[1])
p2 <- P[2]*log(P[2])
p3 <- P[3]*log(P[3])
p4 <- P[4]*log(P[4])
p5 <- P[5]*log(P[5])
p6 <- P[6]*log(P[6])
p7 <- P[7]*log(P[7])
p8 <- P[8]*log(P[8])
p9 <- P[9]*log(P[9])
p10 <- P[10]*log(P[10])
sum(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
## 方法二，使用 data.table
## 請先在 packages 裡安裝 data.table
library(data.table)
# 將 P 數列存成 data.table 格式
P.dt <- data.table(P)
# 新增一個欄位 n，其值為 P * log(P)
P.dt[, n := P*log(P)]
# 最後再加總起來
sum(P.dt[, n])

# 邏輯判斷
3 == 5
a <- 3
b <-  5
s1 <- c(1,3,5,7,1,3,5,5,9,8)
# factor 加總是沒有意義的
sum(factor(s1))

# 把兩個向量用 cbind (column bind) 組合起來
s2 <- cbind(s1, P)
# 看 s2 的長度(length)和維度(dim=dimension)
length(s2)
dim(s2)

# 資料結構: list
container <- list(s1,s2,P)
container[['Hollyshit']] <- c('ha', 'ha')
y <-  1:10
x <- sample(50)
x.m <- matrix(x, nrow = 10)

# 篩選資料，可以使用 [] subscription (中括號)
# 來表示：A[i,j] 代表 A data.frame 中的第 i 列，第 j 欄
# A[, j] 代表第 j 欄(整欄)
# A[i, ] 代表第 j 欄(整欄)

# 練習：
# 把第一欄小於 10 的數值找出來
# 1. 先列出第一欄
x.m[, 1] 
# 2. 再加上邏輯判斷，得到的結果為 True/False
x.m[, 1] < 10
# 再使用 subscription 組合起來
x.m[, 1][x.m[, 1] < 10]