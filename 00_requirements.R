# Define required packages
required_packages <- c(
  "tidyverse",  # Collection of packages for data science
  "readr",      # Read and write CSV files
  "dplyr",      # Data manipulation
  "tidyr",      # Data tidying
  "lubridate",  # Handling date and time data
  "ggplot2",    # Data visualization
  "ggpubr",     # Publication-ready plots
  "rstatix",    # Statistical analysis
  "rmarkdown",  # Reproducible reporting
  "knitr"       # Knitting RMarkdown files
)

# Install only missing packages
install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
  }
}

# Apply function to all required packages
invisible(lapply(required_packages, install_if_missing))

# Load all libraries
lapply(required_packages, library, character.only = TRUE)
