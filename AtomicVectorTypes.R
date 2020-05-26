testData <- TRUE
class(testData)

testData <- "TRUE"
class(testData)

testData <- 12
class(testData)

testData <- 12.5
class(testData)

testData <- as.integer(12)
class(testData)

testData <- 12L
class(testData)

testData <- complex(real = 2, imaginary = 4)
print(testData)
class(testData)

testData < "R Programming Language"
class(testData)

testData <- charToRaw("Hello!")
print(testData)
class(testData)

testData <- seq(from=1, to=10, by=0.5)
paste("The length of testData is", length(testData))