# Read the data set from the csv file
captaincy <- read.csv("captaincy.csv")

#View the stored data set
View(captaincy)

# Numeric Indexing
captaincy[3, ]
captaincy[3]
captaincy[c(2,3), ]

# Logical Indexing
captaincy[captaincy$played==25, ]
captaincy[c("names", "won")]

# Slicing the data frame
subData <- subset(captaincy, victory>0.3, select = c("names", "played", "victory"))
print(subData)

captaincy[[3]][4]

subData <- subset(captaincy, played>40, select=c("names"))
subData

subData <- subset(captaincy, lost<14, select=c("names"))
subData