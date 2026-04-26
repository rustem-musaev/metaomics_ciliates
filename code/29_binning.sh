#!/bin/bash
#PBS -N bwa_alignment
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=8:ompthreads=8:mem=100gb:scratch_local=100gb
#PBS -m ae
DATADIR=/storage/brno12-cerit/home/rustem/rustem_files/rustem/tropidoatractus/assembly
cp $DATADIR/spades_output/scaffolds.fasta* $SCRATCHDIR/
cp $DATADIR/left_reads_repaired.fastq $SCRATCHDIR/
cp $DATADIR/right_reads_repaired.fastq $SCRATCHDIR/
cd $SCRATCHDIR
module load samtools
module load bwa
bwa mem scaffolds.fasta left_reads_repaired.fastq right_reads_repaired.fastq | samtools view -Sb - > alignments.bam
bwa index scaffolds.fasta

cp -r $SCRATCHDIR/ $DATADIR/
clean_scratch

