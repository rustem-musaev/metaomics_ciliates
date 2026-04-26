awk 'BEGIN {FS="\";\""} {print $3 "\t" $(NF-1)}' annotations.csv > final_annotations_rdf.tsv
