#This first Chapter with basics commands

#R is function based programming language

# to make vector with numbers we use the function c which refers to concate

x <- c(1, 3, 5, 2)
x
# same formula 
x = c(1,6,2)
x

y = c(1,4,3)
# to check array length
length(x)

# to add 2 matrix together
x + y

#The ls() function allows us to look at a list of all of the objects,
ls()

# The rm() function can be used to delete any that we don't want 
rm(x,y)
ls()

# It’s also possible to remove all objects at once:
rm(list = ls())

#The matrix() function can be used to create a matrix of numbers
?matrix

x = matrix(data = c(1,2,3,4),nrow = 2,ncol = 2)
x
# same formula 
x <- matrix(c(1,2,3,4),2,2)
x

# by row argument used to fill by fows instead of columns 
matrix(c(1,2,3,4),2,2,byrow = TRUE)

# using math function to matrix
sqrt(x)

#The rnorm() function generates a vector of random normal variables
x <- rnorm(50)
# sd stands for standard deviation.
y <- x + rnorm(50, mean = 50, sd = 0.23)
cor(x,y)

# for numbers of random numbers
set.seed(5000)
rnorm(6)

