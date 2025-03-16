# create density plots for any two groups
# parameter variable is the *dependent variable*, group 1/group 2 are the two groups 
# of people distinguished by sleeping disorder(independent variable)
plot_density <- function(df, variable, group1, group2, title) {
  # filter data for the two selected groups
  df_filtered <- df %>% filter(disorder %in% c(group1, group2))
  
  # generate density plot
  ggplot(df_filtered, aes_string(x = variable, fill = "disorder")) +
          geom_density(alpha = 0.5, color = "black", bw = 0.2) +
          labs(
            title = title,
            x = variable,
            y = "Density"
          ) +
          scale_fill_manual(values = c("blue", "red")) +
          theme_minimal()
}
