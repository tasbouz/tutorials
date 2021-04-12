library(dplyr)                                            # dplyr package


%>%                                                       # Pipe: We can use it instead of argument inside function: eg: c(1,2)%>%mean which means mean(c(1,2))

data_frame(col1 = c(1,2,3), col2 = c(4,5,6))              # Creates data frame with columns col1, col2... Uses col1 and col2 as names
as_data_frame(data)                                       # Turns a list of columns named data, into a data frame

tbl_df()                                                  # Instead of showing all the data, it shows only what fits in the window
glimpse()                                                 # A better command for the structure of data

setequal()                                                # Checks if datasets have the same data in any order of rows
identical()                                               # Checks if datasets have the same data in the same order of rows (BASE PACKAGE)

select(data, col1, col2, ...)                             # Selects from the data only the specific columns
mutate(data, new_column = f(columns))                     # Creates a new column named new_column with value the function of existed columns we define (Every element is calculated by the rows)
filter(data, condition)                                   # Returns all the observations (i.e rows) that fulfil the condition
arrange(data, col1, desc(col2), ...)                      # Arranges the data w.r.t the values of column 1 (ascending or alphabetical). Then w.r.t column 2 in descending order, etc.
summarise(data, sum=sum(col1), avg=avg(col2), ... )       # Creates a summary of the data, with the functions that we pick and the names that we define 

first(x)                                                  # The first element of vector x
last(x)                                                   # The last element of vector x
nth(x, n)                                                 # The nth element of vector x
n()                                                       # The number of rows in the data.frame or group of observations that summarise() describes. No arguments
n_distinct(x)                                             # The number of unique values in vector x

group_by(data, column)                                    # Groups data w.r.t to the value of the column we gave. Then, if we summarise, the summarise acts on every group

starts_with("X")                                          # Every variable name that starts with "X",
ends_with("X")                                            # Every variable name that ends with "X",
contains("X")                                             # Every variable name that contains "X",
matches("X")                                              # Every variable name that matches "X", where "X" can be a regular expression,
num_range("x", 1:5):                                      # The variables named x01, x02, x03, x04 and x05,
one_of(x):                                                # Every variable name that appears in x, which should be a character vector.
  
left_join(data1, data2, by = 'column')                    # Adds to the data1, datas from data2 using column as primary and foreign key. Use c(col1,cole2) for more columns. NO NEW ROWS. ONLY DATA EXISTING IN DATA 1
right_join(data1, data2, by = 'column')                   # Adds to the data2, datas from data1 using column as primary and foreign key. Use c(col1,cole2) for more columns. NO NEW ROWS. ONLY DATA EXISTING IN DATA 2
inner_join(data1, data2, by = 'column')                   # Adds to the data1, datas from data2 using column as primary and foreign key. Use c(col1,cole2) for more columns. ONLY DATA EXISTING IN BOTH DATASETS
full_join(data1, data2, by = 'column')                    # Adds to the data1, datas from data2 using column as primary and foreign key. Use c(col1,cole2) for more columns. ALL THE DATA FROM BOTH DATASETS
semi_join(data1, data2, by = 'column')                    # Removes from the data1, all the rows that do not have a matching corresponing foreign key to data 2. NO NEW COLUMNS OR ROWS
anti_join(data1, data2, by = 'column')                    # Removes from the data1, all the rows that have a matching corresponing foreign key to data 2. NO NEW COLUMNS OR ROWS

union(data1, data2)                                       # For datasets that contain exactly the same variables, but different rows. IT COMBINES ALL OF THEM.
intersect(data1, data2)                                   # For datasets that contain exactly the same variables, but different rows. IT COMBINES ONLY THE ONE APPEARING IN BOTH DATASETS.
setdiff(data1, data2)                                     # For datasets that contain exactly the same variables, but different rows. APPEARING ONLY IN DATA1 BUT NOT DATA2.

bind_cols(data1, data2)                                   # Copies colummns of data2 and pastes it to data1. No checking for keys. Just copy and paste.       
bind_rows(data1, data2)                                   # Copies rows of data2 and pastes it to data1. No checking for keys. Just copy and paste.       





