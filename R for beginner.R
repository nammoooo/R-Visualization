Four Qudrant of R, Script, console, Environment, Files
Shift+control+ 1
Shift+control + 0
Shift+Control + 2
plot(data$x, data$y)
-----------------------
read.csv(data/file path)
#View data
head(data) # 1st 6 rows
tail(data) # last 6 rows
View(data)
#Columns are variables
#Rows are observations
#Extract component of dataframe
data[1,3] #extract both (row, colum)
data[,3] # to fetch only colum(, colum)
data$colum
#msleep ggplot(datapackage)
require(packages)
#Analysis
data %>% select(name, age, height) %>% 
  filter(age < 24 & height > 1.78) %>% 
  arrange(height)
--------------------------------------------------------
#how to import data from Excel
  #environment import dataset from excel
  library(readxl)
data <- read_excel("data/file path.xlsx", 
sheet = "Position", range = "C4,G14"
na= "**")
?read_excel
----------------------------------------------
View(starwars) #tidyverse package data
  starwars %>% 
  select(gender, mass, height, species) %>% 
    filter(species=="Human") %>% 
    na.omit() %>% 
    mutate(height = height/100) %>% 
    mutate(BMI= mass/height^2) %>% 
    group_by(gender) %>% 
    summarise(Average_BMI = mean(BMI)) %>% 
    
   # summary(Average_BMI = mean(BMI))  
  ----------------------------------------------------
  Types of data - character, integar (whole number), numerical, logical, complex, relational
#change data to factor
  
 starwars$height <- as.factor(starwars$height)
 starwars$birth_year <- as.integer(starwars$birth_year)
 levels(starwars$height)
 starwars$gender <- factor( starwars$gender, levels = c("male", "female"))
starwars$DOB <- starwars$birth_year > 90
class (starwars$DOB)
str(starwars)
data("starwars")
View(starwars)
-----------------------------------------------------
#rename & reorder variables
sw <- starwars %>% 
select(name, height, mass, gender) %>% 
rename(weight = mass)
----------------------------------------------------------
#recodeing data - mutate create or rename existing variables
  sw <- starwars %>% 
  select(name, height, mass, gender) %>% 
  rename(weight = mass) %>% 
  na.omit() %>% 
  mutate(height = height/100) %>% 
  filter(gender== "masculine" | gender == "feminine") %>%
  mutate(gender = recode(gender, masculine = "male", 
                         feminine = "female")) %>%
  mutate(size = height  > 1 & weight > 75, size = if_else(size == T , "big",
                              "small" ))

-------------------------------------------------------
  filter(gender %in% c("masculine", "feminine") %>%
 -------------------------------------------------------
 #data filtering
View(msleep)
mydata <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
filter(order == "Primates"| bodywt > 20)

----------------------------------
  mydata <- msleep %>% 
  select(name, conservation, sleep_total) %>% 
  filter(!is.na(conservation)) # to remove missing value
  
  
  filter(is.na(conservation)) # missing value
  
  
  filter(near(sleep_total, 17, tol = 0.5)) #near opretors
  filter(between(sleep_total, 16, 18 )) #between operator

  filter(name %in% c("Cow", "Dog", "Horse"))
----------------------------------------------------------------
 # functions and objects
    functions are instruction
data()
View(cars)
my_age <- 12
your_agae <- 14
sum(my_age, your_agae)
plot(cars)
hist(cars$speed)
attach(cars)
hist(dist)
summary(cars)
summary(cars$speed)
class(cars)
class(cars$speed)
length(cars$speed)
unique(cars$speed)
head(cars)
tail(cars)
subset <- cars[3:6, 1:2]
?median
median(cars$speed)
median(cars$dist)
new_data <- c(2,4,6,3,NA,9)
median(new_data, na.rm = T)
glimpse(cars)
names(cars) #variable details
sort(table(speed))
View(sort(table(speed), decreasing = T))
barplot(sort(table(speed), decreasing = T))
---------------------------------------------------------------
 cars %>% 
  select(speed) %>% 
  count(speed) %>% 
  arrange(desc(n))

View(cars[is.na(speed), ]) #missing value
  
is.na(speed)
boxplot(dist)
hist(dist)
-----------------------------
#clean data
  starwars %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.)) %>% 
  drop_na(height)
  -----------------------------------------
  starwars %>% 
  select(name, gender, hair_color, height) %>% 
  drop_na(height) %>% 
View()
 ----------------------------------
  starwars %>% 
  select(name, gender, hair_color, height) %>% 
  filter(!complete.cases(.)) %>% 
  mutate(hair_color = replace_na(hair_color, "none"))
  -----------------------------------------------------
  #duplicates
  Names <- c("Peter", "John", "Andrew", "Peter")
