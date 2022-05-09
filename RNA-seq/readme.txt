These scrpits start from raw RNA seq reads and identify differentially expressed genes in a method similar to time series analysis. Run in order of the number in the file names. Scripts 1-6 are configured for running on Cornell's SLURM cluster, and may need to be changed to run on some other cluster. Scripts 7-9 are run in R, and require the other .txt files in this folder.



1: uses trimgalore to remove adapter content from raw reads
2: used tecan genomics nudup to remove UMI duplicates
3-6: two passes of STAR mapping to map reads to genes and format tables with read counts per gene
7: selecting non mitochondrial, protein coding genes from an annotated reference genome
8: time series-like ananlysis using LRT in DESeq2, LPWC, and hclust. Requires FlyBase_shuffles_second_order.txt file with information about genes.
9: plotting DE genes by expression pattern using lists in the .zip.
