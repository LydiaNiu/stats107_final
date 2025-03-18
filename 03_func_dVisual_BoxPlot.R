# function that creates box plot, which takes in the df as the dataset, 
# variable as the sleep quality/stress level, title as the title of the plot
plot_boxplot <- function(df, variable, title) {
  
  set.seed(123)
  
  # Define Colors
  color_map <- c("Sleep Apnea" = "red", "Insomnia" = "blue", "None" = "yellow")
  
  # Convert disorder to a factor and ensure correct order
  df$disorder <- factor(df$disorder, levels = c("None", "Sleep Apnea", "Insomnia"))
  
  # Create Boxplot with Correct Colors
  boxplot(df[[variable]] ~ df$disorder,   
          col = color_map[levels(df$disorder)],  # Use the levels of the factor for correct mapping
          border = "black",        # Box border color
          main = title,
          xlab = "Disorder",
          ylab = variable,
          cex.axis = 1, cex.lab = 1, cex.main = 1, # Increase font size
          lwd = 2)                 # Make box borders thicker
  
  # Add thick purple median line to make it eye catching since some boxes have no outliers
  medians <- tapply(df[[variable]], df$disorder, median)
  segments(1:length(medians) - 0.3, medians, 1:length(medians) + 0.3, medians, col = "purple", lwd = 4)
}
