library(ggplot2)

area_loss = c(100,100,100,100,100,100,100,100,100,100,98,100,97,95,98,93,97,98,57,87,77,63,89)

species_loss = c(100,100,100,100,100,100,100,100,100,100,100,100,88,77,57,74,34,46,29,53,42,46,2)

data <- data.frame(area_loss, species_loss)

graph <- ggplot(data, aes(x = area_loss, y = species_loss)) +
  geom_point() +
  theme_minimal() +
  labs(x = "Area Loss",y = "Species Loss")

print(graph) # Graph with points

graph_empty <- ggplot(data, aes(x = area_loss, y = species_loss)) +
  geom_point(alpha=0) +
  theme_minimal() +
  labs(x = "Area Loss",y = "Species Loss")

print(graph_empty) # Graph without points
