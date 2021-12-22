#Datastructures in R
Vector - Linear datastructure which has one dimension, homogenous DS store only one particular type of data
c operator stands for combine
vec1<- c(1,2,3,4) numeric vector
vec2
class(vec1)
vec2<- c("a", "b","c") character vector
vec3<- c(T,F,T, F, T, T) logical vector
# Numerical & Logical value together #
mix1<- c(2,3,F,5,T,F) element FALSE is 0, element TRUE is 1
mix1
[1] 2 3 0 5 1 0
# numeric and character value together
mix2<- c(1,2,3,"a", "b", 5)
mix2
[1] "1" "2" "3" "a" "b" "5"
# numeric, character & logical value
mix3<- c(1,"a", TRUE, 2, "b" , FALSE)
mix3
[1] "1"     "a"     "TRUE"  "2"     "b"     "FALSE"
> class(mix3)
[1] "character"
#extract individual element from the vector
mix3<- c(1,"a", TRUE, 2, "b" , FALSE)
mix3 [3]
[1] "TRUE"
#extract series of value
mix3 [1:4]
[1] "1"    "a"    "TRUE" "2" 
#extract random value
> mix3[c(1,5)]
[1] "1" "b"
------------------------------------------
List - is a linear heterogeous DS
li1<- list(1,"a", TRUE, 2, "b", FALSE)
#class(li1[[2]]) double braces used to check the class of individual value 
#li2[[2]][3] to extract individual component and element index
[1] TRUE 
----------------------------------------------
Array
------------------------------------------------
Matrix -  two dimensional homogenous DS comprise of row & col
> m1 <- matrix(c(1,2,3,4,5,6))
> m1
[,1]
[1,]    1
[2,]    2
[3,]    3
[4,]    4
[5,]    5
[6,]    6
# matrix with row & col
> m1 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
> m1
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
#arrange byrow
> m1 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)
> m1
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
#extract individual value from matrix
> m1
[,1] [,2] [,3]
[1,]    1    2    3
[2,]    4    5    6
> m1[2,2]
[1] 5
...........................................................
Array - extension of matrix, is a multidimensional homogenous DS
> v1 <-c(1,2,3,4,5,6,7)
> v2 <- c(7,8,9,10,11,12,13)
> a1 <- array(c(v1,v2),dim = c(2,3,2))
> a1
a1 <- array(c(v1,v2),dim = c(3,3,5))
#extract individual elements fro the array
a1[3,3,3]
[1] 12
> a1[1,2,3]
[1] 7
-------------------------------------------
Factor - categorical values (model building process)
> color<- factor(c("blue", "red", "green"))
> color
[1] blue  red   green
Levels: blue green red
-------------------------------------
Dataframe - two dimensional heterogenous DS in form of row & col - most important for data manipulation & visualization
> data.frame(Candidate_name = c("Ramesh", "Shiva", "Priya"), Candidate_Scores = c( 100, 85, 80)) -> interview
> interview
Candidate_name Candidate_Scores
1         Ramesh              100
2          Shiva               85
3          Priya               80
View(interview) - view data in sheet
extract data from individual col
interview$Candidate_name
[1] "Ramesh" "Shiva"  "Priya" 
> interview$Candidate_Scores
[1] 100  85  80






  
