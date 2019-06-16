# 資料的輸出入
spcover <- read.csv('ecoinformatics_ex1026.csv',
                    sep = ',', header = TRUE)
# read.table
spcover$species
spcover$cover
summary(spcover)
library(data.table)
spcover <- fread('C:\\Desktop\\ecoinformatics_ex1026.csv')
# 使用 file.choose() 用檔案總管開啟
spcover <- fread(file.choose())

# 使用 fread 開啟大檔案速度會比 read.csv 快
ptm <- proc.time()
test1 <- read.csv('~/Downloads/cwb2006-2015/raw/200601_auto_hr.txt', skip=73)
proc.time() - ptm

ptm <- proc.time()
test1 <- fread('~/Downloads/cwb2006-2015/raw/200601_auto_hr.txt', skip=73)
proc.time() - ptm