Age <- c(20, 30, 40, 20)
friends <- data.frame (Names, Age)
duplicated(friends)

View(friends)
friends[duplicated(friends), ]
friends[duplicated(friends), ]
friends %>% distinct()

#recoding variables
starwars %>% 
  select(name, gender) %>% 
  mutate(gender= recode(gender, "masculine" = 1,
                        "feminine" = 2))



starwars %>% 
  select(name, gender) %>% 
  mutate(gender_coded= recode(gender, "masculine" = 1,
                        "feminine" = 2)) %>% 
  View()
-------------------------------------------------------------------
#ggplot
data(BOD)
View( BOD)

#Scatterplot
ggplot(data = BOD, mapping = aes(x= demand )) + geom_bar() 
ggplot(data = BOD, mapping = aes(x= Time, y = demand)) + 
  geom_point(size= 5) + geom_line(color = "red")
----------------------------------------------------
ggplot(BOD, aes(Time, demand)) + geom_point(size=3) +
  geom_line(color = "blue") 
--------------------------------------------------------
  data()
  
  CO2
  View(CO2)
  names(CO2)
  CO2 %>% 
    ggplot(aes(conc,uptake, color = Treatment)) + 
    geom_point(size=3, alpha = 0.5) +
    geom_smooth(method = lm, se = F) +
    facet_wrap(~Type) +
    labs(title = "Concentration of Co2") +
    theme_bw()
 -------------------------------------------------- 
  CO2 %>% 
    ggplot(aes(Treatment, uptake)) + 
    geom_boxplot() +
    geom_point(alpha = 0.5, aes(size = conc, color = Plant)) +
    facet_wrap(~Type)+
    coord_flip() +
    theme_minimal() +
    labs(title = "Chilled vs Non Chilled")
--------------------------------------------------------------------- 
    View(mpg)
  mpg %>% 
    filter(cty < 25) %>% 
    ggplot(aes(displ, cty)) +
    geom_point(aes(colour = drv, size = trans), alpha = 0.5) +
    geom_smooth() +
    facet_wrap(~year, nrow = 1) + 
    labs (x= "Engine size", y = "MPG in the city", 
          title = "Fuel Efficiency") +
    theme_bw()
 ---------------------------------------------------------------
    #Scatter plot
    mpg %>% 
    filter(hwy < 35) %>% 
    ggplot(aes(displ, hwy, colour = drv))+
    geom_point()+
    geom_smooth(method = lm, se = F) +
    labs(x= "Engine Size", y = "MPG on the Highway", 
         title = "Fuel Effciency")+
    theme_minimal()+
    ggsave("MPH_hwy.jpg")
 ------------------------------------------------------
    mpg %>% 
    filter(hwy < 35) %>% 
    ggplot(aes(displ, hwy))+
    geom_point(aes(colour = drv))+
    geom_smooth(method = lm, se = F) +
    labs(x= "Engine Size", y = "MPG on the Highway", 
         title = "Fuel Effciency")+
    theme_minimal()+
    #ggsave("MPH_hwy.jpg")
    -----------------------------------------------------------
   #Barchart & Histogram - single categorical
    
    data(msleep)
  View(msleep)
  msleep %>% 
    drop_na(vore) %>% 
    ggplot(aes(x = vore))+
    geom_bar(fill = "light blue")+
  #coord_flip()+
    theme_bw() +
    labs(x = "Vore", y= NULL, 
    title = "Number of Obsevations")
