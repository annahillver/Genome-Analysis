#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 24:00:00
#SBATCH -J soapdenovo_validation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user anna.hillver.2473@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

#nucmer
nucmer --prefix /home/annahi/genome_analysis/03_assembly_validation/mummer_dna/soapdenovo_validation \
/home/annahi/genome_analysis/raw_data/ref_genome/sel2_NW_015504334.fna \
/home/annahi/genome_analysis/02_assembly/dna_assembly/output_soapdenovo_wgs.scafSeq

#MUMmer
mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
/home/annahi/genome_analysis/03_assembly_validation/mummer_dna/soapdenovo_validation \
/home/annahi/genome_analysis/03_assembly_validation/mummer_dna/soapdenovo_validation.delta \
-R /home/annahi/genome_analysis/raw_data/ref_genome/sel2_NW_015504334.fna \
-Q /home/annahi/genome_analysis/02_assembly/dna_assembly/output_soapdenovo_wgs.scafSeq \

