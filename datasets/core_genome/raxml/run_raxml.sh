#!/bin/bash
#SBATCH --job-name=raxml      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=16            # Number of CPU cores per task
#SBATCH --time=48:00:00              # Time limit hrs:min:sec
#SBATCH --output=raxml.log     # Standard output and error log
#SBATCH --mail-type=ALL

source ~/.bashrc

# Run snp-sites to obtain a core gene alignment of the (Single Nucleotide Polymorphisms) SNPs only. This is done to reduce the computational time.
snp-sites /network/rit/lab/bioinformaticslab/TGarciaAroca/project2/datasets/core_genome/panaroo/output/core_gene_alignment.aln -p -o ./core_gene_alignment.phy 

#Run raxml with 16 threads
raxmlHPC-PTHREADS -T 16 -s ./core_gene_alignment.phy -p 12345 -m GTRGAMMA -n aureus_raxml_out

