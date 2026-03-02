library(data.table)
library(dplyr)
library(stringr)
library(tidyr)
library(ggplot2)

vcf_path <- "~/Library/CloudStorage/GoogleDrive-caroline.segestaal@ucdconnect.ie/My Drive/UCD/Sem_2/MEIN40030/MSc_omics_analysis_summer_2025/tutorial-1/haplotypecaller/Patient_2.haplotypecaller.filtered_VEP.ann.vcf"

# Read VCF as a plain table (skip header lines; adjust if needed)
vcf_data <- fread(vcf_path, skip = 3401)

# Save as CSV
csv_out <- "~/Library/CloudStorage/GoogleDrive-caroline.segestaal@ucdconnect.ie/My Drive/UCD/Sem_2/MEIN40030/MSc_omics_analysis_summer_2025/tutorial-1/haplotypecaller/Patient_2.vep_annotated.csv"
fwrite(vcf_data, csv_out)

head(vcf_data)
