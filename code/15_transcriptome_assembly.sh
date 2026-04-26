#!/bin/bash
#PBS -N trinity_output
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=32:mem=100gb:scratch_local=100gb
#PBS -m ae
DATADIR=/storage/brno12-cerit/home/rustem/rustem_files/rustem/Parametopidium/transcriptome/trimmed_reads
cp $DATADIR/*concatenated_transcriptome_read.fastq $SCRATCHDIR
cd $SCRATCHDIR
mkdir trinity_output
module load trinity-2.11.0
Trinity --seqType fq --max_memory 100G --left $SCRATCHDIR/left_concatenated_transcriptome_read.fastq --right $SCRATCHDIR/right_concatenated_transcriptome_read.fastq --CPU 32 --output trinity_output --full_cleanup --no_version_check

cp -r trinity_output $DATADIR

clean_scratch

