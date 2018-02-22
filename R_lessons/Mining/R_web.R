library(httr) #Library for importing data from web
a <- GET("url.here")
Converted_to_content <- content(a) #Second argument as may take values raw text json, autmoatically detects filetype