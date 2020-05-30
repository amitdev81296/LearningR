rm(list = ls())

movies <- read.csv("moviesData.csv")

View(movies)

dim(movies)

hist(movies$runtime)

hist(
  movies$runtime,
  main = "Distribution of Film Runtimes",
  xlab = "Film Runtimes",
  xlim = c(0, 300),
  col = "blue",
  breaks = 4
)

genreCount <- table(movies$genre)
View(genreCount)

pie(genreCount)
pie(
  genreCount,
  main = "Film Genre Distribution",
  border = "blue",
  col = "orange"
)

jpeg("OurFirstPlot.jpg", width = 700, height = 350)
pie(genreCount)
dev.off()

# Assignment
hist(movies$imdb_num_votes)
mpaa_rating_count = table(movies$mpaa_rating)
View(mpaa_rating_count)
pie(mpaa_rating_count)


