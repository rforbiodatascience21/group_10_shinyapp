# Clear workspace ---------------------------------------------------------
rm(list = ls())


# Load libraries ----------------------------------------------------------
library("tidyverse")


# Define functions --------------------------------------------------------
source(file = "R/99_project_functions.R")


# Load data ---------------------------------------------------------------
gravier_data <- read_tsv(file = "data/02_gravier_data.tsv.gz")


# Wrangle data ------------------------------------------------------------
gravier_data_outcome <- gravier_data %>% 
  mutate(outcome = case_when(value == "good" ~0,
                             value == "poor" ~1)) %>% 
  select(-value)


# Write data --------------------------------------------------------------
write_tsv(x = gravier_data_outcome,
          path = "data/03_gravier_data_outcome.tsv.gz")