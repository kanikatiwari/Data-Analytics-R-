#importing files
#Functions to read files in tabular format
#Function      Description
#read.table()  main function to read file in table format
#read.csv()    reads csv files separated by a comma ","
#read.csv2()   reads csv files separated by a semicolon ";"
#read.delim()  reads files separated by tabs "\t"
#read.delim2() similar to read.delim()
#read.fwf()    read fixed width format file

#importing a CSV format file
#csv files- used to store tabular data
#CSV stands for "comma-separated values"
x=read.csv("data.csv")
x
x=read.csv("data.csv", header = T) #if marked true, first line is will be read as labels, otherwise as a plain text

# abc radio stations data URL
abc = "http://www.abc.net.au/local/data/public/stations/abc-local-radio.csv"

# read data from URL
radio = read.table(abc, header = TRUE, sep = ",", stringsAsFactors = FALSE)
View(radio)

#df = ("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/scores_timed.csv", header = TRUE, quote="\"", stringsAsFactors= TRUE, strip.white = TRUE)

#importing a text file
y=read.table('data_t.txt')
y
y=read.table("data_t.txt", header = T) #if marked true, first line is 
y

#importing an excel file
install.packages('xlsx')
library(xlsx)
efile= read.xlsx('data_e.xlsx',sheetIndex= 1, sheetName = 'data_t')
efile
efile1= read.xlsx('data_e.xlsx',2)
efile1
?read.xlsx
#read.xlsx(file, sheetIndex, sheetName=NULL, rowIndex=NULL,
#startRow=NULL, endRow=NULL, colIndex=NULL,
#as.data.frame=TRUE, header=TRUE, colClasses=NA,
#keepFormulas=FALSE, encoding="unknown", password=NULL, ...)

#importing file from web
url="https://docs.google.com/spreadsheets/d/1wre_VU1geys_cDPljBHm26BHof3hlttkJSapQXUIzEg/edit#gid=0"
install.packages('gsheet')
library(gsheet)
g_data=as.data.frame(gsheet2tbl(url))
g_data

#exporting the file to other formats
data()
?write.csv
write.csv(k, file= "g_data")

k
write.csv(x=mtcars, file='data/mtcars1.csv')
write.csv(x=mtcars, file='data/mtcars2.csv', row.names = F)
#save it data folder all csv files
