#Decision making functions - if, if..else
if(iris$Sepal.Length[1]>4){
  print("The sepal length is greater than 4")
}
-----------------------------------------------
if(iris$Sepal.Length[1]<4){
  print("Sepal Length is less than 4")
} else{
  print("Sepal Lenth is greater than 4")
}

Looping statement used to repeat a particular task
#for loop is used to iterate a particular list or sequence of items
vec1 <- 1:9
for (i in vec1) {
print(i+5)
  
}
#While Loop, iterate a task till condition are met

i=1
while (i<9){
  print(i+5)
  i=i+1
}
#User defined functions - can invoke to perform a specific task
add5 <- function(x){
  print(x+5)
}
#data manipulation is the process of finding insights by filtering, aggregating and summarizing the raw data
dply - a grammar of datamanipulation which makes task very easy
nrow(euro.cross)
[1] 11
# to create file path and read a file 
laptops <- read.csv ("/Users/namratasingh/Desktop/laptops.csv")
> View(laptops)
#selects (dplyr package) (%>% pipe operators helps to connect with objects of the df )
> laptops %>% select(1,2) -> laptops_1_2
> View(laptops_1_2)
-----------------------------------------------------------
Extracting colum 3-8
laptops %>% select(3:8) -> laptops_3_8
> View(laptops_3_8)
--------------------------------------------------------
  Extracting data by colum 1-8
> laptops %>% select(1:8) -> laptops_1_8
> View(laptops_1_8)
------------------------------------------------------------
Extracting data by colum names
> laptops %>% select("Company", "Product", "Cpu") -> laptops_ctp
> View(laptops_ctp)
-----------------------------------------------------------
Extracting data start by letters of col names
laptops %>% select(starts_with("P")) -> laptops_cps
> View(laptops_cps)
--------------------------------------------------
Extracting data ends by letters of col names
laptops %>% select(ends_with("s")) -> laptops_S
> View(laptops_S)
----------------------------------------------------
#Filters - extract records from entire df on basis of condition
> laptops %>% filter(Company=="HP") -> laptops_HP
> View(laptops_HP)
---------------------------------------------
# extract by size
laptops %>% filter(Inches >15) -> laptops_inches
View(laptops_inches)
------------------------------------------------
Extracting data by using & function
> laptops %>% filter(Company=="HP" & Inches >15 ) -> laptops_HI
> View(laptops_HI)
--------------------------------------
#Combining select & filter
> laptops %>% select("Company" , "Product","TypeName") %>% filter(Company=="HP") -> laptops_all
> View(laptops_all)
-----------------------------------------------------
> laptops %>% select("Company" , "Product","TypeName", "Ram") %>% filter(Company=="HP" & Ram=="4GB") -> laptops_final2
> View(laptops_final2)
> laptops %>% select("Company" , "Product","TypeName", "Ram") %>% filter(Company=="HP" & TypeName=="Notebook") -> laptops_final3
> View(laptops_final3)
> laptops %>% select("Company" , "Product","TypeName", "Ram") %>% filter(Company=="HP" & TypeName=="Notebook" & Product=="ProBook 440") -> laptops_final4
> View( laptops_final4)
-------------------------------------------------------------
#DataVisualization(ggplot2) - process of finding patterns in data by making asthetic graphs
Data layer (dataframe), Aesthetic layer (mapping & color x, y axis), geometric layer (graphs & charts)
#to view ncol & row 
> ncol(laptops)
[1] 13
> nrow(laptops)
[1] 1303
----------------------------------------
#Histogram - Univariate analysis of continious data
ggplot(data = diamonds, aes(x=table)) + geom_histogram()
ggplot(data = diamonds) #data plotting
ggplot(data = diamonds, aes(x=price)) # data mapoing on the axis
ggplot(data = diamonds, aes(x=price)) + geom_histogram() #choosing graph & chart
ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="green") #to color histogram
ggplot(data = diamonds, aes(x=price)) + geom_histogram(fill="palegreen", col="ornage") #to add boundary color
------------------------------------------------------------------------------------------------------
#Bar plot - catogerical colum
ggplot(data = diamonds, aes(x=clarity)) + geom_bar()
ggplot(data = diamonds, aes(x=clarity,fill=clarity)) + geom_bar() #to fill each bar in different color
#Scatter - plot (geom point function) - two variate colum
ggplot(data=diamonds, aes(y=price, x=carat)) + geom_point()
ggplot(data=diamonds, aes(y=price, x=carat, col=cut)) + geom_point() #to color each scatter point (categorical data)
#BoxPlot (numeric value change with categorical value)
ggplot(data=diamonds, aes(y=carat, x=clarity)) + geom_boxplot() #numerical Y(axis) + categorical X(axis) value
ggplot(data=diamonds, aes(y=carat, x=clarity, fill=clarity)) + geom_boxplot() #to fill each box with different color
ggplot(data=diamonds, aes(y=carat, x=clarity)) + geom_boxplot(fill="palegreen4") #to fill box with same color
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() #to fill box with cut colum
#Faceting - divide one single plot into multiple
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + facet_grid(~cut)
#Theme - add to the plot (color to the chart background)
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + facet_grid(~cut) + theme(plot.background = element_rect(fill = "palegreen4"))
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + facet_grid(~cut) + theme(panel.background = element_rect(fill = "orange")) # to fill background of the chart panel
-------------------------------------------#without facet function
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + theme(panel.background = element_rect(fill = "orange")) # without facet function
ggplot(data=diamonds, aes(x=clarity, y=carat, fill=cut)) + geom_boxplot() + theme(plot.background = element_rect(fill = "orange"))