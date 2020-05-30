# Plotting from movies
movies = read.csv("moviesData.csv")
ggplot(
  data = movies,
  mapping = aes(
    x = critics_score,
    y = audience_score
  )
) + geom_point()

# Coloring movies from different genres (unique color to each genre)
ggplot(
  data = movies,
  mapping = aes(
    x = critics_score,
    y = audience_score,
    color = genre
  )
) + geom_point()

# Bar charts using ggplot
View(movies)
ggplot(
  data = movies,
  mapping = aes(
    x = mpaa_rating,
    fill = genre
  )
) + geom_bar() + labs(y="Rating Count", title = "Count of MPAA Rating")

# Histogram plotting
ggplot(
  data = movies,
  mapping = aes(
    x = runtime
  )
) + geom_histogram() + labs(x="Movie Runtime", title="Runtime Distribution")

# Assignment
ggplot(
  data = mtcars,
  mapping = aes(
    x = cyl
  )
) + 
  geom_bar(width = 0.5, fill = "#FFB3A3") +
  labs(x = "Cylinder Counts", y = "No. of Cars", title = "Distribution of Cylinders")
  
