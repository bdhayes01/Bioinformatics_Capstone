library(tidyverse)
data = read.delim("https://raw.githubusercontent.com/bdhayes01/Bioinformatics_Capstone/main/Daphnia_population.txt")

graph = ggplot(data = data, aes(x = 1:length(Population), y = Population)) +
  geom_point(alpha=0) +
  xlab("Week") +
  theme_bw() 
print(graph)

#Pop15
