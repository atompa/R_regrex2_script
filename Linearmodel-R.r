#!/usr/bin/env Rscript
args <- commandArgs(trailingOnly = TRUE)

# Re-create the plot from the last exercise
csv_data <- read.csv(args[1])
print (args[1])

png('Scatterplot_R.png')
plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     main = "Regrex Data")
dev.off()

png(filename="Linearplot_R.png")
plot(x = csv_data$x,
     y = csv_data$y,
     xlab = "x",
     ylab = "y",
     col = "black",
     main = "Regrex Data")
abline(lm(csv_data$y ~ csv_data$x,
          data = csv_data), col = "black")
dev.off()


