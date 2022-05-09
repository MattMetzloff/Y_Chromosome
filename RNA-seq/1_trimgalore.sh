#!/bin/bash -l
#SBATCH --job-name=trimgalore
#SBATCH --output=trimgalore.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#sbatch --mem=1000
#SBATCH --time=01:30:00
#SBATCH --partition=short
#SBATCH --account=bscb02

trim_galore --quality 20 --stringency 1 --fastqc --length 30 $1 --output_dir $2 

#at 3' end, trim bases with quality below 20 and trim bases with >=1bp overlap with adapter sequence, which is 
#automatically identified by the program. Discard all reads shorter than 30 bp. Does this on file $1, outputs to directory $2