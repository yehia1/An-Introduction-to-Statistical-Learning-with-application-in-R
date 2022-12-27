library(ISLR2)
names(Smarket)

dim(Smarket)

summary(Smarket)

#The cor() function produces a matrix that contains all of the pairwise
#correlations among the predictors in a data set
cor(Smarket[,-9])

attach(Smarket)
plot(Volume)

# glm used to fit linear models including logistic regression
# family = bionmial for choosing logistic
glm.fits <- glm(
  Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume,
  data = Smarket, family = binomial
)
summary(glm.fits)

# We use the coef() function in order to access just the coefficients for this fitted model.
coef(glm.fits)

#we can use summary for specific coeffient like p-value
summary (glm.fits)$coef[, 4]

# predict function used for fitted model
glm.probs <- predict(glm.fits, type = 'response')
glm.probs[1:10]

#function indicates that R has created a dummy variable with a 1 for Up
contrasts (Direction)

#create a vector of class predictions based on whether the predicted probability of a market
#increase is greater than or less than 0.5.
glm.pred <- rep(" Down ", 1250)
glm.pred[glm.probs > 0.5] = 'up'

#table() used to produce a confusion matrix
table(glm.pred,Direction)

(507+145) / 1250

mean(glm.pred == Direction)

#new model with only data less than 2005
train <- (Year < 2005)
Smarket.2005 <- Smarket[!train, ]
dim(Smarket.2005)

Direction.2005 <- Direction[!train]

glm.fits <- glm(
  Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume,
  data = Smarket, family = binomial, subset = train
)
glm.probs <- predict(glm.fits, Smarket.2005, type = 'response')

glm.pred <- rep('Down', 252)

glm.pred[glm.probs > 0.5] <- 'Up'

table(glm.pred, Direction.2005)

mean(glm.pred == Direction.2005)

mean(glm.pred != Direction.2005)

# New model with less predictors 

glm.fits <- glm(Direction ~ Lag1 + Lag2, data = Smarket,
                family = binomial, subset = train)
glm.probs <- predict(glm.fits, Smarket.2005, type = 'response')

glm.pred <- rep('Down', 252)

glm.pred[glm.probs > 0.5] <- 'Up'

table (glm.pred, Direction.2005)

mean(glm.pred == Direction.2005)


