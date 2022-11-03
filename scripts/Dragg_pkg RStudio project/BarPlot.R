crab_plot <- function(file.path){
  plot <- ggplot(crabs, aes(x = body_depth)) +
    geom_bar()
  return(plot)
  }

crab_plot("data/crabs.csv")

This function will make a bar plot of what color of crabs are found at which latitude.