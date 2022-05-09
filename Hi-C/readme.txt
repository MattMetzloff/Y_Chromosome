These scripts start from raw Hi-C reads and  Run in order of the number in the file names. All .Sh scripts are configured for running on Cornell's SLURM cluster, and may need to be changed to run on some other cluster. The .Rmd scripts is run in R.

1: raw_data_concateneation.sh to combine all raw data from our several sequencing runs using a simple command line cat command.

2: trimgalore_PE.sh to use trimgalore (https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) to remove adaptor sequence and run QC before mapping raw reads to the reference genome.

3: bwa mem mapping folder starting with NextSeq_all_bwa_XO.sh. These use bwa mem to map Hi-C reads to the reference genome.

4: contact matrix building folder. These use HiCExplorer to select valid Hi-C reads and build contact matrices.

5: contact distance finding, NextSeq_all_contact_distances scripts to prepare files to find contact distances.

6: contact_distance_finding.R to find contact distances.

7: NextSeq_all_norm.sh to normalize Hi-C contact matrices with HiCExplorer

8: NextSeq_all_diag_plot.sh to find cutoff values for iterative correction in HiCExplorer

9: NextSeq_all_ICE.sh to perform iterative correction in HiCExplorer

10: hic_convert_format to change file format for further analysis with TADCompare

11: TAD_compare.Rmd to analyze differential boundary scores using TADCompare in R.
