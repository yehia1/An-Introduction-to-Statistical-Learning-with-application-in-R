
# Fitting multiple linear regression model
lm.fit <- lm(medv ~ lstat + age , data = Boston)
summary(lm.fit)

# Fit all variables we use 
lm.fit <- lm(medv ~ ., data = Boston)
summary(lm.fit)

# vif function to check for collinearity
library(car)
vif(lm.fit)

#to remove one variable 
lm.fit1 <- lm(medv ~ . - age, data = Boston)
summary(lm.fit1)

# to save on the original model 
lm.fit1 <- update(lm.fit, ~. -age)

# adding interaction terms 
summary(lm(medv~ lstat * age, data = Boston))
