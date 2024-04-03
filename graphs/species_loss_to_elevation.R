library(ggplot2)

elevations = c(1600,1650,1800,1800,1900,2000,2050,2080,2100,2150,2200,2250,2250,2350,2358,2400,2400,2450,2650,2700,2723,2800,3014)

species_loss = c(100,100,100,100,100,100,100,100,100,100,100,100,88,77,57,74,34,46,29,53,42,46,2)

data <- data.frame(elevations, species_loss)

graph <- ggplot(data, aes(x = elevations, y = species_loss)) +
  geom_point() + # This line means that the graph will have points
  theme_minimal() +
  labs(x = "Elevation",y = "Species Loss")

print(graph) 

graph_empty <- ggplot(data, aes(x = elevations, y = species_loss)) +
  geom_point(alpha=0) + # This line means that the graph will be empty
  theme_minimal() +
  labs(x = "Elevation",y = "Species Loss")

print(graph_empty)
