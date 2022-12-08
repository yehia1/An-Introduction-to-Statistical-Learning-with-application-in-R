# change dir using Session -> set working directory -> Choose directory.

# read.table() imports a data set into R
Auto <- read.table("Auto.data")
View(Auto)
head(Auto)

# using header argument to make the first row as headers
# na.strings to count any string with ? as Null value
# stringsAsfactors to set any string as qualtive data
Auto<- read.table("Auto.data",header = TRUE,na.strings = "?"
                  ,stringsAsFactors = TRUE)
head(Auto)

dim(Auto)

#to remove nulls we use na.omit(data)
Auto <- na.omit(Auto)
dim(Auto)

# names to check variables names
names(Auto)
