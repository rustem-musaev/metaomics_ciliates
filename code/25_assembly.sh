#!/bin/bash

#PBS -N spades_output
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:ompthreads=8:mem=200gb:scratch_local=200gb
#PBS
#PBS -m ae
DATADIR=/storage/brno12-cerit/home/rustem/rustem_files/rustem/tropidoatractus/assembly
cp $DATADIR/left_reads_repaired.fastq $SCRATCHDIR/
cp $DATADIR/right_reads_repaired.fastq $SCRATCHDIR/
cd $SCRATCHDIR
mkdir spades_output
module load spades
spades.py --meta -1 $SCRATCHDIR/left_reads_repaired.fastq -2 $SCRATCHDIR/right_reads_repaired.fastq -o $SCRATCHDIR/spades_output -t 8 -m 200 --only-assembler

cp -r $SCRATCHDIR/spades_output/ $DATADIR/
clean_scratch

