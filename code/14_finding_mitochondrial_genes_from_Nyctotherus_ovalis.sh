sh -c "$(curl -fsSL https://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh)"

#To activate EDirect for this terminal session, please execute the following:
export PATH=${HOME}/edirect:${PATH}

epost -db nuccore -input accs_numbs.txt -format acc | efetch -format fasta > query_ovalis.fasta


