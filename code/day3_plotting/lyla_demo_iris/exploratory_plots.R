#### SETUP ####
library(datasets)
## see more data sets at https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html
library(viridis)

getwd()
setwd('/Users/lylaatta/Documents/GitHub/intersession_data_2023/week1/code_day3')

#### DATA ####
data("iris")

head(iris)
class(iris)

#### PLOTTING ####
## plot sepal characteristics 
# png('iris1.png', width = 520, height = 520)
par(mfrow = c(1,1))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 2, bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
# dev.off()

## plot petal chars
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

## plot side by side 
png('iris2.png', width = 600, height = 300)
par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n',
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')
dev.off()

## species 
head(iris$Species)
unique(iris$Species)

col.species.unique <- viridis::viridis(length(unique(iris$Species)))
cols.species <- col.species.unique[as.factor(iris$Species)]

table(iris$Species)
table(cols.species)

png('iris3.png', width = 600, height = 300)
par(mfrow = c(1,2))
plot(iris$Sepal.Length, iris$Sepal.Width, pch = 16, cex = 0.7, bty = 'n', col = cols.species,
     main = 'Sepal Characteristics', xlab = 'Sepal Length (cm)', ylab = 'Sepal Width (cm)')
plot(iris$Petal.Length, iris$Petal.Width, pch = 16, cex = 0.7, bty = 'n', col  = cols.species,
     main = 'Petal Characteristics', xlab = 'Petal Length (cm)', ylab = 'Petal Width (cm)')

legend.lab <- unique(iris$Species)
legend.col <- unique(cols.species)

legend(x=4,y=0.9, legend = legend.lab, col = legend.col, pch = 16)

dev.off()

##make legend 


par(mfrow = c(3,1))
hist(iris$Petal.Length[iris$Species=='setosa'])
hist(iris$Petal.Length[iris$Species=='versicolor'])
hist(iris$Petal.Length[iris$Species=='virginica'])


###
