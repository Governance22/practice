# 練習從政府開放資料網下載資料
# https://data.gov.tw/dataset/6091
# 全臺灣大專院校名錄

# 預設在 data.gov.tw 上面的編碼是 UTF-8
# 記得把路徑改成你的檔案路徑，例如 C:\\Users\\username\\u1_new.csv
# skip = 2
uniList <- read.csv('~/Downloads/u1_new.csv', 
                    skip = 2)
# 另外我們也可以使用 data.table 的 fread 來讀取

library(data.table)
uniList.df <- data.table::fread('~/Downloads/u1_new.csv',
                                skip = 2, 
                                encoding = 'UTF-8', 
                                header = T)

# 設定好正確編碼後，若讀取仍出現亂碼，請確認一下你的
# 系統語系(locale)是否正確
# 輸入 Sys.getlocale() ，如果不是 Chinese (Traditional)_Taiwan.950
# 者，請輸入下列指令設定 RStudio/R 的語系
# Sys.setlocale("LC_ALL","Chinese (Traditional)_Taiwan.950")