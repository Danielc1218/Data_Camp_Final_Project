library(tidyverse)
library(rvest)
url <- "https://simple.wikipedia.org/wiki/List_of_U.S._states_by_population"
 raw_data <- read_html(url) %>% 
  html_elements("td:nth-child(3)") %>% 
  html_text2() %>% 
  as_tibble() %>% 
   slice(1:52)
 
url <- "https://simple.wikipedia.org/wiki/List_of_U.S._states_by_population"
raw_data_2 <- read_html(url) %>% 
   html_elements("td:nth-child(4)") %>% 
   html_text2() %>% 
   as_tibble() %>% 
   slice(1:52)

url <- "https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_violent_crime_rate"
raw_data_3 <- read_html(url) %>% 
   html_elements("td:nth-child(3)") %>% 
   html_text2() %>% 
   as_tibble() %>% 
   slice(7:58)
url <- "https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_violent_crime_rate"
raw_data_4 <- read_html(url) %>% 
  html_elements("td:nth-child(1)") %>% 
  html_text2() %>% 
  as_tibble() %>% 
  slice(7:58) 
  
write_csv(raw_data_4, "State.csv")
write_csv(raw_data_2, "Population.csv")
write_csv(raw_data, "Capital.csv")
write_csv(raw_data_3, "Incidents.csv")


url <- "https://simple.wikipedia.org/wiki/List_of_U.S._states_by_population"
raw_data_6 <- read_html(url) %>% 
   html_elements("td:nth-child(5)") %>% 
   html_text2() %>% 
   as_tibble() %>% 
   slice(1:52)


url <- "https://en.wikipedia.org/wiki/List_of_U.S._states_and_territories_by_violent_crime_rate"
raw_data_8 <- read_html(url) %>% 
   html_elements("td:nth-child(12)") %>% 
   html_text2() %>% 
   as_tibble() %>% 
   slice(1:58)

write_csv(raw_data_6, "Population_2010.csv")
write_csv(raw_data_8, "Incidents_2010.csv")
