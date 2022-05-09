#this indexes the reference genome for STAR mapping.


#!/bin/bash -l
#SBATCH --job-name=STAR_index
#SBATCH --output=STAR_index.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=24000
#SBATCH --time=04:00:00
#SBATCH --partition=short,regular
#SBATCH --account=bscb02

#For small genomes, the parameter --genomeSAindexNbases must to be scaled down, with a typical
#value of min(14, log2(GenomeLength)/2 - 1). For the dmel 140 Mb genome, I calculated a value of 12.


/programs/STAR-2.7.5a/bin/Linux_x86_64_static/STAR --runThreadN 4 \
--runMode genomeGenerate \
--genomeDir $1 \
--genomeFastaFiles $2 \
--sjdbGTFfile $3 \
--genomeSAindexNbases 12