# README for Sleep Disorder Analysis  
### By Lydia Niu  

This repository contains files to reproduce the step-by-step analysis of **stress, sleep quality, and sleep disorders (None, Sleep Apnea, Insomnia)** using statistical methods. Below is the structure of the repository, including descriptions of each file and instructions on how to reproduce the analysis.  

---

## **Overall Structure**  

### **1. Data Files**  
- **`Sleep_health_and_lifestyle_dataset.csv`** – The original dataset containing sleep health and lifestyle information.  
- **`cleaned_sleep_health_data.csv`** – The cleaned version of the dataset used for analysis after preprocessing.  

### **2. R Scripts (Functions & Requirements)**  
- **`00_requirements.R`** – Loads required R packages and dependencies for the project.  
- **`01_func_DataCleaning.R`** – Contains functions for cleaning and preprocessing the dataset.  
- **`02_func_dVisual_PlotDensity.R`** – Function to create density plots for comparing distributions of variables across sleep disorder groups.  
- **`03_func_dVisual_BoxPlot.R`** – Function to generate box plots to analyze differences in sleep quality and stress levels.  

### **3. RMarkdown Files (Analysis & Reports)**  
- **`11_DataCleaning.Rmd`** – Performs data cleaning and preprocessing, ensuring data is structured for analysis.  
- **`12_tests.Rmd`** – Conducts statistical tests, including **t-tests and correlation tests** to assess relationships between variables.  
- **`13_data_visualization.Rmd`** – Generates visualizations, including **density plots, box plots, and four-quadrant distribution plots**.  
- **`FinalReport_Niu_Lydia.Rmd`** – The final compiled report that presents the **analysis, findings, and conclusions**.  

### **4. Final Report & Outputs**  
- **`FinalReport_Niu_Lydia.pdf`** – The final formatted report summarizing the study, including all figures and analyses.  
- **`Rplots.pdf`** – Contains additional plots generated during the visualization step.  
- **`README.md`** – This guide explaining the repository structure and how to reproduce the results.  

---

## **Reproducing Results**  

### **To run the full analysis step-by-step:**  
1. **Download** all files and open the R project `Niu_Lydia_stat107_final.Rproj` in **RStudio**.  
2. **Run `00_requirements.R`** to install and load necessary packages.  
3. **Execute `11_DataCleaning.Rmd`** to clean and preprocess the dataset.  
4. **Run `12_tests.Rmd`** to perform t-tests and correlation tests.  
5. **Execute `13_data_visualization.Rmd`** to generate plots for analysis.  
6. **Finally, knit `FinalReport_Niu_Lydia.Rmd`** to generate the full report summarizing the analysis.  

### **To reproduce specific steps:**  
- If only **visualizations** are needed, run `13_data_visualization.Rmd`.  
- If only **statistical tests** are needed, run `12_tests.Rmd`.  
- If the data needs to be **reprocessed**, rerun `11_DataCleaning.Rmd`.  

This ensures that all analyses and visualizations can be recreated from the raw data.