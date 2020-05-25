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

matrixC = matrix(vectorC, nrow = 4, ncol = 2, byrow = TRUE)
matrixC
matrixD = matrix(vectorC, nrow = 4, ncol = 2, byrow = FALSE)
matrixD
