#!/bin/bash -l
#SBATCH --job-name=STAR_pass2
#SBATCH --output=counts_table.o%j
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=3000
#SBATCH --time=02:30:00
#SBATCH --partition=short
#SBATCH --account=bscb02

touch sampleTable.txt    # create a file
echo sampleName,fileName,condition > sampleTable.txt  # write header to the file

for file in *ReadsPerGene.out.tab    # go through each count file
do
    awk 'NR > 4 { print }' $file | sort -k1 - | awk -v strand=3 -v OFS='\t' '{print $1, $strand}' > ${file}.srt.${1}.txt
    echo ${file}.srt.${1}.txt,${file}.srt.${1}.txt,control >> sampleTable.txt
done