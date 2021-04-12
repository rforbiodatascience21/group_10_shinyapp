library(shiny)
library(tidyverse)
library(broom)
library(cowplot)

gravier_augmented <- read_tsv(file = "RasDeh_app/03_gravier_data_outcome.tsv.gz")

dataset <- gravier_augmented

fluidPage(
  
  titlePanel("Gene Explorer"),
  
  sidebarPanel(
    
   # sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(dataset),
               # value=min(1000, nrow(dataset)), step=500, round=0),
    
    selectInput('x', 'X', names(dataset)),
    selectInput('y', 'Y', names(dataset)),
    #selectInput('color', 'Color', c('None', names(dataset))),
    
    #checkboxInput('jitter', 'Jitter'),
    #checkboxInput('smooth', 'Smooth'),
    
    #selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
    #selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
  ),
  
  mainPanel(
    plotOutput('plot')
  )
)
