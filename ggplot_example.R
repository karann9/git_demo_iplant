#ggplot learning code
#Karan Nandwani karan@email.arizona.edu
#Feb 22, 2015

install.packages("ggplot2",dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

head(iris) #iris is an inbuild default dataset
library("ggplot2") #not only do we need to install but load libraries
library("plyr")
library("ggthemes")
library("reshape2")
#ggplot needs a data vaiable
myplot <- ggplot(data=iris, aes(x= Sepal.Length, y = Sepal.Width)) + geom_point()
summary (myplot) #aes is aesthetics
myplot #since we stored the stuff in this variable, running this line will generate the plot
myiris <- iris #doing this brings iris into env tab on the right so that
#(cont.) we can see the data set in env tab

#always use gplot, never use qplot

#aes is mapping, the size below is setting
ggplot(data=iris, aes(x= Sepal.Length, y = Sepal.Width, color=Species)) + geom_point(size = 4)
#notice the color = species, that is intersting, check out the output


ggplot(data=iris, aes(x= Sepal.Length, y = Sepal.Width, color=Species)) + 
  geom_point(aes(shape=Species), size = 4)



dim(diamonds) #this is a new dataset and dim tell u rows and columns

#create a sub set of diamonds
d2 <- diamonds[sample(1:dim(diamonds)[1],1000),]
#create a plot from that subset
ggplot(data=d2, aes(x=carat, y=price, color=color, shape = cut)) + geom_point()

#Section 5 - talking about stats
#eg. binning for a histogram or fitting a linear model

#loading the default MASS lib
library(MASS)

#plot from birthwt, aes-factor forces race to act as a categorical var and not cont
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()

birthwt_plot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(birthwt_plot)

#Section 6 - facets
