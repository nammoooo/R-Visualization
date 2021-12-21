# histogram
ggplot(data = diamonds,aes(x=price)) + geom_histogram(fill="green",col="red") 
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
ggplot(data = diamonds,aes(x=carat,y=price,col="clarity")) + geom_point (size=3)

#Boxplot - numerical & categorical distribution
ggplot(data = diamonds,aes(x=clarity,y=carat,col=cut)) + geom_boxplot()
ggplot(data = diamonds,aes(x=clarity,y=carat,fill=clarity)) + geom_boxplot()
ggplot(data = diamonds,aes(x=clarity,y=carat)) + geom_boxplot()
ggplot(data = diamonds,aes(x=cut,y=depth,col=clarity)) + geom_boxplot(fill="green")

#lineplot - Bivariate distribution
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_line() 
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_line(col="red") 

#Scatterplot - lineplot 
ggplot(data = diamonds,aes(x=carat,y=price, col=carat)) + geom_line(col="sandybrown") + geom_point()
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_line() + geom_point()
#geom-smooth
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_point(col="springgreen") + geom_smooth(col="red")
ggplot(data = diamonds,aes(x=carat,y=price)) + geom_line() + geom_point() + geom_smooth()
#Area plot
ggplot(data = diamonds,aes(x=price)) + geom_area(stat = "bin")
ggplot(data = diamonds,aes(x=price)) + geom_area(stat = "bin", bins=40)
ggplot(data = diamonds,aes(x=price,fill=color)) + geom_area(stat = "bin", bins=100)
#Facet-grid
ggplot(data = diamonds,aes(x=price,fill=cut)) + geom_area(stat = "bin") +facet_grid(~cut)
#Theme Layer
> t1<-ggplot(data = diamonds,aes(y=carat,x=depth)) + geom_point(col="springgreen") + geom_smooth(col="red")
> t2<- t1 + theme(panel.background = element_rect(fill = "peachpuff"))
> t3<-t2 + theme(plot.background = element_rect(fill = "salmon"))
#plot_ly
plot_ly(data = diamonds, x= ~cut, y= ~price)
plot_ly(data = diamonds, x= ~cut, y= ~price, color = ~cut)
plot_ly(data = diamonds, x= ~cut, type = "histogram", color = ~cut
