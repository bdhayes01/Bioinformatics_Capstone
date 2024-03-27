library(tidyverse)
data = read.delim("Pop15.txt")

graph = ggplot(data = data, aes(x = 1:length(Population), y = Population)) +
  geom_point(alpha=0) +
  xlab("Week") +
  theme_bw() 
print(graph)

#Pop15