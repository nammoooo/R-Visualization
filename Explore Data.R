#Explore 
#Clean
#Manipulate
#Describe
#Visualize
#Analyse
#install("tidyverse")
library(tidyverse)
data() #to see inbuilt df of r
?starwars
dim(starwars) #row & col
str(starwars) # structure of df
glimpse(starwars) # summary of df
View(starwars) #to open df in sheet
head(starwars) #to view first 6 rows of df
tail(starwars) #to view last 6 rows of df
starwars$name #to filter particular colum df
-----------------------------------------------------------------
attach(starwars)
names(starwars) #to fetch the title/heading row of the df
length(starwars) #shows no of colum (variable) of df
class(hair_color) #to fetch the datatype of the element like, character/numerical etc
length(hair_color) #to fetch the no of rows (observations) of specific colum
unique(hair_color) #shows category (unique/missing value) of specific colum data
table(hair_color) # to check observation is dataset
sort(table(hair_color))
View(sort(table(hair_color), decreasing = TRUE)) #show unique df of given colum
barplot(table(eye_color), decreasing = T) # to create barplot of given colum

-------------------------------------------------
 ## #pipe operators
starwars %>% 
select(hair_color) #to create a colum %>% (add pipe operator to run each line of code)
count(hair_color) %>% 
arrange(desc(n)) %>% #for descending order
View() # to view dataset of above code

## use of braces [row, colum]
starwars [row, colum]
---------------------------------------
# to check missing values
is.na(hair_color) 
starwars[is.na(hair_color), ]
View (starwars[is.na(hair_color), ]) 
--------------------------------------
class(height)
length(height)
summary(height) #mean, median, quartile - stats of the data
boxplot(height) #boxplot shape of the data
hist(height) #histogram distribution of the data
-----------------------------------------------------------------
#Clean the data - variable types, #select & filter, find and deal with missing data, find and deal with duplicates data, recroding values.

#variable types

glimpse(starwars)
class(starwars$gender)
unique(starwars$gender)
starwars$gender <- as.factor(starwars$gender)
class(starwars$gender)
levels(starwars$gender)  
-----------------------------------------
starwars$gender <- as.factor(starwars$gender), levels=c("masculine", "feminine"))

starwars$gender <- factor ((starwars$gender), levels=c("masculine", "feminine"))
  levels(starwars$gender)
  
  #Select variables shft+ctrl+M to print pipe(%>%) operators
  starwars%>%
    select(name, height, ends_with("color")) #print all colum %>%
    names()
  #to print the given colum only
    starwars%>%
      select(name, height, ends_with("color")) %>%
      names()
  
#filter observations 
 unique(starwars$hair_color) 
 starwars %>% 
   select(name, height, ends_with("color")) %>%
   filter(hair_color %in% c("blond", "brown") & height < 180) #%>%
  
#Missing data
 
 mean(starwars$height, na.rm = TRUE) # na,rm - to remove missing value 
 
 starwars %>% 
   select(name, gender, hair_color, height)
 starwars %>% 
 
   select(name, gender, hair_color, height)
 starwars %>% na.omit() #na.omit to remove NA value from entire dataset
  
 #to get missing value from ds
 starwars %>%
  select(name, gender, hair_color, height) %>% 
 filter(!complete.cases(.))
 
 # drop_na: Drop rows containing missing values
 starwars %>% 
 select(name, gender, hair_color, height) %>% 
   filter(!complete.cases(.)) %>% 
   drop_na (height)
 -----------------------------
 
 starwars %>% 
   select(name, gender, hair_color, height) %>% 
  # drop_na (height)
 View()
 
 starwars %>% 
   select(name, gender, hair_color, height) %>% 
   filter(!complete.cases(.)) %>% 
  # mutate (hair_color = replace_na (hair_color, "none"))
  --------------------------------------
   #Duplicates
   Names <- c("Peter", "John", "Andrew", "Peter")
 Age <- c(30, 40, 50, 30)
 friends<- data.frame(Names, Age)
 duplicated(friends) #to see the duplicates
 friends [duplicated(friends), ] #filter the duplicate
 friends [!duplicated(friends), ] #remove the duplicate
 friends %>% distinct() %>% 
 View()
 distinct, mutate, select, drop_na function is not available in r
  --------------------------------------------------------- 
  #Recording variables
   starwars %>% select(name, gender) %>% 
   mutate(gender= recode(gender, "masculine" = 1, "feminine" = 2)) %>% 
   View()
 
  
  
  
  
  
  
  
  
  
  
  
  












