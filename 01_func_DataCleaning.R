# convert character columns to factors
to_factors <- function(data) {
  data.frame(lapply(data, function(col) {
    if (is.character(col)) as.factor(col) else col
  }), stringsAsFactors = FALSE)
}

