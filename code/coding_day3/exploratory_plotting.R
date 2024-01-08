###SETUP###
getwd()
library(viridisLite)

###DATA###
data("iris")
class(iris)
dim(iris)
head(iris)

###PLOTTING###
png('Irises Data', width = 500, height = 500)
col.species.unique <- viridisLite::viridis(3)
col.species <- col.species.unique[as.factor(iris$Species)]
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = .5, col = col.species, 
     xlab = "Petal Length", ylab = "Petal Width", 
     main = "Petal Length and Width of Irises")
dev.off()