#!/bin/bash -l
#SBATCH --job-name=combine_files
#SBATCH --output=combine.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=4000
#SBATCH --time=4:00:00
#SBATCH --partition=short
#SBATCH --account=bscb02
#SBATCH --exclude=cbsubscb17


#1


########## This file combines all raw data from our several sequencing runs using a simple command line cat command.



cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep2/raw_data/XO_rep2_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_2_1/raw_data/12416_8598_135343_HM2WGBGXH_XO_2_1_TAAACGCG_CACTATAT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_2/12817_8598_147313_HGHMTBGXK_XO_2_1_TAAACGCG_CACTATAT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_2/12817_8598_147313_HMCKTBGXK_XO_2_1_TAAACGCG_CACTATAT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_2/XO_2_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep2/raw_data/XO_rep2_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_2_1/raw_data/12416_8598_135343_HM2WGBGXH_XO_2_1_TAAACGCG_CACTATAT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_2/12817_8598_147313_HGHMTBGXK_XO_2_1_TAAACGCG_CACTATAT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_2/12817_8598_147313_HMCKTBGXK_XO_2_1_TAAACGCG_CACTATAT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_2/XO_2_R2.fastq.gz






cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep3/raw_data/XO_rep3_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_3/raw_data/12416_8598_135344_HM2WGBGXH_XO_3_CAGTGAAA_GCCGACGA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_3/12817_8598_147314_HGHMTBGXK_XO_3_CAGTGAAA_GCCGACGA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_3/12817_8598_147314_HMCKTBGXK_XO_3_CAGTGAAA_GCCGACGA_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_3/XO_3_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep3/raw_data/XO_rep3_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_3/raw_data/12416_8598_135344_HM2WGBGXH_XO_3_CAGTGAAA_GCCGACGA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_3/12817_8598_147314_HGHMTBGXK_XO_3_CAGTGAAA_GCCGACGA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_3/12817_8598_147314_HMCKTBGXK_XO_3_CAGTGAAA_GCCGACGA_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_3/XO_3_R2.fastq.gz








cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep4/raw_data/XO_rep4_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_4/raw_data/12416_8598_135345_HM2WGBGXH_XO_4_CAGTGAAA_TCGCTACT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_4/12817_8598_147315_HGHMTBGXK_XO_4_CAGTGAAA_TCGCTACT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_4/12817_8598_147315_HMCKTBGXK_XO_4_CAGTGAAA_TCGCTACT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_4/XO_4_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XO/XO_rep4/raw_data/XO_rep4_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XO/XO_4/raw_data/12416_8598_135345_HM2WGBGXH_XO_4_CAGTGAAA_TCGCTACT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XO_4/12817_8598_147315_HGHMTBGXK_XO_4_CAGTGAAA_TCGCTACT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XO_4/12817_8598_147315_HMCKTBGXK_XO_4_CAGTGAAA_TCGCTACT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XO_4/XO_4_R2.fastq.gz







cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep2/raw_data/XY_rep2_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_2/raw_data/12416_8598_135346_HM2WGBGXH_XY_2_CAGTGAAA_ACGCATAG_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_2/12817_8598_147316_HGHMTBGXK_XY_2_CAGTGAAA_ACGCATAG_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_2/12817_8598_147316_HMCKTBGXK_XY_2_CAGTGAAA_ACGCATAG_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_2/XY_2_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep2/raw_data/XY_rep2_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_2/raw_data/12416_8598_135346_HM2WGBGXH_XY_2_CAGTGAAA_ACGCATAG_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_2/12817_8598_147316_HGHMTBGXK_XY_2_CAGTGAAA_ACGCATAG_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_2/12817_8598_147316_HMCKTBGXK_XY_2_CAGTGAAA_ACGCATAG_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_2/XY_2_R2.fastq.gz









cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep3/raw_data/XY_rep3_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_3/raw_data/12416_8598_135347_HM2WGBGXH_XY_3_ACAAGCCA_AGACCAGT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_3/12817_8598_147317_HGHMTBGXK_XY_3_ACAAGCCA_AGACCAGT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_3/12817_8598_147317_HMCKTBGXK_XY_3_ACAAGCCA_AGACCAGT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_3/XY_3_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep3/raw_data/XY_rep3_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_3/raw_data/12416_8598_135347_HM2WGBGXH_XY_3_ACAAGCCA_AGACCAGT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_3/12817_8598_147317_HGHMTBGXK_XY_3_ACAAGCCA_AGACCAGT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_3/12817_8598_147317_HMCKTBGXK_XY_3_ACAAGCCA_AGACCAGT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_3/XY_3_R2.fastq.gz









cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep4/raw_data/XY_rep4_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_4/raw_data/12416_8598_135348_HM2WGBGXH_XY_4_ACAAGCCA_ATATCACT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_4/12817_8598_147318_HGHMTBGXK_XY_4_ACAAGCCA_ATATCACT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_4/12817_8598_147318_HMCKTBGXK_XY_4_ACAAGCCA_ATATCACT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_4/XY_4_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/XY/XY_rep4/raw_data/XY_rep4_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/XY/XY_4/raw_data/12416_8598_135348_HM2WGBGXH_XY_4_ACAAGCCA_ATATCACT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/XY_4/12817_8598_147318_HGHMTBGXK_XY_4_ACAAGCCA_ATATCACT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/XY_4/12817_8598_147318_HMCKTBGXK_XY_4_ACAAGCCA_ATATCACT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/XY_4/XY_4_R2.fastq.gz








cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep2/raw_data/X_Y_rep2_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_2/raw_data/12416_8598_135349_HM2WGBGXH_X_Y_2_ACAAGCCA_TCGTTAAA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_2/12817_8598_147319_HGHMTBGXK_X_Y_2_ACAAGCCA_TCGTTAAA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_2/12817_8598_147319_HMCKTBGXK_X_Y_2_ACAAGCCA_TCGTTAAA_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_2/X_Y_2_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep2/raw_data/X_Y_rep2_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_2/raw_data/12416_8598_135349_HM2WGBGXH_X_Y_2_ACAAGCCA_TCGTTAAA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_2/12817_8598_147319_HGHMTBGXK_X_Y_2_ACAAGCCA_TCGTTAAA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_2/12817_8598_147319_HMCKTBGXK_X_Y_2_ACAAGCCA_TCGTTAAA_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_2/X_Y_2_R2.fastq.gz








cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep3/raw_data/X_Y_rep3_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_3/raw_data/12416_8598_135350_HM2WGBGXH_X_Y_3_ACAAGCCA_GAGGCAGG_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_3/12817_8598_147320_HGHMTBGXK_X_Y_3_ACAAGCCA_GAGGCAGG_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_3/12817_8598_147320_HMCKTBGXK_X_Y_3_ACAAGCCA_GAGGCAGG_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_3/X_Y_3_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep3/raw_data/X_Y_rep3_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_3/raw_data/12416_8598_135350_HM2WGBGXH_X_Y_3_ACAAGCCA_GAGGCAGG_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_3/12817_8598_147320_HGHMTBGXK_X_Y_3_ACAAGCCA_GAGGCAGG_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_3/12817_8598_147320_HMCKTBGXK_X_Y_3_ACAAGCCA_GAGGCAGG_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_3/X_Y_3_R2.fastq.gz






cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep4/raw_data/X_Y_rep4_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_4/raw_data/12416_8598_135351_HM2WGBGXH_X_Y_4_ACAAGCCA_GCCAGGAT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_4/12817_8598_147321_HGHMTBGXK_X_Y_4_ACAAGCCA_GCCAGGAT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_4/12817_8598_147321_HMCKTBGXK_X_Y_4_ACAAGCCA_GCCAGGAT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_4/X_Y_4_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_Y/X_Y_rep4/raw_data/X_Y_rep4_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_Y/X_Y_4/raw_data/12416_8598_135351_HM2WGBGXH_X_Y_4_ACAAGCCA_GCCAGGAT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_Y_4/12817_8598_147321_HGHMTBGXK_X_Y_4_ACAAGCCA_GCCAGGAT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_Y_4/12817_8598_147321_HMCKTBGXK_X_Y_4_ACAAGCCA_GCCAGGAT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_Y_4/X_Y_4_R2.fastq.gz







cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep2/raw_data/X_YY_rep2_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_2/raw_data/12416_8598_135352_HM2WGBGXH_X_YY_2_ACAAGCCA_GCCGACGA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_YY_2/12817_8598_147322_HGHMTBGXK_X_YY_2_ACAAGCCA_GCCGACGA_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_YY_2/12817_8598_147322_HMCKTBGXK_X_YY_2_ACAAGCCA_GCCGACGA_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_2/X_YY_2_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep2/raw_data/X_YY_rep2_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_2/raw_data/12416_8598_135352_HM2WGBGXH_X_YY_2_ACAAGCCA_GCCGACGA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Oct_2021/X_YY_2/12817_8598_147322_HGHMTBGXK_X_YY_2_ACAAGCCA_GCCGACGA_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_Nov_2021/X_YY_2/12817_8598_147322_HMCKTBGXK_X_YY_2_ACAAGCCA_GCCGACGA_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_2/X_YY_2_R2.fastq.gz










cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep3/raw_data/X_YY_rep3_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_3/raw_data/12416_8598_135353_HM2WGBGXH_X_YY_3_ACAAGCCA_TCGCTACT_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_sept_2021/X_YY_3/raw_data/12714_8598_145622_H3FFTAFX3_X_YY_3_ACAAGCCA_TCGCTACT_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_3/X_YY_3_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep3/raw_data/X_YY_rep3_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_3/raw_data/12416_8598_135353_HM2WGBGXH_X_YY_3_ACAAGCCA_TCGCTACT_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_sept_2021/X_YY_3/raw_data/12714_8598_145622_H3FFTAFX3_X_YY_3_ACAAGCCA_TCGCTACT_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_3/X_YY_3_R2.fastq.gz






cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep4/raw_data/X_YY_rep4_R1.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_4/raw_data/12416_8598_135354_HM2WGBGXH_X_YY_4_ACAAGCCA_ACGCATAG_R1.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_4/X_YY_4_R1.fastq.gz

cat /fs/cbsuclarkfs1/storage/mrm332/NextSeq_shallow_feb_2021/X_YY/X_YY_rep4/raw_data/X_YY_rep4_R2.fastq.gz \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_deep_may_2021/X_YY/X_YY_4/raw_data/12416_8598_135354_HM2WGBGXH_X_YY_4_ACAAGCCA_ACGCATAG_R2.fastq.gz > \
/fs/cbsuclarkfs1/storage/mrm332/NextSeq_all_merged/raw_data/X_YY_4/X_YY_4_R2.fastq.gz