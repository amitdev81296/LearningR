rm(list = ls())
movies = read.csv("moviesData.csv")
View(movies)

library(dplyr)

# Filter movies based on genre comedy
moviesComedy <- filter(movies, genre == "Comedy")
View(moviesComedy)

# Filter for more than one conditions using logical operation
moviesComedyAndDrama <- filter(movies, genre == "Comedy" | genre == "Drama")
View(moviesComedyAndDrama)
moviesComedyAndDrama <- filter(movies, genre %in% c("Comedy", "Drama"))
View(moviesComedyAndDrama)

# Filter using two different attributes with Logical AND operation
moviesComIm <- filter(movies, genre=="Comedy" & imdb_rating>=7.5)
View(moviesComIm)

# Arrange the moves in ascending and descending order of IMDB Rating
moviesSortIMDBAscending <- arrange(movies, imdb_rating)
View(moviesSortIMDBAscending)
moviesSortIMDBDescending <- arrange(movies, desc(imdb_rating))
View(moviesSortIMDBDescending)

