gravier_plot <- function(g1, g2){
gravier_data_outcome %>% 
  ggplot(mapping = aes(x = g1,
                       y = g2,
                       color = outcome))+
  geom_point()
}
