##計算 Shannon-Wiener 多樣性指數
##建構資料：
#方式一：
x <- c("樹杞", 17, "糊樗", 1, "黃楊", 2, "鼠刺", 6, "九節木", 22, 
       "大明橘", 9, "山紅柿", 2, "山豬肝", 1, "水金京", 4, "烏心石", 3,
       "燈稱花", 4, "牛奶榕", 2, "豬母乳", 1, "豬腳楠", 15, "鵝掌柴", 12,
        "台灣楊桐", 2, "台灣樹參", 4, "台灣糊樗", 1, "呂宋莢蒾", 1, "小花鼠刺", 1,
        "小葉樹杞", 1, "廣東油桐", 1, "金毛杜鵑", 3, "倒卵葉冬青", 1, "圓葉雞屎樹", 2,
        "奧氏虎皮楠",	2, "小梗木薑子", 1, "森氏紅淡比", 1, "琉球雞屎樹", 2, "細葉饅頭果", 1)

x.m <- matrix (x, ncol = 2, byrow = T, dimnames = list (c(),c('species','individuals')))


#方式二：
getwd()
download.file("https://raw.githubusercontent.com/mutolisp/ecoinformatics_course/master/data/twforest.csv", "/Users/lucy/Desktop/R 練習/自訂函式data-twforest.csv")

library (data.table)
data.twforest <- fread ("/Users/lucy/Desktop/R 練習/自訂函式data-twforest.csv")


##計算Shannon-Wiener 多樣性指數的R code : 
S <- data.twforest[, sum(individuals) ]
#計算個別物種數佔總物種數之比例
p_i <- data.twforest[, individuals/S ]

#最後加總並算出 Shannon-Wiener (H) 多樣性指數
H <- -sum(p_i * log(p_i))

##將計算Shannon-Wiener多樣性指數的code定義成函數(function)
#自訂函數(myFunction)的方式：
myFunction <- function(參數1, 參數2, ...){
        陳述(statements)
        return(objects)
}

##生態資訊學範例1：
#自訂的函式沒有參數，內容只有印出「Hello World!
helloWorld <- function(){
        print('Hello World!')
}
helloWorld()

##生態資訊學範例2: function
#加入參數：username
#sprintf：裡頭的 %s 代表變數(s 代表 string)，變數的內容是 username。
#所以當使用者輸入 helloWorld('小熊維尼(username)') 時，這個函式就會印出 “Hello! 小熊維尼”。
helloWorld <- function(username){
        sprintf('Hello! %s', username)
}
#username = 小熊維尼
helloWorld('小熊維尼')

#預設參數(此為username)為固定值 => 參數後方加上 = value (預設值)
helloWorld <- function(username='小熊維尼'){
        sprintf('Hello! %s', username)
}

helloWorld()


##如果要把一計算的過程包成一個函式該怎麼做呢？
#流程可以切為三個步驟：
#1. 分析這個函式需要輸入什麼參數？
#2. 內容該如何計算？
#3. 需要輸出哪些東西？

##設定計算 Shannon-Wiener 多樣性指數的自訂函式
#filePath = 要讀取的資料檔的路徑參數
ShannonWiener <- function(filePath) {
        twforest <- fread(filePath)
        # 計算總物種數
        S <- twforest[, sum(individuals) ]
        # 計算個別物種數佔總物種數之比例
        p_i <- twforest[, individuals/S ]
        # 最後加總並算出 Shannon-Wiener (H') 多樣性指數
        H <- -sum(p_i * log(p_i))
        return(H)
}
#最後面的return(H)，表示最後回傳H 這個變數，也就是計算完的 Shannon-Wiener 多樣性指數。























