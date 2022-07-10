#!/bin/bah
#SBATCH --job-name=panaroo      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=16            # Number of CPU cores per task
#SBATCH --time=72:00:00              # Time limit hrs:min:sec
#SBATCH --output=panaroo.log     # Standard output and error log
#SBATCH --mail-type=ALL

source ~/.bashrc

#Run a while loop to download each genome with sratoolkit
while IFS= read -r line
do 
  prefetch $line && fasterq-dump $line
done < richardson.et.al.2018.list.of.accessions.txt
