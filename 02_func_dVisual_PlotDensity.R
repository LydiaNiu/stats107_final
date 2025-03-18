# the function that plot density plot, it takes in the df as the dataset, variable is either stress level/sleep quality, 
# groups are the different groups in the sleep disorder that I want to plot with, title is the title of the plot
plot_density <- function(df, variable, group1, group2, title) {
  # Filter the dataset to include only the two specified groups (group1 and group2)
  df_filtered <- df %>% filter(disorder %in% c(group1, group2))
  
  # Create a density plot
  ggplot(df_filtered, aes(x = .data[[variable]], fill = disorder)) + 
    # Plot density with transparency (alpha = 0.5) and adjust bandwidth for smoothness (bw = 0.2)
    geom_density(alpha = 0.5, bw = 0.2) +
    
    # Set the plot title and axis labels
    labs(
      title = title,  # Title of the plot
      x = variable,   # X-axis label (corresponding to the selected variable)
      y = "Density"   # Y-axis label representing density
    ) +
    
    # Manually set fill colors for the two groups (blue and red)
    scale_fill_manual(values = c("blue", "red")) +
    
    # Apply a minimal theme for a clean look
    theme_minimal() +
    
    # Adjust text sizes to make the visualization suitable for the final report
    theme(
      text = element_text(size = 25),          # Set the base text size
      axis.title = element_text(size = 25),    # Adjust size of axis titles
      axis.text = element_text(size = 25),     # Adjust size of axis tick labels
      legend.title = element_text(size = 30),  # Adjust size of legend title
      legend.text = element_text(size = 30),   # Adjust size of legend text
      plot.title = element_text(size = 40, face = "bold")  # Make the title larger and bold
    )
}
