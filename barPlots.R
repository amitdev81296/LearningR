rm(list = ls())

movies = read.csv("moviesData.csv")

View(movies)

dim(movies)

moviesSub <- movies[1:100, ]

par(mar = c(11,5,3,2))
barplot(
  moviesSub$imdb_rating,
  ylab = "IMDB Ratinng",
  col = "blue",
  ylim = c(0,10),
  main = "Movies IMDB Ratings",
  names.arg = moviesSub$title,
  las = 2
)

plot(
  x = movies$imdb_rating,
  y = movies$audience_score,
  main = "IMDB Rating vs Audience Score",
  xlab = "IMDB Rating",
  ylab = "Audience Score",
  xlim = c(0,10),
  ylim = c(0, 100),
  col = "blue"
)

cor(movies$imdb_rating, movies$audience_score)

range(movies$imdb_rating)

movies$title[movies$imdb_rating==9.0]
