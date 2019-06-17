##先用 sample.int 產生 10 個 1–100 的整數
s1 <- sample.int(100, 10)
s1

##使用 order 排序
order(s1) 
#order() 排序完給的是順序，即最小的是第八個、次之是第六個......


##要直接針對一個數列排序，就得要用 sort() 了。
sort(s1) 

##如果要用 order() 把原本的數列排序好顯示，則要用 s1[order(s1)]
s1[order(s1)]

##降冪排序(descending)：加上(,decreasing = TRUE)
order(s1, decreasing = TRUE)
sort(s1, decreasing = TRUE) 
s1[order(s1, decreasing = TRUE)]


##sort 本身只能針對 vector和部分的 factor 資料排序(僅有一個變數的資料)，
##所以多個變數的 data.frame 就得要使用order() 來排序了。

##mtcars資料集示範
#先載入 mtcars 資料集
attach(mtcars)

#針對馬力(hp)來降冪排序
mtcars[order(hp, decreasing = TRUE),]

#另外一個快速降冪排序法可以在變數前面加上減字號
mtcars[order(-hp),]

#針對多個變數依序來排序，只要在 order() 中依序填入你想要排序的變數即可，
#例如：針對馬力(hp)先降冪排序，接下來針對汽缸數(cyl)排序 
##(先將馬力(hp)先降冪排序，再將相同馬力(hp)數值的資料針對汽缸數(cyl)排序)：
mtcars[order(-hp, cyl),]










