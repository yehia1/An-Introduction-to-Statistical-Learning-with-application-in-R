# explore the data
plot(Auto$cylinders,Auto$mpg)
attach(Auto)
plot(cylinders,mpg)

# to treat cylinders as qualtive data as it got only small numbers
cylinders <- as.factor(cylinders)

plot(cylinders,mpg)

plot(cylinders,mpg, col = 'red')

plot(cylinders,mpg, col = 'red', varwidth = T)

plot(cylinders,mpg, col = 'red', varwidth = T, horizontal = T)

plot(cylinders,mpg, col = 'red'
     , varwidth = T, horizontal = T
     ,xlab = 'cylinders',ylab = 'mpg')

# Histogram plot

hist(mpg)
hist (mpg , col = 2,breaks = 15)

# pairs function generates pairs of scatter plots

pairs(Auto)

# identify function used in plots choose some points then press escape
plot (horsepower , mpg)
identify (horsepower , mpg , name)

#summary() function produces a numerical summary of each variable in dataset
summary(Auto)

summary(mpg)
q()
