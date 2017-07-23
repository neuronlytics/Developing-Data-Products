
## Instructions

# Create a web page presentation using R Markdown that features a plot created with Plotly. Host your webpage on either GitHub Pages, RPubs, or NeoCities. Your webpage must contain the date that you created the document, and it must contain a plot created with Plotly. We would love to see you show off your creativity!
  
  ## Review Criteria
  
#   The rubric contains the following two questions:
#   
#   - Does the web page feature a date and is this date less than two months before the date that you're grading this assignment?
# - Is the web page a presentation and does it feature an interactive plot that appears to have been created with Plotly?
# 
# 
# ## Data Description
# 
# The Faraday Worldcup data set is used in this analysis.
# The Worldcup includes data on players from the 2010 World Cup
# 
# Variables include: 
# 
# - Team - Country the team represents
# - Position - a factor with levels Defender, Forward, Goalkeeper & Midfielder
# - Time - Time played in minutes
# - Shots - Number of shots attempted
# - Passes - Number of passes made
# - Tackles - Number of tackles made
# - Saves - Number of saves made

library(faraway)
library(webshot)
library(plotly)
dataset = worldcup
dataset = as.data.frame(dataset)
rownames(dataset) = 1:nrow(dataset)
head(dataset)
```

## Passes by Position
plot_ly(dataset, labels = ~Position, values = ~Passes, type = 'pie') 

## Passes by Position in Time
plot_ly(dataset, x = ~Passes, y = ~Time, color = ~Position,
size = ~Passes, text = ~paste("Position:", Position))

## La Fin

# Thank you :)