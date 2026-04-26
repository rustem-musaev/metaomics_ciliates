makeblastdb -in blastdb/scaffolds.fasta \
-dbtype prot -parse_seqids

​​tblastn -db ~/blastdb/scaffolds.fasta \
-query query_Ondra.fasta \
-outfmt "6 sseqid sseq" \
-evalue 1E-50 > parametopidium_mitochondrial_genes.tsv

