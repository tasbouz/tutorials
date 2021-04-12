# IMPORTING DATA

browseURL()                                           # Browse to sites
download.file('url', file.path('path'))               # Download from web: url is the url of the excel file, and file.path is the directory on the computer that the file will be saved.
                                                      # If we want to store ti locally on R's working space, we just give a name for the file in the second argument

###################################################################################################################################################


read.table('path',                                    # The most general command to read data file. Returns data in a data frame. Path can be local (computer) or global (internet). For files on the internet the path is the http link
           header = TRUE,                             # header means that the first line is the names of the variables and not observations
           sep = '/',                                 # sep specifies what seperates the data. Here we chose a slash /
           stringsAsFactors = FALSE,                  # Do not factorizes the strings.
           col_names = c()                            # col_names is the names of the columns i.e the names of the variables
           col_types = c())                           # col_types is the types of the columns i.e character, integer etc
                                                                                                 

read.csv('path', stringsAsFactors = FALSE)            # Reads a csv file (comma seperated values). By default sep = ','. Works with computer paths or links
read.delim('path', stringsAsFactors = FALSE)          # Reads a tsv file (tab seperated values). By default sep = '\t'. Works with computer paths or links


###################################################################################################################################################


install.packages('readr')                             # readr package (Works with links on the internet)
library('readr')

read_delim('path',                                    # The most general command to read data file. Returns the data in a tibble. header = TRUE by default. stringsAsFactors is by default FALSE.
           delim = '/',                               # Here we use delim instead of sep
           skip = 2,                                  # Skips 2 first rows
           n_max = 3)                                 # Read only 3 rows

read_csv('path')                                      # Reads a csv file. stringsAsFactors is by default FALSE. Returns the data in a tibble
read_tsv('path')                                      # Reads a tsv file. stringsAsFactors is by default FALSE. Returns the data in a tibble


###################################################################################################################################################


install.packages('data.table')                         # data.table package (Works with links on the internet)
library('data.table')

fread('path'                                           # The most general command to read data file. Very fast and automatic
      drop = ,                                         # Drops specific columns
      select = )                                       # Selects specific columns


###################################################################################################################################################


install.packages('readxl')                               # readxl package:  FOR EXCEL FILES. (Doesn't work with links on the internet - First download the file)
library('readxl')

excel_sheets('path')                                     # It explores the excel file. It just lists the different names of sheets of excel

read_excel('path',                                       # Reads the data of an excel file, i.e xlsx.
           sheet =,                                      # Which sheet of the excel to load. We can use the number of the sheet or its name
           col_names = TRUE                              # Means that the first line of excel contains the names of columns. It's true by default
           col_types = NULL                              # R guesses the types of variables by the data. We can use c() to inforce the types
           skip = 2)                                     # Skips 2 first rows
           

###################################################################################################################################################


install.packages('RMySQL')                               # RMySQL package:  FOR MySQL DATABASES
library('DBI')

file<- dbConnect(RMySQL::MySQL(),                        # Constructs SQL driver in order to connect with the SQL database
                 dbname = 'dbname',                      # Specified the database name
                 host = 'host',                          # The host of the database
                 port = 3606,                            # The port of the database
                 user = 'user',                          # The user for login
                 password = 'passwrod')                  # The password for login
 
dbDisconnect(file)                                       # Disconnect from the SQL database

dbListTables(file)                                       # Lists ALL the tables in the database
dbReadTable(file, 'name of table')                       # Reads the specific table from the database
dbGetQuery(file, 'SQL Condition')                        # We can choose specific datas from the database. We set the condition, simply by SQL commands


###################################################################################################################################################


install.packages('jsonlite')                               # jsonlite package:  For JSON files
library('jsonlite')

fromJSON('json')                                           # Gets a json file either from the url or as a json file itself. Returns a list or a vector dependind on the original json file
toJSON('json', pretty = TRUE)                              # Converts sth to a json file. Pretty = TRUE, converts the file to a pretty file for humans. By default it's FALSE               
minify('json')                                             # Converts a pretty file back to a concrete format.


###################################################################################################################################################


install.packages('haven')                                  # haven package:  For files coming from SAS, STATA, SPSS
library('haven')

read_sas('path')                                           # Sas files
read_stata('path')                                         # Stata files
read_spss('path')                                          # Spss files


