#!/bin/bash -l
#SBATCH --job-name=matrix
#SBATCH --output=matrix_building.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=20000
#SBATCH --time=24:00:00
#SBATCH --partition=regular
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17


#4

#set environment and activate hicexplorer
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
source /programs/miniconda3/bin/activate hicexplorer


################################################################################
# Build Matrices 5Kb, further information available on HiCExplorer documentation.
# This evaulates all mapped reads and builds a matrix of valid Hi-C contacts.
#
# samFiles takes the two PE alignment files (bwa output) to process, in .sam or .bam format.
#
# restrictionCutFile is a .bed file with the restriction cut sites for the relevant 
# restriction enzyme and reference genome. Run the XO script first to get this.
#
# restrictionSequence is the sequence of the restriction site, and danglingSequence is 
# the sequence left by the restruction enzyme after cutting. For DpnII, both are GATC.
#
# binSize is the size of bins in bp. 
#
# threads is the number of threads to use
# o is the name and location of the output file, which is a .h5 contact matrix
# outBam creates a bam file with all valid Hi-C reads, useful for downstream analysis
# QCfolder gives the location to save the the quality control data for the matrix.
################################################################################


#XY_2
hicBuildMatrix --samFiles /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_2/XY_2_bwa_1.bam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_2/XY_2_bwa_2.bam \
               --restrictionCutFile /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/dpnII_sites_masked_reference_genome.bed \
			   --restrictionSequence GATC \
			   --danglingSequence GATC \
               --binSize 5000 \
               --threads 8 \
               -o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_2/XY_2_5kb.h5 \
			   --outBam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_2/XY_2_5kb_out.bam \
               --QCfolder /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_2/XY_2_5kb_matrix_QC/
			   
hicBuildMatrix --samFiles /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_3/XY_3_bwa_1.bam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_3/XY_3_bwa_2.bam \
               --restrictionCutFile /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/dpnII_sites_masked_reference_genome.bed \
			   --restrictionSequence GATC \
			   --danglingSequence GATC \
               --binSize 5000 \
               --threads 8 \
               -o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_3/XY_3_5kb.h5 \
			   --outBam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_3/XY_3_5kb_out.bam \
               --QCfolder /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_3/XY_3_5kb_matrix_QC/

hicBuildMatrix --samFiles /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_4/XY_4_bwa_1.bam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/bwa/XY_4/XY_4_bwa_2.bam \
               --restrictionCutFile /fs/cbsuclarkfs1/storage/mrm332/NextSeq_combined_June_2021/ref_genome/dpnII_sites_masked_reference_genome.bed \
			   --restrictionSequence GATC \
			   --danglingSequence GATC \
               --binSize 5000 \
               --threads 8 \
               -o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_4/XY_4_5kb.h5 \
			   --outBam /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_4/XY_4_5kb_out.bam \
               --QCfolder /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/XY_4/XY_4_5kb_matrix_QC/			   
			   
			   
			   
			   
			   
			   
			   
			   