#!/bin/bash -l
#SBATCH --job-name=ICE
#SBATCH --output=ICE.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=12000
#SBATCH --time=4:00:00
#SBATCH --partition=short
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17


#9

#set environment and activate hicexplorer
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
source /programs/miniconda3/bin/activate hicexplorer

####################################################################################
# Step 2 of HiC matrix correction. Requires the filter thresholds from step 1,
# runs ICE correction on the normalized matrices
# correctionMethod specifies the use of ICE
# filterThreshold sets the lower and upper thresholds
# m defines the matrix to be corrected and o is the output matrix
####################################################################################



hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.1 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_2/XO_2_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XO_2/XO_2_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_3/XO_3_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XO_3/XO_3_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.3 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XO_4/XO_4_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XO_4/XO_4_5kb_ICE.h5
			
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_2/XY_2_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XY_2/XY_2_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_3/XY_3_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XY_3/XY_3_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.1 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/XY_4/XY_4_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/XY_4/XY_4_5kb_ICE.h5


hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.15 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_2/X_Y_2_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_Y_2/X_Y_2_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_3/X_Y_3_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_Y_3/X_Y_3_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_Y_4/X_Y_4_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_Y_4/X_Y_4_5kb_ICE.h5			
			

hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.15 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_2/X_YY_2_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_YY_2/X_YY_2_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.15 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_3/X_YY_3_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_YY_3/X_YY_3_5kb_ICE.h5
			
hicCorrectMatrix correct \
			--correctionMethod ICE --filterThreshold -1.2 5 \
			-m /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/normalized/X_YY_4/X_YY_4_5kb_norm.h5 \
			-o /fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/contact_matrices/ICE_corrected/X_YY_4/X_YY_4_5kb_ICE.h5