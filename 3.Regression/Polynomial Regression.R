library(ISLR2)

attach(Boston)

# we can make any function to power using the function I(x ^ 2)
lm.fit2 <- lm(medv ~ lstat + I(lstat ^ 2))
summary(lm.fit)

# anova function to further quantify the best
lm.fit <- lm(medv ~ lstat)
anova(lm.fit,lm.fit2)

par(mfrow = c(2,2))
plot(lm.fit2)

# for polynoial function is better for non-linear model 
lm.fit5 <- lm(medv ~ poly(lstat, 5))
summary(lm.fit5)

summary(lm(medv ~ log(rm)))

