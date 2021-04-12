library(shiny)
library(tidyverse)

gravier_augmented <- read_tsv(file = "RasDeh_app/03_gravier_data_outcome.tsv.gz")
dataset <- gravier_augmented

function(input, output) {
    
    output$plot <- renderPlot({
        
        p <- dataset %>% 
             ggplot(mapping = aes(x=input$x, y = input$y))+
             geom_point()+
             geom_smooth(method="lm")
        
        #if (input$color != 'None')
          #  p <- p + aes_string(color=input$color)
        
        #facets <- paste(input$facet_row, '~', input$facet_col)
        #if (facets != '. ~ .')
           #p <- p + facet_grid(facets)
        
        #if (input$jitter)
            #p <- p + geom_jitter()
        
        print(p)
        
    })
    
}
