#!/bin/bash
#SBATCH --job-name=rename      # Job name
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --mem=50gb                     # Job memory request
#SBATCH --cpus-per-task=24            # Number of CPU cores per task
#SBATCH --time=24:00:00              # Time limit hrs:min:sec
#SBATCH --output=rename.log
#SBATCH --mail-user=tgarciaaroca@albany.edu
#SBATCH --mail-type=ALL

cd output

source /network/rit/lab/andamlab/bin/miniconda3/etc/profile.d/conda.sh
conda activate spades
umask g+rwx

for d in *
do
 base=`basename $d`
  cd $base
    find . -type f -name "contigs.fasta"  | xargs -r rename "s/contigs.fasta/$base.contigs.fasta/"
  cd ../
done

