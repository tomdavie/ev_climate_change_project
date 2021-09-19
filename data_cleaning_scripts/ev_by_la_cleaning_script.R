library(tidyverse)
library(janitor)
library(here)
library(readODS)
  
# Reading in and skipping first 5 rows
uk_ev <- read_ods(here("raw_data/ev_by_la.ods"), sheet = 2, skip = 5)
# Making row 1 the variable name
names(uk_ev) <- uk_ev[1,] 
# Removing row 1 
uk_ev <- uk_ev[-1,] %>% 
  clean_names()

write_csv(uk_ev, "clean_data/ev_by_la_clean.csv")