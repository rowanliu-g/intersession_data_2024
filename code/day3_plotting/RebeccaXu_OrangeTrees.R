#### SET UP ####
getwd()
setwd("/Users/rebeccaxu/intersession_data_2024/code/day3_plotting")

library(datasets)

#### SLEEP DATA ####
data("sleep")

class(sleep)
dim(sleep)
head(sleep)

# png("RebeccaXu_sleepdrug.png", width = 520, height = 520)
plot(sleep$group,sleep$extra, xlab = "Drug Given", 
     ylab = "Hours of Extra Sleep",
    main = "Sleep Drug")
# dev.off()

#### ORANGE DATA ####
data("Orange")

class(Orange)
dim(Orange)
head(Orange, 7)

table(Orange$Tree)

png("RebeccaXu_OrangeTrees.png", width = 520, height = 520)
plot(Orange$age, Orange$circumference, 
     col = c(rep("red", 7), rep("orange", 7), rep("black", 7), 
             rep("green", 7), rep("blue", 7)), pch = 19,
     xlab = "Age (days since 12/31/1968)", 
     ylab = "Circumference (mm)",
     main = "Orange Tree Growth")
legend("bottomright", legend = paste("Tree", 1:5),  
       col = c("red", "orange", "black", "green", "blue"), pch = 19, 
       bty = "n")
dev.off()