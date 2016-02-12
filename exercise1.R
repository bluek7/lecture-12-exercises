### Exercise 1 ###

# Based off examples here: https://plot.ly/r/bubble-charts/

# Libraries
library(plotly)
library(dplyr)

# Randomly sample 1,000 rows from the `diamonds` dataframe
d <- diamonds[sample(nrow(diamonds), 1000), ]

# Create a graph with the following encodings:
# carat: horizontal position, 
# price: vertical position, 
# cut: color 
#plot_ly(d, x = carat, y = price, mode = "markers", color = cut)
plot_ly(d, x = carat, y = price, mode = "markers", color = cut, size = carat)


# Pass your plot to the layout function to add a descriptive title
plot_ly(d, x = carat, y = price, mode = "markers", color = cut, size = carat) %>% 
  layout(title = "Graph about Diamonds (Comparing carat with price)")


# Create another graph that compares diamond table to diamond depth, 
# that also encodes information about price
plot_ly(d, x = table, y = depth, mode = "markers", color = cut, size = price)

# Pass your plot to the layout function to add a descriptive title
plot_ly(d, x = depth, y = price, mode = "markers", 
        color = price, size = price) %>% 
  layout(title = "Graph about Diamonds (Comparing table with depth)")


