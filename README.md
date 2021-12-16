# R-Visualization

# GG plots – Grammar of graphics 
<li>**Data layer** – data which visualization to be done
<li>**Aesthetics layer** – metrics/scales onto which data has to be mapped – X, Y, shape, size, col
<li>**Geometric layer** – Type of plots/geometry which has to be created – histogram, bar, box etc
<li>**Facet layer** – dividing the plot into subgroups/facets -
<li>**Theme layer** – adding themes to the final layer




# histogram
ggplot(data = diamonds,aes(x=price)) + geom_histogram(fill="green",col="red") 
# Setting binwidth
ggplot(data = diamonds,aes(x=price)) + geom_histogram(fill="green",col="red",bins = 10)
# bar plot
ggplot(data = diamonds,aes(x=cut)) + geom_bar ()
ggplot(data = diamonds,aes(x=cut)) + geom_bar (fill="palegreen",col="orange")

table(diamonds$cut)
Fair      Good Very Good   Premium     Ideal 
1610      4906     12082     13791     21551 
# scatter-plot
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_point()
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_point (col="orange")
# continous numerical value scatter-plot #
ggplot(data = diamonds,aes(x=carat,y=price,col=price)) + geom_point ()
# categorical data value scatter-plot #
ggplot(data = diamonds,aes(x=carat,y=price,col=cut)) + geom_point ()

# Boxplot - numerical & categorical distribution
ggplot(data = diamonds,aes(x=clarity,y=carat,col=cut)) + geom_boxplot()
ggplot(data = diamonds,aes(x=clarity,y=carat,fill=clarity)) + geom_boxplot()
ggplot(data = diamonds,aes(x=clarity,y=carat)) + geom_boxplot()

