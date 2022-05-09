#these are the required R packages
library(tidyverse)
library(DESeq2)
library(magrittr)
library(GenomicTools)

#this general workflow is based on Lu el al. 2020: "Developmental regulation of cell type-specific transcription by novel promoter-proximal sequence elements"


setwd("C:/Users/Owner/Desktop/Lab Work/RNAseq/DE Analysis repeat masked genome//")
#remember to set working directory. This directory should contain a .gtf annotated genome and the raw counts files from the previous steps.


gtf = importGTF("RNAseq_ref_genome.gtf")
#this imports only genes.
bed=gtfToBed(gtf, correctBases=TRUE)
bed$gene_name=gtf$gene_name
bed$biotype=gtf$gene_biotype
class(bed)=c("bed","data.frame")
#get gtf file to R and convert to correct format modified ".bed" file. On the GitHub notes, this was all accomplished by the "genomicsDL" gtf_to_bed.r file, but this file is not available.

#filters bed file. The final one used is bed_nonMito_protein, which has only protein-coding, non-mitochondrial genes.
#The GitHub notes have a slightly different set of genes with 12209 total, while this method gets 11453. This seems like a notable difference.
bed_nonMito=filter(.data = bed, Chr!="mitochondrion_genome")
bed_nonMito_protein=filter(bed_nonMito,biotype=="protein_coding")

#saves a series of files to folder, showing genes and types
write.table(bed_nonMito_protein, "fly_nonMito_protein.bed", col.names = F, sep="\t",row.names = F, quote=F)

#gets files needed for removing mito and rDNA genes
fly_nonMito_protein <- read.delim("fly_nonMito_protein.bed", header=FALSE, stringsAsFactors=FALSE)%>%dplyr::select(V4)%>%dplyr::rename(V1=V4)

#searches for correct files of raw counts, make sure these are in the working directory.
file_list=list.files(pattern = '.srt..txt')
names(file_list)=substr(file_list,1,11)

i=c(1,2,3,4,5,6,7,8,9,10,11,12)
#loops through all files (may not always be 12) and removes mito and non-protein-coding genes, then saves updated files
for (val in i) {
  count_file_name=as.character(file_list[[val]])
  count_file= read.delim(count_file_name, header=FALSE, stringsAsFactors=FALSE)
  
 
  count_file_nM_pro=semi_join(count_file,fly_nonMito_protein,by="V1")
  count_file_nM_pro_name = paste0(substr(count_file_name, 1, nchar(count_file_name)-14),"_nonMito_protein.txt")
  write.table(count_file_nM_pro, count_file_nM_pro_name, sep="\t",  quote=F, col.names=F, row.names=F)
}


#output: set of count files with non-mito protein-coding genes only. Use these as inputs in next R script.