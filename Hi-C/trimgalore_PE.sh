#!/bin/bash -l
#SBATCH --job-name=trimgalore
#SBATCH --output=trimgalore.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#sbatch --mem=8000
#SBATCH --time=24:00:00
#SBATCH --partition=regular
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17


#2

########This file uses trimgalore (https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/) to remove adaptor sequence and run QC before mapping raw reads to the reference genome.

#parameters used here:
#at 3' end, trim bases with quality below 20 and trim bases with >=1bp overlap with adapter sequence, which is 
#automatically identified by the program. Discard all reads shorter than 30 bp.
#Do this on files $1 and $2 which should be the R1 and R2 reads for one Hi-C sample, outputs to directory $3


trim_galore --quality 20 --stringency 1 --length 30 --fastqc --paired_end $1 $2 --output_dir $3

