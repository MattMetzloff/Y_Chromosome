#!/bin/bash -l
#SBATCH --job-name=hic_sum_norm
#SBATCH --output=hic_sum_norm.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=4000
#SBATCH --time=4:00:00
#SBATCH --partition=short
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17


#7

#set environment and activate hicexplorer
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
source /programs/miniconda3/bin/activate hicexplorer

			   
			   
####################################################################################
# Normalizes given matrices to the lowest read count of all given matrices.
# After normalization, the total contact count of each matrix is equal to the
# contact count of the matrix with the smallest count.
#
# -m takes input matrices of the same size
# -n specifies to normalize all matrices to the lowest read count of given matrices
# -o is the output matrix
####################################################################################

hicNormalize -m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XO_2/XO_2_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XO_3/XO_3_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XO_4/XO_4_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XY_2/XY_2_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XY_3/XY_3_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/XY_4/XY_4_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_Y_2/X_Y_2_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_Y_3/X_Y_3_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_Y_4/X_Y_4_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_YY_2/X_YY_2_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_YY_3/X_YY_3_5kb.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/raw/X_YY_4/X_YY_4_5kb.h5 \
-n smallest \
-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_2/XO_2_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_3/XO_3_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_4/XO_4_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_2/XY_2_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_3/XY_3_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_4/XY_4_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_2/X_Y_2_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_3/X_Y_3_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_4/X_Y_4_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_2/X_YY_2_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_3/X_YY_3_5kb_norm.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_4/X_YY_4_5kb_norm.h5 \