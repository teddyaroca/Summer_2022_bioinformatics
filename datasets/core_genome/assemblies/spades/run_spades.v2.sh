#!/bin/bash
#SBATCH --job-name=spades      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=24            # Number of CPU cores per task
#SBATCH --time=96:00:00              # Time limit hrs:min:sec
#SBATCH --output=spades.v2.log
#SBATCH --mail-type=ALL

source ~/.bashrc

#Change directory to where the output files will be sent
cd /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/output/

#Extract the names of the raw reads as a variable
for seq in /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/raw_data/*.R1.fastq
do


###Use sed to remove path and suffix###
name=$(echo $seq | sed 's:/network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/raw_data/::' | sed 's/.R1.fastq//')
echo $name

#Run spades using the names extracted above
spades.py -1 ${name}.R1.fastq -2 ${name}.R2.fastq -o /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/output/$name/
done

#We need all the assemblies named as their sample names for further analyses so we will loop across folder, find the file called "contigs.fasta" and rename it with its respective sample name

for d in *
do
 base=`basename $d`
  cd $base
    find . -type f -name "contigs.fasta"  | xargs -r rename "s/contigs.fasta/$base.contigs.fasta/"
  cd ../
done

#We need all the contigs in the same folder for further analyses, so we extract a copy from each folder

cd /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/

mkdir all_contigs

find /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/output/  -name '*.contigs.fasta' -exec cp -prv '{}' '/network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/assemblies/spades/all_contigs/' ';'

