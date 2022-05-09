#this uses Tecan genomics NuDup to remove PCR duplicates based on UMI.




#!/bin/bash -l
#SBATCH --job-name=nudup
#SBATCH --output=nudup.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=12000
#SBATCH --time=02:30:00
#SBATCH --partition=short
#SBATCH --account=bscb02

export PATH=/programs/samtools-1.2:$PATH
export PATH=/programs/tecangenomics-nudup-5c998af:$PATH


nudup.py -f /fs/cbsuclarkfs1/storage/mrm332/RNAseq/Y_dosage_data/raw_data_multiplexed/I1_nudup.fastq \
-s 9 -l 8 -o $2 \
-T /fs/cbsuclarkfs1/storage/mrm332/RNAseq/Y_dosage_data/nudup/$2/ \
$1


bedtools bamtofastq -i $2.sorted.dedup.bam -fq $2.deduplicated.fastq