#讀入excel檔(?無法安裝？？？)
#安裝readxl套件
# 使用 excel_sheets 讀取 excel 中的 sheet 名稱
sheetNames <- excel_sheets('some_excel_file.xlsx')
# 假設只讀取第一個 sheet
excelFile <- read_excel('some_excel_file.xlsx', 
                        sheet = sheetNames[1])

##讀取資料：ecoinformatics_ex1026.csv
getwd ()
setwd ("/Users/lucy/Desktop")
read.table ("/Users/lucy/Desktop/R 練習/ecoinformatics_ex1026.csv")
read.csv ("/Users/lucy/Desktop/R 練習/ecoinformatics_ex1026.csv")

##參數：header (欄位名稱的有無)、sep(分隔符號)、na.strings (沒有資料的字串，例如 -9999)、skip (省略的行數)、encodings (編碼)
# header (欄位名稱的有無) : header=FALSE : 關掉讀取第一列當成欄位名稱
# sep (分隔符號) : 在讀取以 Tab、pipeline (|) 所需要輸入的符號，例如以 Tab 分隔，參數則為 sep = "\t" (\t 代表 Tab 鍵)
# encodings (編碼) : 如果編碼是 unicode，參數為encoding = "UTF-8"。

##大檔案資料讀取方式 : data.table::fread()，若是以read.csv() 來讀取，要比較久時間


##取得計算時間
proc.time()

#ex :  ptm <- proc.time()
#a_csvread <- read.csv('data/testdata.csv')
#proc.time() - ptm
##所花時間即是：user那一欄


#或是：ptm <- proc.time()
#a_fread <- fread('data/testdata.csv')
#proc.time() - ptm
##所花時間即是：user那一欄


##資料輸出：write.csv(x, "路徑", row.names = FALSE)，路徑可用""或''
#預設會輸出列數，(row.names=FALSE) => 關閉這個需求
x <- c(1,2,3,4,5,6,7,8,9)
x.m <- matrix (x,3,3)
write.csv (x.m, '/Users/lucy/Desktop/x.m.csv', row.names = FALSE)

#data.table套件資料輸出：data.table::fwrite()

#儲存目前工作階段中之變數、載入的資料：save.image("儲存的路徑/.rdata") 儲存成 R 映像檔，以方便下次使用

#手動儲存與載入R 映像檔(儲存、載入右方的環境資料)：分別使用 save.image() 和 load()
#儲存目前工作階段映像檔：save.image('/儲存路徑/檔名.Rdata')
#載入映象檔：load('/儲存路徑/檔名.Rdata')
save.image ('/Users/lucy/Desktop/save1.RData')
load("/Users/lucy/Desktop/save1.RData")




