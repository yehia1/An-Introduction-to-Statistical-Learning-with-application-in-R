# to import library we use function library()
library(ISLR2)

head(Boston)

?Boston

# to fit simple linear regression model we use 
lm.fit <- lm(medv ~ lstat, data = Boston)
attach(Boston)

lm.fit <-lm(medv ~ lstat)

# to see the summary of the linear regression we use
summary(lm.fit)

# names() function in order to find out what other pieces of information are stored in lm.fit
names(lm.fit)

#same function
lm.fit$coefficients

coef(lm.fit)

#to get confidence interval 
confint(lm.fit)

#The predict() function can be used to produce confidence intervals and prediction intervals
predict(lm.fit, data.frame(lstat = c(4,10,15)),interval = "confidence")

predict(lm.fit, data.frame(lstat = c(4,10,15)),interval = "prediction")

# plotting the output model 
plot(lstat,medv)
abline(lm.fit)

# for adding some shapes in the plot 
# lwd for width of line
abline (lm.fit , lwd = 3, col = " red ")

# pch for different plotting symbol 
plot (lstat , medv , col = " red ")
plot (lstat , medv , pch = 20)
plot (lstat , medv , pch = "+")


# divide the plotting into a 2 x 2 grid of panels
par(mfrow = c(2,2))
plot(lm.fit)

# we use function rstudent to studetized residuals
plot( predict (lm.fit), residuals (lm.fit))

#hatvalues function test the non-linearity
plot(hatvalues (lm.fit))

#which.max() identifies the index of the largest element of a vector.
which.max( hatvalues (lm.fit))

