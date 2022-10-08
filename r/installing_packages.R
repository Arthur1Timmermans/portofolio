#this script checks if the required packages are in the installed packages folder, if not, the latests version of the missing package gets downloaded.  
#input: no specific input required, the code can be run without data 
#output: all required packages that are missing, will be installed in the installed.packages folder 


required_packages<-c("plyr", 
                     "tidyverse", 
                     "here", 
                     "readxl", 
                     "DT", 
                     "fs", 
                     "ggplot2", 
                     "interactions", 
                     "stargazer", 
                     "fastDummies", 
                     "RPostgreSQL", 
                     "gapminder", 
                     "RPostgres", 
                     "gridExtra", 
                     "ggtext", 
                     "plotly", 
                     "dslabs", 
                     "DBI", 
                     "cowplot")

download_packages<-required_packages[!required_packages %in% installed.packages()[,"Package"]]
if(length(download_packages)) install.packages(download_packages, repos = "http://cran.us.r-project.org")
