#The plot() function is the primary way to plot data in R.

# plot(x, y) produces a scatterplot of the numbers in x versus the numbers in y.

x = rnorm(100)
y = rnorm(100)

plot(x,y)

# for adding labels to axis 
plot (x, y, xlab = " this is the x- axis ",
      ylab = " this is the y- axis ",
      main = " Plot of X vs Y")

# to create a pdf, we use the pdf() function
pdf("Figure.pdf")
plot(x,y,col = "green")

# The function dev.off() indicates to R that we are done creating the plot.
dev.off()

# The function seq() can be used to create a sequence of numbers.

x = seq(1,10)


# contour() produces a contour plot in 3 dimensions

x <- seq (-pi, pi, length = 50)
y = x 
f <- outer(x,y,function(x,y) cos(y)/(1 + x^2))
contour(x,y,f)
contour (x, y, f, nlevels = 45, add = T)

fa <- (f - t(f)) / 2
contour (x, y, fa, nlevels = 15)


# The image() function works the same way as contour(), except it's colored
image (x, y, fa)

# Persp() can be used to produce a three-dimensional plots
persp (x, y, fa)
persp (x, y, fa , theta = 30)
persp (x, y, fa , theta = 30, phi = 20)
persp (x, y, fa , theta = 30, phi = 40)

