#!/bin/bash

# Call png() with the name of the file we want to create
png('script_r.png')

# Re-create the plot from the last exercise
csv_data<-read.csv("regrex2.csv")


plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     main = "Regrex Data")

plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     col = "black",
     main = "Regrex Data")
  
abline(lm(csv_data$y ~ csv_data$x,
          data = csv_data), col = "black")

# Save our file and return to our interactive session
dev.off()

# Verify that we have created the file
list.files(pattern = "png")

 png(filename="faithful.png")
> plot(faithful)
> dev.off()
