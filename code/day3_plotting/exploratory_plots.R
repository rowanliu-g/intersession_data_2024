##### SETUP #####
getwd()
library(datasets)
library(viridis)

##### DATA #####
# explore data
data("iris")
class(iris)
dim(iris)
head(iris)

# subset of dataframe
table(iris$Species)
table(iris[,5])
table(iris[,"Species"])

#### PLOTTING ####
# relationship between sepal length and sepal width
plot(iris$Sepal.Length, iris$Sepal.Width)
# R is 1 based
png("iris_sepal.png", width = 520, height = 520)
plot(iris[,c(1,2)], pch = 15, cex = 0.75, col = "red", xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)", main = "Iris Sepal Characteristics")

# ctrl shift c to comment out
# dev.off()

plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = "blue", xlab = "Petal Length (cm)", ylab = "Petal Width (cm)", main = "Iris Petal Characteristics")

# side by side plot
par(mfrow = c(1,2))
plot(iris[,c(1,2)], pch = 15, cex = 0.75, col = "red", xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)", main = "Iris Sepal Characteristics")
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = "blue", xlab = "Petal Length (cm)", ylab = "Petal Width (cm)", main = "Iris Petal Characteristics")

# color by species
col.species.unique <- viridis::viridis(3)
col.species <- col.species.unique[as.factor(iris$Species)]


par(mfrow = c(1,1))
plot(iris[,c(1,2)], pch = 15, cex = 0.75, col = col.species.unique, xlab = "Sepal Length (cm)", ylab = "Sepal Width (cm)", main = "Iris Sepal Characteristics")
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.75, col = col.species, xlab = "Petal Length (cm)", ylab = "Petal Width (cm)", main = "Iris Petal Characteristics")



# head(as.factor(iris$Species))
# head(as.numeric(as.factor(iris$Species)))