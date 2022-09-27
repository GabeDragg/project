library(tidyverse)

data <- read_csv("../data/Butterfly_data.csv")

filter_years <- function(dataset = data){
  new_data <- data %>% 
    filter(years > 1997)
  return(new_data)
}

number_species <- function(dataset = data){
  species_count <- data %>% 
    group_by(ButterflySpecies) %>% 
    count(ButterflySpecies)
  return(species_count)
}