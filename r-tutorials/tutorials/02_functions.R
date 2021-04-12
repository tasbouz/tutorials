my_function<- function(x,y,z=1) {}                     # First parenthesis: Arguments, here x,y and z is default 1 unless we change it upon calling function. Second parenthesis: body
                                                       # Inside a function we can use anything that was created in the global enviroment of R

args(my_function)                                      # Shows the arguments of the function
body(my_function)                                      # Shows the body of the function
environment(my_function)                               # Shows where the function was created (in our example, it was created here in R)

ls()                                                   # Shows all the variables and values (Same as the up-right corner box)
rm()                                                   # Removes form workspace
rm(list = ls())                                        # Removes everything
class()                                                # Says the class of the variable (e.g numerics, integers, characters etc)
typeof()                                               # Says the type of thr variable

is.na(data)                                            # Gives TRUE or FALSE for al the entries in the data regarding if they are empty or not
any(is.na(data))                                       # Checks if there are any missing values
sum(is.na(data))                                       # The number of missing values
complete.cases(data)                                   # One element for each row of data: TRUE if there are no missing values and FALSE if there are
na.omit(data)                                          # Removes any rows with missing values
is.numeric()                                           # Checks if something is numeric or not. Retuns TRUE if it is a value, returns FALSE if it is not. Works with all type of variables
any(is.numeric())                                      # Returs TRUE or FALSE, if there is a numeric of there is not
as.numeric()                                           # Turns something into numeric. eg: TRUE turns to 1. Works with all type of variables

dim()                                                  # Gives the dimensions. (First number: Rows, Second Number: Columns)
head(x,y)                                              # Gives the y first elements of x
tail(x,y)                                              # Gives the y last elements of x
length()                                               # Shows the length
nrow()                                                 # Number of rows
ncol()                                                 # Number of columns
names()                                                # View the names of the columns i.e the variables
str()                                                  # Informations on structure
summary()                                              # Shows a summary
describe()                                             # Returns a list of all the variables with some statistical informations for them


Sys.Date()                                             # Prints Date
Sys.time()                                             # Print Time
as.Date()                                              # Use a specific date we want

abs()                                                  # Absolute values
round()                                                # Rounds the value up to a descimal point
sum()                                                  # Calculates sums
mean()                                                 # Calculates averages
median()                                               # Gives the middle value variable
var()                                                  # Gives the variance of a distribution
sd()                                                   # Gives the standar deviation of a distribution
mode()                                                 # Gives the value appearing the most times
sort()                                                 # Sorts the argument
lm(x ~ y)                                              # Linear regresion between the two variables x and y
scale()                                                # Changes the measurement of a variable to z-scores: (observation - mean)/standar deviation

c()                                                    # Concatenate function. Creates a sequence of what we will put inside
seq(x,y,z)                                             # Creates a sequence from x to y with z step
seq_along(x)                                           # Creates the sequence: 1:length(x) (or ncol(x), etc)
rep(x,y)                                               # Repeats x, y times
x<- scan()                                             # It starts asking for data and put them one by one to numbers 1 up to where you want For stop hit enter twice

tolower()                                              # Makes everything lower case
toupper()                                              # Makes everything upper case
nchar()                                                # The number of characters
grepl(pattern = sth, x = sth)                          # Searches for a pattern inside the string x. Returns TRUE or FALSE. The pattern could be anything. We can use regular expressions also in the patern
which(grepl(pattern = sth, x = sth))                   # Searches for a pattern inside the string x. Returns the position of it. The pattern could be anything. We can use regular expressions also in the patern
grep(pattern = sth, x = sth)                           # Same thing
sub(pattern = sth, replacement = sth, x = sth)         # Finds the first element that matches the pattern inside the string x and replaces it with replacement
gsub(pattern = sth, replacement = sth, x = sth)        # Finds all elements that matche the pattern inside the string x and replaces it with replacement



lapply(x,fun, factor = sth)                            # lapply, applies the function fun to all the elements of a vector or a list x, and we can specify the factor of the function. 
                                                       # Always returns a list. We can use unlist() to get vector

sapply(x,fun, factor = sth)                            # lapply, applies the function fun to all the elements of a vector or a list x, and we can specify the factor of the function. 
                                                       # Always returns a named vector or a matrix. If we don't want the names: USE.NAMES = FALSE

vapply(x,fun, FUN.VALUE = sth, factor = sth)           # Works as sapply. Now we have to specify what is the output to FUN.VALUE. E.g: character(1)


###################################################################################################################################################


install.packages('purrr')                               # purrr package
library('purrr')

map(x, f)                                               # Applies f on each element of x. Or if x is a data frame, to every column. Like apply. We specify the type of return by underscores of function, e.g map_dbl
pmap(list(x,y,...), f)                                  # Same with any arguments
invoke_map(x,y...,f1,f2...)                             # Same with any arguments and any functions
map(x, ~ fun)                                           # map with annonymous function. fun is the function that we have to write it explicitly. we use a dot . for the argument x of the function
safely()                                                # We can use safely(f) in order to get rid of errors. If there is an error, it prints a list with null for the return and the error as a string


###################################################################################################################################################


install.packages('tidyr')                                 # tidyr package
library('tidyr')

gather(data, key, value, ...)                             # Gathers the data in a pair format. data = data frame, key = bare name of new key column, value = bare name of new value column, ... = bare names of columns to gather
spread(data, key, value)                                  # Gathers the data in original format. data = data frame, key = bare name of new key column, value = bare name of new value colum

separate(data, col = , into = c(,), sep = ',')            # Seperates a column with 2 data into 2 columns with 1 data each. data = data frame, col = which column, into = c(,) = new column names, sep = what seperates the data 
unite(data, col = , ..., sep = ',')                       # Unites 2 columns with 2 datas into 1 column with 2 datas. data = data frame, col = name of new column, ... = which columns to combine, sep = what seperates the data 


###################################################################################################################################################


install.packages('stringr')                              # stringr package
library(stringr)

str_trim('  test  ')                                     # Trims any white space in the beginning and the end of the string
str_pad('test', width = 7, side = 'left', pad='0')       # test must be width=7 digits long. If it's not, add to the side=left, pad=0's until it's seven digits long
str_detect(data,'specific')                              # It searches for the entry 'specific' inside the given data
str_replace(data, 'specific', 'specific_new')            # Searchs the data for the entry 'specific'. Once it finds it, it replace it with 'specific_new'


