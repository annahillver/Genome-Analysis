#!/bin/bash

	for i in /home/annahi/genome_analysis/raw_data/sel2/wgs_data/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/annahi/genome_analysis/01_preprocessing/results_fastqc_wgs "$i"
	done
