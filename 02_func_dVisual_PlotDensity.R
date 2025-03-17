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
    theme(
      text = element_text(size = 25),           # General text size
      axis.title = element_text(size = 25),     # Axis titles size
      axis.text = element_text(size = 25),      # Axis values size
      legend.title = element_text(size = 30),   # Legend title size
      legend.text = element_text(size = 30),    # Legend labels size
      plot.title = element_text(size = 40, face = "bold")  # Title size
    )
}
