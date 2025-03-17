# Define required packages
required_packages <- c(
  "tidyverse",  
  "readr",      # read and write CSV files
  "dplyr",      
  "tidyr",      
  "lubridate",  
  "ggplot2",    # data visualization
  "ggpubr",     # correlation
  "rmarkdown",  
  "knitr",
  "gridExtra"   # r markdown format
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
