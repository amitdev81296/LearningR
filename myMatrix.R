# Clear the work space
rm( list = ls() )

# Load the data frame from the CSV file
captaincy = read.csv("captaincy.csv")

# Display the captaincy data frame
View(captaincy)

# Creating a matrix of first three rows and played, won and lost columns
subdata <- captaincy[1:3, c("played", "won", "lost")]
matrixA <- as.matrix(subdata)
print(matrixA)

# Creating an identity matrix
values <- c(1, 0, 0, 0, 1, 0, 0, 0, 1)
matrixB <- matrix(values, nrow = 3, ncol = 3, byrow = TRUE)
matrixB

# Basic Matrix Operations
matrixA - matrixB
matrixA + matrixB
matrixA * matrixB

# Actual Multiplication of Matrices
matrixA %*% matrixB

# Transpose of a matrix
t(matrixA)

# Determinant of a matrix
det(matrixA)

# Consider two vectors c(9, 10, 11, 12) and c(13, 14, 15, 16)
vectorA = c(9, 10, 11, 12)
vectorB = c(13, 14, 15, 16)
vectorC = c(vectorA, vectorB)

# Assignment
matrixC = matrix(vectorC, nrow = 4, ncol = 2, byrow = TRUE)
matrixC
matrixD = matrix(vectorC, nrow = 4, ncol = 2, byrow = FALSE)
matrixD

solve(matrixA)

# Calculating the sum using for loop
startTime <- Sys.time()
totalSum <- 0
for(i in 1:3) {
  for(j in 1:3) {
    totalSum <- totalSum + matrixA[i, j]
  }
}
print(totalSum)
endTime <- Sys.time()
endTime - startTime

# Calculating sum using inbuilt function
startTime <- Sys.time()
sum(matrixA)
endTime <- Sys.time()
endTime - startTime

# Calculating Row Sums and Column Sums
rowSums(matrixA)
colSums(matrixA)

# Adding a new row to the captaincy data frame
captaincy <- rbind(
  captaincy,
  data.frame(
    names="Kohli",
    Y = 2016,
    played = 30,
    won = 26,
    lost = 4,
    victory = 26 / 30
  )
)
View(captaincy)

# Adding a new column to the captaincy data frame
defeat <- captaincy$lost / captaincy$played
captaincy = cbind(captaincy, defeat)
View(captaincy)

# Assignment
vectorA = c(9, 10, 11, 12)
vectorB = c(13, 14, 15, 16)
vectorC = c(17, 18, 19, 20)
dfAB = data.frame(vectorA, vectorB)
dfAB
dfABC = cbind(dfAB, vectorC)
dfABC
