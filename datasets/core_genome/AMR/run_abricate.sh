#!/bin/bash
#SBATCH --job-name=abricate      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=8            # Number of CPU cores per task
#SBATCH --time=48:00:00              # Time limit hrs:min:sec
#SBATCH --output=abricate.log     # Standard output and error log
#SBATCH --mail-user=tgarciaaroca@albany.edu
#SBATCH --mail-type=ALL


cd /network/rit/lab/andamlab/teddy/Summer_2022_bioinformatics/datasets/core_genome/AMR/
mkdir abricate
cd abricate

# Activate the appropriate environment
source /network/rit/lab/andamlab/bin/miniconda3/etc/profile.d/conda.sh
conda activate abricate
umask g+rwx

#run abricate against vfdb
mkdir vfdb
cd vfdb
abricate --db vfdb --quiet /network/rit/lab/andamlab/teddy/Summer_2022_bioinformatics/datasets/core_genome/assemblies/spades/all_contigs/*.fasta > abricate_vfdb_results.tab
abricate --summary abricate_vfdb_results.tab > abricate_vfdb_results.summary.tab
cd ..

#run abricate against card db
mkdir card
cd card
abricate --db card --quiet /network/rit/lab/andamlab/teddy/Summer_2022_bioinformatics/datasets/core_genome/assemblies/spades/all_contigs/*.fasta > abricate_card_results.tab
abricate --summary abricate_card_results.tab > abricate_card_results.summary.tab
cd ..

#run abricate against ncbi database
mkdir ncbi
cd ncbi
abricate --db ncbi --quiet /network/rit/lab/andamlab/teddy/Summer_2022_bioinformatics/datasets/core_genome/assemblies/spades/all_contigs/*.fasta > abricate_ncbi_results.tab
abricate --summary abricate_ncbi_results.tab > abricate_ncbi_results.summary.tab
cd ..
exit 0

