data <- read.csv("Assignment8-Data.csv")

library(tidyverse)

data$period <- 1:nrow(data)

# For every odd number (every other day) supply blood
newsupply <- vector(mode="numeric")
for (i in 1:nrow(data)){
  if((data$period[i]%%2)!=0){
    data$newsupply[i] <- data$Supply[i]+data$Supply[i+1]
  }
  else{
    data$newsupply[i] <- 0
  }
}

write.csv(data,
          'C:/Users/chang/Desktop/MMSc/MSCI 719 - Operations Analytics/Ass 8/CSupply.csv', row.names = FALSE)


