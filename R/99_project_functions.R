gravier_plot <- function(x1, x2){
gravier_data %>% 
  ggplot(mapping = aes(x = x1,
                       y = x2,
                       color = value))+
  geom_point()
}
