#main snakefile
#filter reads by quality using Trimmomatic
rule trimmomatic:
#index reference genome for BWA mapping
rule index_ref:
#map reads to reference genome using BWA-MEM
rule BWA_mapping: #use -M in command to make it compatible with Picard, and pipe command to samtools
