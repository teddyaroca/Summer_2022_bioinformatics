#!/bin/bash
#SBATCH --job-name=prokka      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=24            # Number of CPU cores per task
#SBATCH --time=96:00:00              # Time limit hrs:min:sec
#SBATCH --output=prokka.log     # Standard output and error log
#SBATCH --mail-typ=ALL

source ~/.bashrc

#change directory to where the assemblies from spades are
cd /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/all_contigs/

#Run a look for prokka to annotate each assembly
for file in *.contigs.fasta
	do tag=${file%.contigs.fasta}
 	prokka --cpus 24 --prefix "$tag" --genus Staphyloccocus --outdir /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/prokka/output/"$tag"_prokka $file
done

#All the prokka annotation files (".gff") are needed in a single directory, so we will find them and send them to a new directory called "prokka_all_gffs" files.
cd /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/prokka/

mkdir prokka_all_gffs

find /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/prokka/output/  -name '*.gff' -exec cp -prv '{}' '/network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/prokka/prokka_all_gffs' ';'