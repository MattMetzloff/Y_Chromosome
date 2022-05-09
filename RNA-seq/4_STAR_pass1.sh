#This analysis is based on the one detailed in Lu et al. 2020: "Developmental regulation of cell type-specific transcription by novel promoter-proximal sequence elements"
#This uses STAR mapping to assign split junctions and begin mapping

#!/bin/bash -l
#SBATCH --job-name=STAR_pass1
#SBATCH --output=STAR_pass1.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=12000
#SBATCH --time=02:30:00
#SBATCH --partition=short
#SBATCH --account=bscb02

/programs/STAR-2.7.5a/bin/Linux_x86_64_static/STAR --runThreadN 4 \
--runMode alignReads \
--genomeDir $1 \
--alignSJoverhangMin 10 \
--alignIntronMax 100000 \
--alignMatesGapMax 100000 \
--outFilterMismatchNoverLmax 0.04 \
--readFilesIn $2 \
--readFilesCommand zcat \
--outFileNamePrefix $3 \
--outSAMtype None


#these comments taken from Fuller lab github notes:
# STAR --runThreadN 4 \  # use 4 threads in parallell 
# --runMode alignReads \  # align reads
# --genomeDir $index \  # where the index is
# --alignSJoverhangMin 10 \  # for reads spanning splice junctions, need to have > 10bp align to both exons to be included in output
# --alignIntronMax 100000 \  # maximum intron length. Minimum is 21bp by default.
# --alignMatesGapMax 100000 \  # maximum distance between reads in a pair
# --outFilterMismatchNoverLmax 0.04 \  # max mismatch allowed = read lenght x 0.04
# --readFilesIn $2 $3 \  # read 1 and read 2 input files
# --outFileNamePrefix $4 \  # output prefix
# --outSAMtype None  # don't output the bam file, since the goal of pass 1 is to generate the splice junction file