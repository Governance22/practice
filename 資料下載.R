#下載github檔案
download.file ("https://raw.githubusercontent.com/mutolisp/ecoinformatics_course/master/data/apgiv_families.csv", destfile = "/Users/lucy/Desktop/R 練習/download data/apgiv_families.csv", method = 'curl')

#建立檔案
dir.create("data")




download.file ("https://gist.githubusercontent.com/mutolisp/252b751ce7235461274ca5f339043ad4/raw/3d0597dce2bfa5311d856f02c8f484cd0a76b82e/ecoinformatics_ex1026.r", destfile = "/Users/lucy/Desktop/R 練習/檔案的輸出入練習-基本的輸入資料-練習R Script-ecoinformatics_ex1026.r", method = 'curl')

download.file ("https://gist.githubusercontent.com/mutolisp/45e7df1238a329f9aa47262283c232c8/raw/8490e7d00a8fbf898718b4008b5beb1a9e9e895b/ecoinformatics_ex1103.r", destfile = "/Users/lucy/Desktop/R 練習/檔案的輸出入練習-處理有中文的外部資料輸入-練習R Script-ecoinformatics_ex1103.r", method = 'curl')




