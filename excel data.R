### readxl package ---> contains excel_sheets() and read_excel()
# excel_sheets() --> lists different sheets in the excel file
# read_xl() --> import sheets into R

library(readxl)

dir()
# [1] "excel data.R"                    "flat files.R"                    "importing-data.Rproj"           
# [4] "readr and data.table packages.R" "SampleData.xlsx" 

excel_sheets("SampleData.xlsx")
# [1] "Instructions"  "SalesOrders"   "SampleNumbers" "MyLinks"  

xldata_orders <- read_excel("SampleData.xlsx", 
                            sheet = 2)
xldata_numbers <- read_excel("SampleData.xlsx", 
                             sheet = 3)

df<- data.frame(xldata_orders,xldata_numbers)
# gives one consolidated DF

head(xldata_orders,2)
#     OrderDate       Region  Rep    Item   Units `Unit  Cost` Total
#       <dttm>              <chr>   <chr>  <chr>  <dbl>  <dbl> <dbl>
#1 2019-01-06 00:00:00 East    Jones  Pencil    95       1.99  189.
#2 2019-01-23 00:00:00 Central Kivell Binder    50       20.0   999.

xldata_orders2 <- read_excel("SampleData.xlsx", 
                            sheet = 2, col_names = c("1","2","3","4","5","6","7"))
head(xldata_orders2,2)
#  `1`       `2`    `3`   `4`    `5`   `6`       `7`   
#  <chr>     <chr>  <chr> <chr>  <chr> <chr>     <chr> 
#1 OrderDate Region Rep   Item   Units Unit Cost Total 
#2 43471     East   Jones Pencil 95    1.99      189.05


##### XLConnect package ---> comprehensive bridge between R and Excel
