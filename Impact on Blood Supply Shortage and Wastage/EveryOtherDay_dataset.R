data <- read.csv("Supply_and_Demand_Dataset.csv.csv")

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

# save as csv file.
# Add location before the csv file name. Hid my file location for presentation
# purpose

write.csv(data,
          'CSupply.csv', row.names = FALSE)


