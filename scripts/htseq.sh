#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J thseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user anna.hillver.2473@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# remove fasta sequence from end of .gff file
head -10082 /home/annahi/genome_analysis/04_annotation/sel2_NW_015504334.maker.output/sel2_NW_015504334.maker.output/sel2_NW_015504334.all.gff > /home/annahi/genome_analysis/04_annotation/sel2_NW_015504334.maker.output/sel2_NW_015504334.maker.output/sel2_NW_015504334_nofasta.all.gff

# total counts
htseq-count -f bam -s no -t gene -i ID /home/annahi/genome_analysis/05_alignment/tophat/accepted_hits.bam /home/annahi/genome_analysis/04_annotation/sel2_NW_015504334.maker.output/sel2_NW_015504334.maker.output/sel2_NW_015504334_nofasta.all.gff > /home/annahi/genome_analysis/06_diff_expression/htseq_results.txt

