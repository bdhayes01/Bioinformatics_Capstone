# This is for the creation of the first graph, yellowstone wolves graph.
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

def load_dataset():
  wolf_data = pd.read_csv("https://raw.githubusercontent.com/bdhayes01/Bioinformatics_Capstone/main/data/yellowstone_wolves.csv")
  wolf_years = list(wolf_data['year'])
  wolf_pop = list(wolf_data['wolves'])
  wolf_pack = list(wolf_data['packs'])
  return wolf_years, wolf_pop, wolf_pack

def sigmoid(x):
  return 100 / (1 + np.exp(-x))

def graph_data():
  x, pop, pack = load_dataset()
  x = [1990, 1991, 1992, 1993, 1994] + x
  x = np.array(x).reshape(-1,1)
  pop = [0,0,0, 0, 0] + pop
  plt.plot(x, pop)
  plt.plot(x, 125 * np.ones(len(x)), color= "red") # Comment out this line if you wish to exclude the carrying capacity line.

  y = []
  for i in x:
    y.append(sigmoid(i - 2005))
  plt.plot(x, y, 'r--') # Comment out this line if you wish to exclude the logistical growth line. 
  
  plt.ylabel("Number of Wolves")
  plt.xlabel("Year")
  plt.title("Yellowstone Wolves")
  plt.show()

graph_data()
