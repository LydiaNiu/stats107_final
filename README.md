# How do different sleep disorders (Insomnia vs. Sleep Apnea) differ in sleep quality and stress level?

## 1. Variables:

  - Sleep Disorder: The presence or absence of a sleep disorder in the person (None, Insomnia, Sleep Apnea).

  - Quality of Sleep (Scale: 1-10): A subjective rating of the quality of sleep, ranging from 1 to 10.

  - Stress Level (Scale: 1-10): A subjective rating of the stress level experienced by the person, ranging from 1 to 10.


## 2. Hypotheses:
All the following tests will use t-test to compare the differences of the two means.


  1) Null Hypothesis (H₀₁) : sleep quality of sleep apnea vs sleep quality of insomia
  
      - There is no significant difference in sleep quality between people with Sleep Apnea and those with Insomnia.

  2) Null Hypothesis (H₀₂) : stress level of sleep apnea vs stress level of insomia

      - There is no significant difference in stress levels between people with Sleep Apnea and those with Insomnia.

  3) Null Hypothesis (H₀₃) : 

     - There is no significant difference in sleep quality between people with No Sleep Disorder and those with Insomnia.

  4) Null Hypothesis (H₀₄) : 

     - There is no significant difference in sleep quality between people with No Sleep Disorder and those with Sleep Apnea.

  5) Null Hypothesis (H₀₅) :
  
     - There is no significant difference in stress levels between people with No Sleep Disorder and those with Insomnia.
  
  6) Null Hypothesis (H₀₆) :
  
     - There is no significant difference in stress levels between people with No Sleep Disorder and those with Sleep Apnea.



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
