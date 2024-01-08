##### SETUP ##### 
getwd()
setwd("/Users/lylaatta/Documents/GitHub/intersession_data_2024/code/day3_plotting")

library(datasets)
library(viridis)

#### DATA #### 
data("iris")

class(iris)
dim(iris)
head(iris)

table(iris$Species)
table(iris[,5])
table(iris[,"Species"])

#### PLOTTING ####
## relationship between sepal length and sepal width 
plot(iris$Sepal.Length, iris$Sepal.Width)


# png('iris_sepal.png', width = 520, height = 520)
plot(iris[,c(1,2)], pch = 16, cex = 0.75, col = 'blue',
     xlab = "Sepal Length (cm)", ylab = 'Sepal Width (cm)', 
     main = 'Iris Sepal Characteristics')
# dev.off()

plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = 'blue',
     xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)', 
     main = 'Iris Petal Characteristics')

#plotting side by side 
par(mfrow = c(1,2))
plot(iris[,c(1,2)], pch = 16, cex = 0.75, col = 'blue',
     xlab = "Sepal Length (cm)", ylab = 'Sepal Width (cm)', 
     main = 'Iris Sepal Characteristics')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = 'blue',
     xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)', 
     main = 'Iris Petal Characteristics')

#color by species 
col.species.unique <- viridis::viridis(3)
col.species <- col.species.unique[as.factor(iris$Species)]

png('iris_species.png', width = 1000, height = 520)
par(mfrow = c(1,2))
plot(iris[,c(1,2)], pch = 16, cex = 0.75, col = col.species,
     xlab = "Sepal Length (cm)", ylab = 'Sepal Width (cm)', 
     main = 'Iris Sepal Characteristics')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = col.species,
     xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)', 
     main = 'Iris Petal Characteristics')
dev.off()















