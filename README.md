# README FOR HUB ANALYSIS IN PROSTATE CANCER DATA
## By José Ángel Sánchez Gómez
In the directory "/RepositoryExample/", we provide files that can be used to
reproduce the step-by-step analysis of highly relevant genes in a prostate-cancer
dataset. In what follows, we describe the structure of our repository, and how to
reproduce our results.
## Overall structure:
- "/RepositoryExample/src/": this folder contains the files "log_transform.r",
"plotting.r" and "wglasso_functions.r", which are used throughout the analysis for
cleaning, visualizing and running models, respectively.
- "/RepositoryExample/222_genetic_clinical_df.csv": this file contains the data to
be analyzed. It consists of a combination of clinical variables and genetic
expression measurements for 550 patients with prostate cancer.
- "/RepositoryExample/3*1_***.RMD": The analysis files are saved in RMarkdown
format, numbered as 311, 321, 331, 341, and 351. Each file will perform one step in
the analysis (cleaning, processing, analyzing, generating plots, and generating a
clean version of the plots for the final report).
- "/RepositoryExample/3*2_***.RMD": For each of the analysis files numbered as 311,
321, 331, 341, and 351, we save outputs that can be picked up by the next step.
These files are saved in either CSV or RMD format. These saving-progress files are
saved with the numbers 312, 322, 332, 342 and 343.
## Reproducing results:
- To reproduce all the analysis, one can simply download all files, and run the
files 311, 321, ..., 351 in order. Running these files will delete the data-saving
files 312, 322, 332, 342 and 343, and replace them with a new version of them.
Since the code is designed to generate the same inputs, the results should be
indentical.
- To reproduce only a single step (for example, only running 351 to see the final
plots) we can simply run the file 351, which will load the data in 343, and
generate the final analysis plots.
