
# Flags Used In the PlasmoPeak Pipeline -- May 2026


## rule fasterq_dump:

-p creates directory if not existing, prevents error if does exist

-O specifies output

-- split-files indicates paired end file type 

## rule fasterq_dump_single:

-p creates directory if not existing, prevents error if does exist

-O specifies output

## rule download_reference_genome:

-p creates directory if not existing, prevents error if does exist


--include specifies what features you would like included (GFF3 annotation features and fasta)

--filename specifies filename

-o overwrite any existing file

-d specifies directory 

-rf removes directories and files without prompt

## rule trimmomatic_se:

-p creates directory if not existing, prevents error if does exist


-phred33 signifies quality encoding type

## rule trimmomatic_pe:

-p creates directory if not existing, prevents error if does exist

-phred33 signifies quality encoding type

## rule bwa_mapping_se:

-p creates directory if not existing, prevents error if does exist


-M short splits marked as secondary, needed for compatibility with Picard

-R specifies read group 

-bS output BAM and SAM

## rule bwa_mapping_pe:

-p creates directory if not existing, prevents error if does exist


-M short splits marked as secondary, needed for compatibility with Picard

-R specifies read group 

-bS output BAM and SAM

## rule filter_by_phred_score_se:

-b output in BAM format 

-q set quality goal (30)

## rule filter_by_phred_score_pe:

-b output in BAM format 

-q set quality goal (30)

## sort_bam_se:

-o specify output 

## sort_bam_pe

-o specify output 

## rule macs3_se:

-p creates directory if not existing, prevents error if does exist

-f single end BAM file flag or read paired as one file

-t specifies the experiment file

-g genome size indicator

-q false discovery rate threshold

--nomodel skip model building 

--shift do not move reading positions from mapping coordinates

--extsize make each fragment a certain size 

-n makes prefix for output files 

--outdir directs to results folder 

## rule macs3_pe:

-p creates directory if not existing, prevents error if does exist

-f single end BAM file flag or read paired as one file

-t specifies the experiment file

-g genome size indicator

-q false discovery rate threshold

--nomodel skip model building 

--shift do not move reading positions from mapping coordinates

--extsize make each fragment a certain size 

-n makes prefix for output files 

--outdir directs to results folder 

## rule chrom_sizes:

-f1,2 grab only the first two columns of the index file 

## rule bed_graph_pe:

-p creates directory if not existing, prevents error if does exist

-k1,1 sorts first column alphabetically 

-k2,2n sorts second column numerically 


## rule bed_graph_se:

-p creates directory if not existing, prevents error if does exist

-k1,1 sorts first column alphabetically 

-k2,2n sorts second column numerically 

## rule bigwig_pe:

-p creates directory if not existing, prevents error if does exist

## rule bigwig_se:

-p creates directory if not existing, prevents error if does exist

## rule cleanup

-rf removes directories and files without prompt