------------------------------------------------------------------
    #Histogram - single numerical and to look shape of data
    
    msleep %>% 
    #drop_na(awake) %>% 
    ggplot(aes(x = awake))+
    geom_histogram(binwidth = 1, fill = "light blue")+
    #coord_flip()+
    theme_bw() +
    labs(x = "Total Sleep", y= NULL, 
         title = "Total Sleep")
  --------------------------------------------------------
   #Scatter plot - two or multi variables
    msleep %>% 
    filter(bodywt < 20) %>% 
    ggplot(aes(bodywt, brainwt))+
    geom_point(aes(color = sleep_total, 
    size = awake))+
    geom_smooth()+
   theme_bw() +
    labs(x = "Body Weightt", y= "Brain Weight", 
         title = "Brain & Body Weight")
    ------------------------------------------------------
    msleep %>% 
    filter(bodywt < 20) %>% 
    ggplot(aes(bodywt, brainwt))+
    geom_point(aes(color = sleep_total, 
                   size = awake))+
    geom_smooth()+
    theme_bw() +
    labs(x = "Body Weightt", y= "Brain Weight", 
         title = "Brain & Body Weight")
 -------------------------------------------
    msleep %>% 
    filter(bodywt < 20) %>% 
    ggplot(aes(bodywt, brainwt))+
    geom_point(aes(color = sleep_total, 
                   size = awake))+
    geom_smooth(method = lm, se = F)+
    theme_bw() +
    labs(x = "Body Weightt", y= "Brain Weight", 
         title = "Brain & Body Weight")
  ------------------------------------------------------
  #linegraph  one catogorical & two numerics - y axis dependent variables
  data()  
   View(Orange) 
    Orange %>% 
      filter(Tree != "2") %>% 
      ggplot(aes(age, circumference))+
      geom_point()+
      geom_smooth()+
      facet_wrap(~Tree)+
      theme_bw()+
      labs (title = "Tree Age and Cinrcumference")
    -----------------------------------------------------------
      Orange %>% 
      filter(Tree != "1" &
             Tree != "2") %>% 
      ggplot(aes(age, circumference, color = Tree))+
      geom_point()+
      geom_smooth()+
      facet_wrap(~Tree)+
      theme_bw()+
      labs (title = "Tree Age and Cinrcumference")
    -----------------------------------------------------------
      Orange %>% 
      ggplot(aes(age, circumference))+
      geom_point()+
      geom_smooth()+
      facet_wrap(~Tree)+
      theme_bw()+
      labs (title = "Tree Age and Cinrcumference")
    -----------------------------------------------------
      Orange %>% 
      filter(Tree != "1" &
               Tree != "2") %>% 
      ggplot(aes(age, circumference, color = Tree))+
      geom_point(size = 5, alpha = 0.3)+
      geom_line(size= 1)+
      #facet_wrap(~Tree)+
      theme_bw()+
      labs (title = "Tree Age and Cinrcumference")
    ----------------------------------------------------
      Orange %>% 
      ggplot(aes(age, circumference, color = Tree))+
      #geom_point(size = 5, alpha = 0.3)+
      geom_line(size= 1)+
      #facet_wrap(~Tree)+
      theme_bw()+
      labs (title = "Tree Age and Cinrcumference")
    ------------------------------------------------------------
      #Boxplot - A categorical & a numerical variables together
      View(msleep)
    names(msleep)
      msleep %>% 
        drop_na(vore) %>% 
        ggplot(aes(vore, sleep_total))+
      geom_boxplot()+
        coord_flip()+
        theme_bw()
  -----------------------------------------------    
        View(msleep)
      names(msleep)
      msleep %>% 
        drop_na(vore) %>% 
        ggplot(aes(vore, sleep_total))+
        geom_boxplot(color = "red")+
        #coord_flip()+
        theme_bw() +
      facet_wrap(~vore)
      
  #density plot one numeric, two categories  
    
      msleep %>% 
        drop_na(vore) %>% 
        ggplot(aes(sleep_total))+
        geom_density(color = "red")+
        theme_bw()+
        facet_wrap(~vore)
      #coord_flip()
 -----------------------------------------------------   
    
        msleep %>% 
        drop_na(vore) %>% 
        #filter(vore == "herbi" | vore = "omni") %>% 
        filter(vore %in% c("carni", "omni")) %>%
        ggplot(aes(sleep_total, color = vore))+
  geom_density(alpha = 0.3)+
        theme_bw()+
      labs(title = "Sleep Data")
        #facet_wrap(~vore)
  -----------------------------------------------------
    #Barchart with multi categorical data
        View(starwars)
      starwars %>% 
        filter(hair_color == "black" |
                 hair_color == "brown") %>% 
       drop_na(sex) %>% 
        ggplot(aes(hair_color, fill = sex)) +
        geom_bar(position = "dodge", alpha = 0.5) +
        theme_bw()+
        theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank())+
        labs(title = "Gender Hair color", x= "Hair Color",
             y= "Number")
      -------------------------------------------------
        starwars %>% 
        filter(hair_color %in% c("black", "brown")) %>% 
        drop_na(sex) %>% 
        ggplot(aes(sex)) +
        geom_bar(aes(fill = sex), alpha = 0.5) +
        facet_wrap(~hair_color)+
        theme_bw()+
        theme(panel.grid.major = element_blank(), 
              panel.grid.minor = element_blank(), 
              legend.position = "none")+
        labs(title = "Gender Hair color", x= "Hair Color",
             y= "Number")
        
        
        
        
        
        
        
        
      
    
    
    
    
  
  
  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   
  


        