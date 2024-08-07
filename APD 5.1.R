library(plotly)

# Create a data frame with the given data
data <- data.frame(
  Student = c("A", "B", "C", "D", "E"),
  Math_Score = c(85, 72, 90, 78, 88),
  Science_Score = c(78, 85, 80, 75, 82),
  Attendance = c(95, 92, 98, 85, 93)
)

# Create a 3D scatter plot
plot_ly(data, x = ~Math_Score, y = ~Attendance, z = ~Science_Score, type = 'scatter3d', mode = 'markers',
        marker = list(size = 5, color = ~Science_Score, colorscale = 'Viridis', showscale = TRUE)) %>%
  layout(scene = list(xaxis = list(title = 'Math Score'),
                      yaxis = list(title = 'Attendance (%)'),
                      zaxis = list(title = 'Science Score')))