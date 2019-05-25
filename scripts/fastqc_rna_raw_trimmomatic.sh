#!/bin/bash

	for i in /home/annahi/genome_analysis/01_preprocessing/results_trimmomatic_rna/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/annahi/genome_analysis/01_preprocessing/results_fastqc_rna_raw_trimmomatic "$i"
	done
