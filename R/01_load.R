# Clear workspace ---------------------------------------------------------
rm(list = ls())


# Load libraries ----------------------------------------------------------
library("tidyverse")


# Define functions --------------------------------------------------------
source(file = "R/99_project_functions.R")


# Load data ---------------------------------------------------------------
load(file = "data/_raw/gravier.RData")


# Wrangle data ------------------------------------------------------------
my_data_x <- as_tibble(gravier$x)
my_data_y <- as_tibble(gravier$y)

# Write data --------------------------------------------------------------
write_tsv(x = my_data_x,
          path = "data/01_gravier_x.tsv.gz")
write_tsv(x = my_data_y,
          path = "data/01_gravier_y.tsv.gz")