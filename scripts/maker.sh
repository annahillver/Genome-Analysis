#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 50:00:00
#SBATCH -J maker_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user anna.hillver.2473@student.uu.se

# Load modules
module load bioinfo-tools
module load maker

#maker
maker
