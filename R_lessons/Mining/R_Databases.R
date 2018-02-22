library("DBI")  #Common for all databases
library("RMySQL") #Required package name is RDBMS_name
con <- dbConnect(RMySQL::MySQL(),dbname="Database_Name",host="host_url",port=portnumber,user="username",password="datacamp")
#Here con is a mysql connection object
dbListTable(con) #Lists all tables in the selected database
dbReadTable(con,"table_name") #Returns a dataframed verdion of the current table
dbGetQuery(con,"SQL-Query") #Selective importing Imports only the required fragment of the database
dbDisconnect(con)#Disconnects the database connection