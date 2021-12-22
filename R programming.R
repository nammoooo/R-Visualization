> a = "mobile"
> a
[1] "mobile"
> a="pen"
> a
[1] "pen"
> a="makeup"
> a
[1] "makeup"
> num1=3
> num1
[1] 3
> class(num1)
[1] "numeric"
> char1="i love pizza"
> char1
[1] "i love pizza"
> class("i love pizza")
[1] "character"
> log1=TRUE
> log1
[1] TRUE
> class(log1)
[1] "logical"
> complex1=10-15i
> complex1
[1] 10-15i
> class(complex1)
[1] "complex"

#Arithmetic Operators
-----------------
  Addition + 
  Subtraction -
  Multiplication *
  Division /
  
 #Assignment Operators 
-----------------------
Equal  =
Less than <-
Greater than ->
  
#Relational Operators
-----------------------
  Greater than >
  Less than <
  Equal to ==
  Not Equal to !=
#Logical Operators
  -------------
  TRUE & (AND)
  FALSE | (OR)
  #Data Structures
------------------------
  #Vectors (single dimensional (no rows & colums) homogenous DS (similar type data)))
=======================================================================================
  vec1= c(1,2,3,4,5,6,7) (c is combine operators in vectors) numeric
  vec2=c("a","b","c","d","e","f") character
  vec3= c(T,F,T,F) logical (case sensitive only capital letters)
  ---------------------------
#mix vector
  > mix2= c("a",2, T, 4, "c", F)
  > mix2
  [1] "a"     "2"     "TRUE"  "4"     "c"     "FALSE"
  > class(mix2)
  [1] "character"
  -------------------------
  #extract element
  extract single element
  > mix2 [4]
  [1] "4"
  extract multiple elements
  > mix2[1:4]
  [1] "a"    "2"    "TRUE" "4"   
 =============================================
  #list is a single dimension heterogeneous DS#
  l1<- list(3, T, "a", F)
  class of the single component
  class(l1[[3]]) use double braces to find class of the each component
  [1] "character"
  l2 <- list(c(1,2,3), c("a","b","c"), c(T,F,T)) use of extract multiple elements together
  l2[[2]][2] element component of element 
  ------------------------------------------------
  #matrix is single dimensional homogeneous DS row & col
  m1 <- matrix(c(1,2,3,4,5,6)) "matrix" "array" 
  m1 <- matrix(c(1,2,3,4,5,6) , nrow = 2) 
  m1 <- matrix(c(1,2,3,4,5,6) , nrow = 2, byrow = T)
  
  extract individual value
  m1 <- matrix(c(1,2,3,4,5,6) , nrow = 2, byrow = T)
  > m1
  [,1] [,2] [,3]
  [1,]    1    2    3
  [2,]    4    5    6
  m1[2,1]
  ---------------------------------
  #dataframe row & colum (table) heterogeouns two dimensinal DS. dataframe comprises of character values and numerical elements
    data.frame(Name= c("Shiva", "Joyita", "Hema"), Ratings= c(10, 8, 6)) -> Friend
  > Friend
  Name Ratings
  1  Shiva      10
  2 Joyita       8
  3   Hema       6
 
  extracting the values from dataframe (use of dollar sign to extract values)
  Friend$Ratings 
  Friend$Name
  to have a glance from dataframe use view method and name of the df
  View(Friend) 
  