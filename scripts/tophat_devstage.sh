#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat
#SBATCH --mail-type=ALL
#SBATCH --mail-user anna.hillver.2473@student.uu.se

# Load modules
module load bioinfo-tools
module load tophat

# cs15 + forelimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs15_forelimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719013.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719014.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719015.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719013.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719014.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719015.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719013.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719014.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719015.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719013.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719014.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719015.trim_2U.fastq.gz

# cs15 + hindlimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs15_hindlimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719016.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719017.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719018.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719016.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719017.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719018.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719016.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719017.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719018.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719016.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719017.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719018.trim_2U.fastq.gz

# cs16 + forelimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs16_forelimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719204.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719206.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719207.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719204.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719206.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719207.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719204.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719206.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719207.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719204.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719206.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719207.trim_2U.fastq.gz

# cs16 + hindlimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs16_hindlimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719212.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719214.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719242.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719212.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719214.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719242.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719212.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719214.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719242.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719212.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719214.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719242.trim_2U.fastq.gz

# cs17 + forelimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs17_forelimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719208.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719209.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719211.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719208.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719209.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719211.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719208.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719209.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719211.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719208.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719209.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719211.trim_2U.fastq.gz

# cs17 + hindlimb
tophat -o /home/annahi/genome_analysis/05_alignment/tophat/cs17_hindlimb \
/home/annahi/genome_analysis/05_alignment/bowtie \
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719213.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719241.trim_1P.fastq.gz,\
/home/annahi/genome_analysis/01_preprocessing/results_trimmomatic_rna/out_rna_1P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719213.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719241.trim_2P.fastq.gz,\
/home/annahi/genome_analysis/01_preprocessing/results_trimmomatic_rna/out_rna_2P.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719213.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719241.trim_1U.fastq.gz,\
/home/annahi/genome_analysis/01_preprocessing/results_trimmomatic_rna/out_rna_1U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719213.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/raw_data/sel2/rna_seq_data/trimmed/sel2_SRR1719241.trim_2U.fastq.gz,\
/home/annahi/genome_analysis/01_preprocessing/results_trimmomatic_rna/out_rna_2U.fastq.gz
