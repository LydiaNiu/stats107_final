plot_boxplot <- function(df, variable, group, group1, group2, title) {
  df_filtered <- df %>% filter(!!sym(group) %in% c(group1, group2))  # Filter to only the two groups
  
  ggplot(df_filtered, aes_string(x = group, y = variable, fill = group)) +
    geom_boxplot(outlier.shape = NA, fatten = 2, color = "black", lwd = 1) +
    labs(title = title, x = group, y = variable) +
    theme_minimal() +
    theme(legend.position = "right") +
    theme(
      text = element_text(size = 25),           # General text size
      axis.title = element_text(size = 25),     # Axis titles size
      axis.text = element_text(size = 25),      # Axis values size
      legend.title = element_text(size = 30),   # Legend title size
      legend.text = element_text(size = 30),    # Legend labels size
      plot.title = element_text(size = 40, face = "bold")  # Title size
    )
}