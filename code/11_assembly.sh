#!/bin/bash
#PBS -N spades_output
#PBS -q default@meta-pbs.metacentrum.cz
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:ompthreads=8:mem=100gb:scratch_local=100gb
#PBS -m ae

DATADIR=/storage/praha1/home/pomao3af/rustem/Parametopidium/genome/trimmed_reads
cp $DATADIR/left_concatenated_genome_read.fastq $SCRATCHDIR/
cp $DATADIR/right_concatenated_genome_read.fastq $SCRATCHDIR/
cd $SCRATCHDIR 

mkdir spades_output
module load spades

cat *trimmed.fastq > concatenated_genome_read.fastq

spades.py -o $SCRATCHDIR/spades_output -1 $SCRATCHDIR/left_concatenated_genome_read.fastq -2 $SCRATCHDIR/right_concatenated_genome_read.fastq -t 8 -m 100

cp -r $SCRATCHDIR/spades_output/ $DATADIR/
clean_scratch 
