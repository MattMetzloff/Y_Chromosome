#This finished STAR mapping with a second pass.


#!/bin/bash -l
#SBATCH --job-name=STAR_pass2
#SBATCH --output=STAR_pass2.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --mem=30000
#SBATCH --time=02:30:00
#SBATCH --partition=short
#SBATCH --account=bscb02

/programs/STAR-2.7.5a/bin/Linux_x86_64_static/STAR --runThreadN 4 \
--runMode alignReads \
--quantMode GeneCounts \
--genomeDir $1 \
--alignIntronMax 100000 \
--alignMatesGapMax 100000 \
--outFilterMismatchNoverLmax 0.04 \
--sjdbFileChrStartEnd $2 \
--readFilesIn $3  \
--readFilesCommand zcat \
--outSAMtype BAM SortedByCoordinate \
--outFilterMultimapNmax 1 \
--limitBAMsortRAM 25000000000 \
--outFileNamePrefix $4


#these comments taken from Fuller lab github notes:

# $2 is a list of splice junctions detected by STAR from pass 1
# --quantMode GeneCounts \   # count reads per gene after mapping. Only reads overlap with only one gene will be counted.
# --outSAMtype BAM Unsorted SortedByCoordinate \  # output type is bam, generate 2 output files, one is sorted by read name ("Unsorted"), where mates are next to each other, the other sorted by genome coordinate. STAR sorting is much more efficient than samtools. 
# --limitBAMsortRAM 10000000000 \  # RAM for sort bam in bytes, the default is usually not enough
# --outFilterMultimapNmax 1 \ # maximum number of loci the read is allowed to map to. Alignments (all of them) will be output only if the read maps to no more loci than this value. Otherwise no alignments will be output, and the read will be counted as ”mapped to too many loci” in the Log.final.out .
