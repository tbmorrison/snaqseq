

First time run the commandline:
sudo Rscript snaqseq --help
This will install the libraries and exit the script when done.

Required libraries: vcfR, exactci, tools, gnlm, MASS

Commandline example:
Rscript --vanilla /NGS/snaqseq/snaqseq --vc=vardict --flipped=both --flatten=F --IStoNTFile=/NGS/USAF/code/NT_IS_LOOKUP_TABLEv2.txt --wd=/NGS/CGEN/200921/snaq

## snaqseq --vc=<string> --flatten=<T or F>  --flipped <string> --IStoNTFile=<path> --wd=<path>
## vc variant caller used to create gVCF <vardict or ampliseq-hd>
## flatten 'T' if vcf contains multiple alts per row, else F
## flipped analysis 'NT', 'IS', or 'both' perform snaq-seq analysis on native or snaq control, or both sequences, respectively.
##IStoNTfile path leads to a tab separated table <NT-chrom><NT-pos><NT-ref><IS-chrom><IS-pos><IS-ref>, lower case in IS-ref column indicates base change
## wd is working directory, script processes all *vcf.gz, assumes from same directory.
##SNAQ-SEQ, TF and VarDict compatible

iss01
Calculate PET & cutoffError in aggregate.data.frame(mf[1L], mf[-1L], FUN = FUN, ...) :
  no rows to aggregate
Calls: SNAQ ... aggregate -> aggregate.formula -> aggregate.data.frame
Execution halted

