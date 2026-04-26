
fastp --in1 DMS_Punky1_S9_L002_R1_001.fastq \
--in2 DMS_Punky1_S9_L002_R2_001.fastq \
--out1 DMS_Punky1_S9_L002_R1_001_trimmed.fastq \
--out2 DMS_Punky1_S9_L002_R2_001_trimmed.fastq \
-l 50 -h S9.html &> S9_trimming.log
