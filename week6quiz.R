# week6quiz.R
# [For your convenience], here is the provided code from Jared Lander's R for Everyone, 
# 6.7 Extract Data from Web Sites

# install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool? 
class(bowlPool)
# [1] "data.frame"

# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)

# What is the type of variable returned in hvalues?
class(hvalues)
# [1] "list"

# 3. Write R code that shows how many HTML tables are represented in hvalues

length(hvalues)
# [1] 7

# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, and Points is returned into a dataframe

hvalues.4 <- readHTMLTable(theURL, which = 1)
class(hvalues.4)
# [1] "data.frame"

# 5. Modify the returned data frame so only the Last Name and Points columns are shown.

hvalues.4 <- hvalues.4[, 3:4]
hvalues.4 <- cbind(hvalues.4$"Last Name", hvalues.4$Points)

# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  

URL.7 <- "http://en.wikipedia.org/wiki/Energy_in_the_United_States"

# 7 How many HTML tables does that page contain?

energy.tables <- readHTMLTable(URL.7)
length(energy.tables)
# [1] 27

# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.

# Mozilla Firefox, 32.0.1
# I normally use the ctrl+u shortcut to view source code for a webpage.
# The alternative is to click the menu button, select Developer, 
# and select Page Source
# I use Chrome frequently as well, and the ctrl+u shortcut works in it
# too.
