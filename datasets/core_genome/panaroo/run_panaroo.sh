#!/bin/bash
#SBATCH --job-name=panaroo      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=16            # Number of CPU cores per task
#SBATCH --time=72:00:00              # Time limit hrs:min:sec
#SBATCH --output=panaroo.log     # Standard output and error log
#SBATCH --mail-type=ALL

source ~/.bashrc

#Change directory to where the all the prokka output files are found
cd /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/prokka/prokka_all_gffs/

#Run panaroo with 16 threads
panaroo -t 16 -i *.gff -o /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/panaroo/output/ --clean-mode strict -a core --remove-invalid-genes

#Panaroo will create the core genome we need for phylogenetic analyses.