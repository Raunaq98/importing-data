## read.csv ---> csv files

## read.table ---> can be used for multiple file types

read.table("states.txt",
           header = TRUE,
           sep = "/",
           stringsAsFactors = FALSE)