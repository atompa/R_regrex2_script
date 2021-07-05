#!/bin/bash
png ("Script-R.png")

csv_data<-read.csv("regrex2.csv")
print(csv_data)


plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     col = "black",
     main = "Regrex Data")
  
abline(lm(csv_data$y ~ csv_data$x,
          data = csv_data), col = "black")

dev.off ()
list.files(pattern = "png")
