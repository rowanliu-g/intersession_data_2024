#### SETUP ####
getwd()
setwd('/Users/iriskwon/Documents/GitHub/intersession_data_2024/code/coding_day4/')
library(datasets)
library(viridis)

#install.packages('ggplot2')
library(ggplot2)
#install.packages('gridExtra')
library(gridExtra)
data("mpg")

#### DATA ####
class(mpg)
dim(mpg)
head(mpg)
summary(mpg)

#### PLOTTING ####

## Code Template
# plt <- ggplot(data = <DATA>) + 
#  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>)) +
#  labs(title = <"TITLE">, x= <"X AXIS LABEL">, y= <"Y AXIS LABEL"> )

#Example

## plot scatter plot with 
## cty and hwy encoded as positions on x and y axis 
## and drv encoded as shape

plt <- ggplot(data = mpg) + 
  geom_point(mapping = aes(x=cty, y=hwy, shape=drv)) +
  labs(title = "Vehicle mpg and drive", x= "mpg in city", y= "mpg on highway" )

plt

## plot histogram
## cty as position on x axis 
## set breaks of histogram starting at 0, ending at 35, every 5th number

plt2 <- ggplot(data = mpg) +
  geom_histogram(mapping = aes(x=cty), breaks = seq(from=0, to=35, by=5))

plt2

## plot scatter plot with 
## cty and hwy encoded as positions on x and y axis 
## and quantitative variable cyl encoded as color/hue

plt3 <- ggplot(data = mpg) +
  geom_point(mapping = aes(x=cty, y=hwy, color = cyl)) +
  scale_color_viridis() +
  labs(title = "Vehicle mpg and engine type", x= "mpg in city", y= "mpg on highway", color= "# of cylinders" ) +
  theme_classic()

plt3

## plot scatter plot with 
## cty and hwy encoded as positions on x and y axis 
## and categorical variable class encoded as color/hue

plt4 <- ggplot(data = mpg) +
  geom_point(mapping = aes(x=cty, y=hwy, color = class)) +
  scale_color_viridis(discrete = TRUE, option = "plasma") +
  labs(title = "Vehicle mpg and engine type", x= "mpg in city", y= "mpg on highway", color= "class" ) +
  theme_classic()

plt4

## multi-panel visualizations
grid.arrange(plt3, plt4, ncol=2, nrow=1)

## save figure
png('vehicle_characteristics.png', width = 10, height = 5, units = "in", res = 400)
grid.arrange(plt3, plt4, ncol=2, nrow=1)
dev.off()

### IRIS WORK ###

##load new data
growth <- read.csv('https://raw.githubusercontent.com/kpclifton/intersession_data_2023/main/code/day4/cyanobacteria_growth.csv')

class(growth)
head(growth)
plt5 <- ggplot(data = growth) + geom_point(mapping = aes(x=Hours, y=OD, color = Trial)) + 
  scale_color_viridis(discrete = TRUE, option = "plasma") + 
  labs(title = "OD vs Hours", x = "Hours", y = "OD", color = "Trial") +
  theme_classic()
plt5

## save figure 
png('OD_vs_hours.png', width = 10, height = 5, units = "in", res = 400)
grid.arrange(plt5)
dev.off()
