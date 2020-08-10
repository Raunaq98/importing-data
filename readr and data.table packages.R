### reader package ---> contains read_csv() and read_tsv()
# read_csv() ---> makes a tibble from comma separated values
# read_tsv() ---> makes a tibble from tab separated values

library(readr)

read_csv("states.csv")
read_tsv("states.txt")



### data.table package ---> fread()

library(data.table)

fread("states.csv")
# no need to specify sep, header etc

