head(Carseats)

#generate dummy variables for qualitive values
lm.fit <- lm(Sales ~ . + Income:Advertising + Price: Age,
            data = Carseats)
summary(lm.fit)

#The contrasts() function returns the coding that R uses for the dummy variable
attach(Carseats)
contrasts(ShelveLoc)

?contrasts

# Function
LoadLibraries <- function()
{
  library(ISLR2)
  library(MASS)
  print("The Libraries have been loaded")
}

LoadLibraries()

