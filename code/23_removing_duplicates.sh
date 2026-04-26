#!/bin/bash

bbnorm.sh in=../fastp/TACU1_1_trimmed.fastq out=TACU1_1_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU1_2_trimmed.fastq out=TACU1_2_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU2_1_trimmed.fastq out=TACU2_1_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU2_2_trimmed.fastq out=TACU2_2_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU3_1_trimmed.fastq out=TACU3_1_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU3_2_trimmed.fastq out=TACU3_2_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU4_1_trimmed.fastq out=TACU4_1_trimmed_normalized.fastq target=100; bbnorm.sh in=../fastp/TACU4_2_trimmed.fastq out=TACU4_2_trimmed_normalized.fastq target=100

