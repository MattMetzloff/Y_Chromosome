#!/bin/bash -l
#SBATCH --job-name=call_TADs
#SBATCH --output=call_TADs.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=3000
#SBATCH --time=24:00:00
#SBATCH --partition=regular
#SBATCH --account=bscb02

#set environment
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
source /programs/miniconda3/bin/activate hicexplorer

export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8
export PYTHONPATH=/programs/cooler-0.8.11/lib/python3.6/site-packages:/programs/cooler-0.8.11/lib64/python3.6/site-packages
export PATH=/programs/cooler-0.8.11/bin:$PATH



hicConvertFormat --matrices \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XO/matrices/XO_2_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XO/matrices/XO_3_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XO/matrices/XO_4_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XY/matrices/XY_2_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XY/matrices/XY_3_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/XY/matrices/XY_4_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_Y/matrices/X_Y_2_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_Y/matrices/X_Y_3_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_Y/matrices/X_Y_4_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_YY/matrices/X_YY_2_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_YY/matrices/X_YY_3_corrected_matrix.h5 \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/X_YY/matrices/X_YY_4_corrected_matrix.h5 \
--outFileName \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_2_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_3_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_4_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_2_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_3_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_4_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_2_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_3_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_4_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_2_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_3_corrected_matrix.cool \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_4_corrected_matrix.cool \
--inputFormat h5 --outputFormat cool



cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_2_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_2_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_3_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_3_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_4_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XO_4_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_2_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_2_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_3_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_3_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_4_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/XY_4_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_2_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_2_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_3_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_3_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_4_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_Y_4_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_2_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_2_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_3_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_3_corrected_matrix.txt
cooler dump --join /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_4_corrected_matrix.cool > /fs/cbsuclarkfs1/storage/mrm332/NextSeq_merged/TADCompare_format/individual_reps/X_YY_4_corrected_matrix.txt