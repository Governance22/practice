###vector -> 一維資料；data frame, matrix -> 二維資料；list -> 三維資料
##數值聚合(concatenat)成向量(vector)
#若元素是文字，需加''
x <- c(1,1,3,7,5,6,7,8,9)

#向量長度(多少元素)：length()
length (x)

#向量類別(有哪些元素類別)：factor()
factor (x)

#文字元素
factor (c('a','b','a','g','c','d','d'))
factor (c('鳥','貓','狗','狗','貓','馬','熊'))
length (c('鳥','貓','狗','狗','貓','馬','熊'))

#尋找數列的元素類別及其個數
summary (as.factor(x))

#建立資料框架(Data Frame)
x.df <- data.frame(x)

#矩陣(3 X 3，依照列(row)來排列)
matrix (x, nrow = 3, ncol = 3, byrow = T)

#矩陣(3 X 3，依照行(column)來排列)
matrix (x, nrow = 3, ncol = 3, byrow = F)
matrix (x, nrow = 3, ncol = 3)

#列表(list)，使用list合併兩個matrix (二維資料) => 三維資料
#sample(x) <- 隨機排列1至x的數值
x <- matrix (sample(9), nrow = 3)
y <- matrix (sample(9), ncol = 3)
list_xy <- list (x, y)
list_xy

#查看list_xy中編號[2]的matrix：list_xy[[2]]
list_xy [[2]]

#資料結構類型的判斷：is.+資料類型(vector, list......etc)(中間不能加空白鍵)
is.list (list_xy)

#資料結構類型的轉換：as.+資料類型(中間不能加空白鍵)
A <- c(9,8,7,6,4,6)
as.data.frame(A)


#資料索引，查詢矩陣或資料框架中某列、某行、某列某行的資料： [特定列,特定行]
x [1,]
x [,3]
x [2,2]

#邏輯判斷
x [1,] > 5

#條件篩選
x [1, x [1,] > 5 ]

