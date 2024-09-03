install.packages("BiocManager")

BiocManager::install("TCGAbiolinks")
BiocManager::install("maftools")
BiocManager::install("SummarizedExperiment")
install.packages("pheatmap")

library(TCGAbiolinks)
library(tidyverse)
library(maftools)
library(pheatmap)
library(SummarizedExperiment)

#get all gdc available projects
gdcprojects <- getGDCprojects()
#we are interested in TCGA-BRCA
getProjectSummary("TCGA-BRCA")
#we are interested in DNA Methylation profiles; there are 3714 file count, we cross check this on data portal

#we now build the query; double check the results in the portal
query_TCGA <- GDCquery(project = "TCGA-BRCA",
                       data.category = "DNA Methylation",
                       platform = "Illumina Human Methylation 450",
                       data.type = "Methylation Beta Value")

#check the queried data
output_query_TCGA <- getResults(query_TCGA) 
#there are 895 files from the gdc data portal; it agrees with the outputted query results

#download the data once confirmed
GDCdownload(query_TCGA)
