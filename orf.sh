gtfToGenePred -genePredExt lncipedia_4_0_hg19.gtf lncipedia_4_0_hg19.genePred
genePredToBed lncipedia_4_0_hg19.genePred lncipedia_4_0_hg19.bed
bedtools getfasta -fi /project/apps_database/iGenomes/Homo_sapiens/UCSC/hg19/Sequence/WholeGenomeFasta/genome.fa -bed lncipedia_4_0_hg19.bed -fo  lncipedia_4_0_hg19.fasta -name -split -s
getorf -sequence lncipedia_4_0_hg19.fasta -maxsize 700 -noreverse -find 1 -outseq lncipedia_4_0_hg19_orf.fasta

