#!/bin/bash
fastp --in1 TACU1_1.fastq --in2 TACU1_2.fastq --out1 TACU1_1_trimmed.fastq --out2 TACU1_2_trimmed.fastq -h S1.html > S1_trimming.log; fastp --in1 TACU2_1.fastq --in2 TACU2_2.fastq --out1 TACU2_1_trimmed.fastq --out2 TACU2_2_trimmed.fastq  -h S2.html > S2_trimming.log; fastp --in1 TACU3_1.fastq --in2 TACU3_2.fastq --out1 TACU3_1_trimmed.fastq --out2 TACU3_2_trimmed.fastq  -h S3.html > S3_trimming.log; fastp --in1 TACU4_1.fastq --in2 TACU4_2.fastq --out1 TACU4_1_trimmed.fastq --out2 TACU4_2_trimmed.fastq -h S1.html > S1_trimming.log

nohup bash trimming.sh


