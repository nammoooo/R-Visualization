> read.csv("/Users/namratasingh/Desktop/pokemon.csv") -> pokemon
> head(pokemon) #first 6 rows
#arranging numerical data/date in order 
pokemon <- arrange(pokemon, against_bug)
tail(pokemon) #last 6 rows
#lineplot

plot_ly(pokemon, x=~sp_defense, y=~name, type='scatter', mode='lines')
plot_ly(pokemon, x=~sp_defense, y=~generation, type='scatter', mode='markers')
names(pokemon)


##
Data visualization
data(), mapping (aesthetics), geometric representation(), statistics, facet, coordinate space, labels, theme()
data() #to get innbuilt datset in R
?BOD # description of dataset
-------------------------------------------------------------------------
#to create scatter + line plot
ggplot(data = BOD, 
       mapping = aes(x=Time, 
                     y=demand)) + 
  geom_point(size= 5) +
  geom_line(colour ="red")
..................................................................
##
ggplot(BOD, aes(Time, demand)) +
  geom_point(size= 3) +
  geom_line(color = "red")
---------------------------------------------------------------
CO2 #data
CO2 %>%
  ggplot(aes(conc, uptake,
             color= Treatment))+
  geom_point(size = 3, alpha = 0.5) +
  geom_smooth(method = lm, se = F) +
  facet_wrap (~Type) +
  labs(title = "Concentration of CO2") +
  theme_bw()
--------------------------------------------------------------------
#boxplot + scatterplot -  to color specific element
CO2 %>%
ggplot(aes(Treatment, uptake)) +
geom_boxplot()+ 
  geom_point(alpha= 0.5,
             aes(size= conc, #increase size oof point
                 color= Plant)) + #to color specific element
  facet_wrap(~type)+
  coord_flip() +
  theme_bw()

#to add facet, flip and theme
CO2 %>%
ggplot(aes(Treatment, uptake)) +
geom_boxplot()+ 
geom_point(alpha= 0.5,
aes(size= conc, 
color= Plant)) + 
  facet_wrap(~Type) +
coord_flip() +
 theme_bw() +
  labs(title = "Chilled vs Non-Chilled")
## to add straight line
mpg %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(color= drv,
                 size= trans),
             alpha = 0.5 ) +
  geom_smooth(method = lm)
  
## to add smooth line
mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(color= drv,
                 size= trans),
             alpha = 0.5 ) +
  geom_smooth() +
  facet_wrap(~year, nrow = 1 ) +
  labs(x=" Engine size", y= "MPG in the city", title = "Fuel Efficiency")
theme_classic()


mpg %>%
  filter(cty < 25) %>%
  ggplot(aes(displ, cty))+
  geom_point(aes(color= drv,
                 size= trans),
             alpha = 0.5 ) +
  geom_smooth(method = lm) +
  facet_wrap(~year, nrow = 1 ) +
  labs(x=" Engine size",
       y= "MPG in the city", 
       title = "Fuel Efficiency")
theme_classic()
###########################
Barcharts (single categorical data) & histogram
#Single categorical vertical bar chart
names(msleep)
msleep %>%
  drop_na (vore) %>% # to add missing value
  ggplot(aes(x=vore)) +
  geom_bar(fill = "#97B3C6") +
             coord_flip() +
             theme_bw() +
  labs(x= "vore", y= NULL, title = "Number of observations per order")

#horizontal bar chart
msleep %>%
  drop_na (vore) %>% # to add missing value
  ggplot(aes(x=vore)) +
  geom_bar(fill = "#97B3C6") +
  theme_bw() +
  labs(x= "vore", y= NULL, title = "Number of observations per order")

#use fct_infreq (vore) to create order

msleep %>%
  drop_na (vore) %>% # to add missing value
  ggplot(aes(fct_infreq((vore))) +
  geom_bar(fill = "#97B3C6") +
  coord_flip() +
  theme_bw() +
  labs(x= "vore", y= NULL, title = "Number of observations per order")
# Histogram numerical data

msleep %>%
  ggplot(aes(awake)) +
           geom_histogram(binwidth = 2, fill = "#97B3C6") +
           theme_bw() +
           labs(x= "Total Sleep", y= NULL, title = "Histogram of total sleep")
























