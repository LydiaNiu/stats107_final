# create density plots for any two groups
# parameter variable is the *dependent variable*, group 1/group 2 are the two groups 
# of people distinguished by sleeping disorder(independent variable)

plot_density <- function(df, variable, group1, group2, title) {
  # Filter data for the two selected groups
  df_filtered <- df %>% filter(disorder %in% c(group1, group2))

  # Generate density plot
  ggplot(df_filtered, aes(x = .data[[variable]], fill = disorder)) + 
    geom_density(alpha = 0.5, bw = 0.2) +
    labs(
      title = title,
      x = variable,
      y = "Density"
    ) +
    scale_fill_manual(values = c("blue", "red")) +
    theme_minimal() +
    theme(  # increase text size to fit the data visualization in the FINAL REPORT
      text = element_text(size = 25),          
      axis.title = element_text(size = 25),    
      axis.text = element_text(size = 25),     
      legend.title = element_text(size = 30),  
      legend.text = element_text(size = 30),   
      plot.title = element_text(size = 40, face = "bold")  
    )
}
