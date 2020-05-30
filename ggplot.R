library(ggplot2)

# Clearing the environment namespace
rm(list = ls())

#Loading the movies dataframe
movies = read.csv("moviesData.csv")

# Potting a sine curve by taking equally spaced samples
x <- seq(-pi, pi, 0.1)
y <- sin(x)
plot(
  x,
  y,
  main = "Plotting The Sinusoidal Curve",
  ylab = "sin(x)",
  type = "l",
  col = "blue"
)

# Plotting Two Graphs in Same Window
x <- seq(-pi, pi, 0.1)
y <- sin(x)
plot(
  x,
  y,
  main = "Plotting Cosine and Sine Curves",
  ylab = "",
  type = "l",
  col = "blue"
)
lines(
  x,
  cos(x),
  col = "red"
)
legend(
  "topleft",
  c("sin(x)", "cos(x)"),
  fill = c("blue", "red")
)

# Exploring ggplot with movies dataframe
View(movies)
ggplot(
  data = movies,
  mapping = aes(
    x = critics_score,
    y = audience_score
  )
) +
geom_point()
ggsave("FirstGGPlot.png")

# Assignment
View(mtcars)
mtcars$mpg
mtcars$wt

ggplot(
  data = mtcars,
  mapping = aes(
    x = mpg,
    y = wt
  )
) + geom_point()
ggsave("Mtcars_mpg_vs_wt.png")
