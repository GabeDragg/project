crab_plot <- function(data = crabs){
  plot <- ggplot(crabs, aes(x = color, y = latitude)) +
    geom_bar()
  return(plot)
}

This function will make a bar plot of what color of crabs are found at which latitude.