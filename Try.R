remove.packages("dplyr")
install.packages("dplyr",dependencies=TRUE)
install.packages("readr")

library(readr)

meth <- read.csv("~/Desktop/VAE research/data/Illumina-Human-Methylation-450kilmn12-hg19.annotated.csv")
meth


meth1 <- read_csv("~/Desktop/VAE research/data/Full_data_covs.csv")
meth1

brca <- read_csv("~/Desktop/VAE research/data/BreastCancerMethylation_top100kMAD_cpg.csv")
brca
