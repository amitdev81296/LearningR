myVector <- c(1:5)
myVector
myMatrix <- matrix(c(1:15), nrow = 5, ncol = 3, byrow = TRUE)
myMatrix
myDataset <- iris[c(1:2, 51:51, 100:102), ]
myDataset

myList <- list(myVector, myMatrix, myDataset)
names(myList) <- c("vector", "matrix", "dataset")
myList
myList$vector
myList$matrix
myList$dataset

myList[3]
myList[[3]]

class(myList[3])
class(myList[[3]])

# Assignment
myVector = c(1:5)
myMatrix = matrix(c(1:15), nrow = 5, ncol = 3, byrow = TRUE)
myDataset = iris[c(1:10), ]
myList = list(myVector, myMatrix, myDataset)
names(myList) <- c("vector", "matrix", "iris")

myList$iris
myList[3]
myList[[3]]
