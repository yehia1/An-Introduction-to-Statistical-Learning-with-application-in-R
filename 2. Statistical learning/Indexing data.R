A <- matrix(1:16,4,4)
A

# Using indexex
A[2,3]

# select multiple columns from a matrix this uses scaler multiplication with matrix we imported.
A[c(1, 3), c(2, 4)]

A[1:3, 2:4]

A[1:2,]
# The use of a negative sign - in the index tells R to keep all rows or columns
#except those indicated in the index

A[-c(1, 3), ]

# dim() for matrix dimension
dim(A)
