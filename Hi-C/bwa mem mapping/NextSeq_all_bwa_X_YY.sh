#!/bin/bash -l
#SBATCH --job-name=bwa_mem
#SBATCH --output=bwa_mapping.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --mem=24000
#SBATCH --time=3-12:00:00
#SBATCH --partition=long7
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17

#3

################################################################################
#  align the reads
# bwa mem mapping options:
#       -A INT        score for a sequence match, which scales options -TdBOELU unless overridden [1]
#       -B INT        penalty for a mismatch [4]
#       -O INT[,INT]  gap open penalties for deletions and insertions [6,6]
#       -E INT[,INT]  gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1] # this is set very high to avoid gaps
#                                  at restriction sites. Setting the gap extension penalty high, produces better results as
#                                  the sequences left and right of a restriction site are mapped independently.
#       -L INT[,INT]  penalty for 5'- and 3'-end clipping [5,5] # this is set to no penalty.
#
#download the genome and prepare it. This doesn't need to be done more than once, and it's done in the XO script. Make sure to run that one first.
#bwa index
################################################################################





bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_2/X_YY_2_trimmed/X_YY_2_trimmed_R1.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_2/X_YY_2_bwa_1.bam
bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_2/X_YY_2_trimmed/X_YY_2_trimmed_R2.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_2/X_YY_2_bwa_2.bam

bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_3/X_YY_3_trimmed/X_YY_3_trimmed_R1.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_3/X_YY_3_bwa_1.bam
bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_3/X_YY_3_trimmed/X_YY_3_trimmed_R2.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_3/X_YY_3_bwa_2.bam

bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_4/X_YY_4_trimmed/X_YY_4_trimmed_R1.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_4/X_YY_4_bwa_1.bam
bwa mem -t 10 -A 1 -B 4 -E 50 -L 0 /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/masked_reference_genome.fasta /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_4/X_YY_4_trimmed/X_YY_4_trimmed_R2.fq.gz | samtools view -Shb - >  /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/X_YY_4/X_YY_4_bwa_2.bam

