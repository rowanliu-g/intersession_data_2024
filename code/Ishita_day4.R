### SETUP ###
getwd()
library(datasets)
library(viridis)

data("Nile")

## DATA ##
class(Nile)
dim(Nile)
head(Nile)
summary(Nile)

## PLOTTING ## 
par(mfrow = c(1,1))
plot(Nile, breaks = 10, pch = 16, cex = 1.5, col = 'blue',
     main = 'Measurement of annual flow of Nile from 1871-1970', 
     xlab = 'Flow Rate Measured in 10^8m^3', ylab = 'Frequency of Flow')


freq_table <- table(Nile)
print(freq_table)


dev.off()
