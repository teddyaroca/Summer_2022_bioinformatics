<img width="479" alt="Screen Shot 2021-06-01 at 1 24 25 PM" src="https://user-images.githubusercontent.com/43999021/120365648-b5958200-c2dc-11eb-8646-2845387692f8.png">

# 2022 RNA Institute Bioinformatics Fellowship
## Group 5: Andam Lab

# PROJECT 2 RESOURCES

This GitHub repository serves as a resource for students in the Andam Lab (group 5) during project 2 of the 2022 RNA Institute Bioinformatics Fellowship. Here, students will find information on the datasets available to them as well as tools for analysis and visualization purposes.

Our intention is to make this GitHub site available indefinitely as a resource for ongoing and future projects. This repository is built on previous contributions by [Spencer Bruce](mailto:sbruce@albany.edu) and has been updated most recently by [Teddy Garcia-Aroca](mailto:teddy.garcia@unl.edu). Please, visit previous versions of this github repository at [2021_Bioinformatics_Fellowship](https://github.com/spencer411/2021_Bioinformatics_Fellowship). If you are interested in collaborating with these repositories, please contact either one of the creators.


| **CONTENTS**                                         |
| -----------------------------------------------------|
| 1. [INSTRUCTIONS](#instructions)                |
|												  |
| 2. [DATA](#data)                        |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[datasets](#datasets)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[manuscript](#manuscript)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[metadata](#metadata)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[RStudio](#RStudio)                      |
|												|
| 3. [OBJECTIVES](#objectives)                |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[a. Build a phylogenetic tree](#phylogenetics)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[b. Distribution of isolates per host](#Distribution_per_host)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[c. Distribution of resistance genes](#Distribution_resistance_genes)                      |
|																			|
| 4. [DATA ANALYSIS TOOLS](#data-analysis-tools)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Donwloading genomes **(Done)**](#downloading_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Assembling genomes **(Done)**](#assembling_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Annotating genomes **(Done)**](#annotation)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Core genome alignment **(Done)**](#core_genomes)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Tree Building](#tree-building)                                        |
|																			|
| 5. [VISUALIZATION TOOLS](#visualization-tools)                              |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizations with R](#visualizations-with-r)                                |
|                                                                   |
| 6. [HOW TO VIDEOS](#how-to-videos)                              |



# 1. INSTRUCTIONS

The following tutorial describes what you will be expected to do in order to complete this summer fellowship. We will be using the sequences and metadata from a manuscript published in 2018 (See datasets section below). In order to use the data and examples provided in this repository, you will have to download it from github. You can also **clone** the repository from the command line by following these steps:

Note: don't forget that **yourNetID** refers to your own netID provided by UAlbany and **YOURFOLDER** refers to the name of your folder in the /network/rit/bioinformaticslab/ directory throughout this repository.


1. Login to the server as you did for project 1 (with ssh)

 ```
 ssh yourNetID@head.arcc.albany.edu
 ```

2. Navigate to your folder

```
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/
```

3. Clone this repository with git

```
git clone https://github.com/teddyaroca/Summer_2022_bioinformatics.git
```

4. To explore folders in the command line and run analyses:

```
cd Summer_2022_bioinformatics
``` 

At this point you should be able to see the folders and scripts in your folder in your mapped drive.

5. To update any changes to this repository:

```
git fetch
```


# 2. DATA

This year, our datasets will be based on a study by Richardson et al. (2018)[^1], in which they looked at the capability of **_Staphyloccocus aureus_** to jump across host species. This manuscript and supplementary material can be found in the "manuscript" folder. In the folder "datasets" you will find a "core_genome" alignment for the entire dataset (roughly 571 strains) to use in our initial phylogenetic analyses. In general, this is what we want you to learn thorughout this workshop will be to **build a phylogenetic tree, summarize and plot some of the metadata for visualization purposes such as plotting the number of strains per host or looking at the AMR genes chosen hosts, and prepare slides for the final sympossium.**

We will discuss these details in our regular small group meetings. 

[^1]:Richardson, E. J., Bacigalupe, R., Harrison, E. M., Weinert, L. A., Lycett, S., Vrieling, M., Robb, K., Hoskisson, P. A., Holden, M. T. G., Feil, E. J., Paterson, G. K., Tong, S. Y. C., Shittu, A., van Wamel, W., Aanensen, D. M., Parkhill, J., Peacock, S. J., Corander, J., Holmes, M., & Fitzgerald, J. R. (2018). Gene exchange drives the ecological success of a multi-host bacterial pathogen. Nature Ecology and Evolution, 2(9), 1468–1478. https://doi.org/10.1038/s41559-018-0617-0


## datasets

This directory cointains all the datasets needed for the second part of this workshop. Most files are too large to be submitted to github, so I have provided scripts to download all the data and reproduce all of the analyses **if you wish to do so**. However, please read the instructions here before you try.

## manuscript

This folder contains the Richardson et al. (2018)[^1] manuscript and supplementary figures/tables.

## metadata

This folder contains a single comma separated file (.csv file) containing all the metadata for each strain used in the Richardson et al. paper. This metadata will be useful to summarize data and create figures in RStudio.

## RStudio

This folder contains examples of useful scripts for data analyses in **RStudio** that will be covered in project 2. We will discuss this in the first and second week of our small group meetings.


# 3. OBJECTIVES

Each of you will be assigned a sequence cluster to study the distribution of strains. Generally, the first task will be to build a phylogenetic tree, then we will extract the important metadata and plot the results by host species and the amount of antimicrobial resistance (AMR) genes per host.

## a. Building a phylogenetic tree 

A phylogenetic tree is one of the best methods to represent evolutionary relationships between micro- and macro-organisms. This year, we will be building a phylogenetic tree using a core genome alignment (provided).

## b. Plotting distribution of strains per host

In order to trace the amount of host transitions (jumps), we will be making bar- and box-plots, violin plots, scatter plots, and others that accurately represent the amount of strains per host.

## c. Plotting distribution of resistance genes

Antimicrobial resistance (AMR) genes are some of the most studied genes in bacteria, because of the widespread distribution and frequency of bacterial diseases caused by species carrying certain AMR genes. We will plot the amount of resistance genes found in our datasets by host.


# 4. DATA ANALYSIS TOOLS

To better understand what was done here, I provide a little background about how the datasets were obtained, in case you want to emulate this in your own research in the future.
**Note: all the software mentioned below should be installed in the cluster (except for analyses in R, which will be done locally in your laptop/computer) in order to run the programs. These examples are for running in your local laptop/computer if you want**)

**Note: if you want to run the analyses (**not required for this part, except for RAxML analyses**), do the following:**

## Downloading raw reads from SRA (fastq files) **(DONE)**

In order to download genomes for this workshop, we extracted the accession numbers found in Supp. Table 1 (Column "ERR number") of the Richardson et al. (2018)[^1] paper. Then, saved those as TAB separated values with one accession per line. Once this file was created, the genomes were donwloaded using the [sratoolkit](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software). You can replicate this process if you want, but the raw data downloaded from [SRA](https://www.ncbi.nlm.nih.gov/sra) was close to 600 GB in space. The file mentioned and the scripts used to download the raw data are provided in the folder named "raw_data" inside the DATASETS folder. Do the following to replicate what was done (assuming you have 600 GB of empty space in your computer/laptop).

```
conda install -c bioconda sra-tools
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/raw_data/
bash download_genomes_sra.sh
```

The raw data (".fastq" files) should start downloading in your working directory. This can take several hours, perhaps even a day or two, so I suggest considering this before running this script, as the server may be taking a lot of jobs.


What's is int `download_genomes_sra.sh` script? If you do `cat download_genomes_sra.sh`,this is what you will see:

```
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
```

This is a [**while loop**](https://www.cyberciti.biz/faq/bash-while-loop/) that will take each line in the `richardson.et.al.2018.list.of.accessions.txt` file and apply both **prefetch** and **fasterq-dump** from the SRA-tools package, hence downloading the raw data needed for our analyses.


## Assembling genomes **(DONE)**

Once the raw reads have been downloaded, genomes can be assembled assembled using a commonly used program called [Spades](https://github.com/ablab/spades.git). An example script is provided in the ./datasets/core_genome/assemblies/spades/ directory.

To run this analysis, edit the script to point at your own copy of this repository in the server:

1. Go to the directory where the script is:

```
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/assemblies/spades/
```

2. Install spades with conda

```
conda install -c bioconda spades
```

3. Make the appropriate changes for spades to send the files to your folder:

```
nano run_spades.sh
```

Replace all the instances in which you see 'TGarciaAroca/project2' with YOURFOLDER/Summer_2022_bioinformatics

Hit ```control + x``` on your keyboard and save the changes.

4. Submit the job with sbatch

```
sbatch run_spades.sh
```

### What does this script do?

If you do `cat run_spades.sh`, this is what you will see:

```
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

```

While there are some comments explaining each line of code, what this script does is genome assembly using spades, renaming files recursively, and moving them to a folder where all the files can be found in subsequent analyses (annotations with prokka)


## Annotating genomes **(DONE)**

Here, you will find an exmple of how the genomes were annotated prior building a core genome of the sequences selected for this workshop. Although there are several tools for this sort of analysis, we will use the most popular:

**Prokka:** Whole genome annotation is the process of identifying features of interest in a set of genomic DNA sequences, and labelling them with useful information. Prokka is a software tool to annotate bacterial, archaeal and viral genomes quickly and produce standards-compliant output files. More detailed information about Prokka can be found [here](https://pubmed.ncbi.nlm.nih.gov/24642063/).


To run the prokka analysis:

1. Navigate to the folder containing the script for prokka 

```
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/prokka/
```

2. Install Prokka using conda:

```
conda install -c conda-forge -c bioconda -c defaults prokka
```

3. Make the appropriate changes for prokka to send the files to your folder:

```
nano run_prokka.sh
```

Replace all the instances in which you see 'TGarciaAroca/project2' with YOURFOLDER/Summer_2022_bioinformatics

Hit ```control + x``` on your keyboard and save the changes.

4. Submit the job with sbatch

```
sbatch run_prokka.sh
```

### What does the run_prokka.sh script do?

Again, if you look at the script using `cat run_prokka.sh`, this is what you will see:

```
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

```

Read the comments starting with the "#" symbol. Basically, this script annotates each genome recursively, then we find all the ".gff" files and place them in a single folder where they can be found in subsequent analyses.


## Core genome alignment **(DONE)**

**Panaroo:** Panaroo is a high-speed stand-alone pan genome pipeline, which takes annotated assemblies in .gff format (produced by Prokka) and calculates the pan genome. The major difference between the two algorithms is that Panaroo is a graph-based pangenome clustering tool that is able to account for many of the sources of error introduced during the annotation of prokaryotic genome assemblies. More detailed information about Panaroo can be found [here](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-020-02090-4).


To run the panaroo analysis:

1. Navigate to the folder containing the script for panaroo

```
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/panaroo/
```

2. Install Panaroo using conda:

```
conda install -c bioconda panaroo
```

3. Make the appropriate changes for panaroo to send the files to your folder:

```
nano run_panaroo.sh
```

Replace all the instances in which you see 'TGarciaAroca/project2' with YOURFOLDER/Summer_2022_bioinformatics

Hit ```control + x``` on your keyboard and save the changes.

4. Submit the job with sbatch

```
sbatch run_panaroo.sh
```


### What does the run_panaroo.sh script do?

You can inspect the script by running `cat run_panaroo.sh`:

```
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

```


The code above is telling Panaroo to run using 16 threads (-t 16) utilizing all .gff files in the folder (\*.gff). It is also telling Panaroo to write the results to the folder panaroo_results (-o), using strict filtering (--clean-mode strict), and to create a core genome alignment (-a). Panaroo produces a large number of output files for downstream analysis and visualization. In fact, the majority of these output files are formatted identically. Therefore, you can use the [link](https://sanger-pathogens.github.io/Roary/) provided above from Roary to understand more about the output files and what you can with them. Again, of particular interest will be the core genome alignment (ending in .aln) which can be used to create a phylogenetic tree (see next step).


## Tree Building

A [phylogenetic tree](https://en.wikipedia.org/wiki/Phylogenetic_tree) is one of the most informative ways to display genomic data when examining groups of isolates. To build a phylogenetic tree you will need a core alignment file produced by Panaroo (above). These alignment files are huge, as they contain the entire genome sequence for each isolate examined, aligned. Phylogenetic trees are built on genetic differences among genome sequences, therefore all we need to build a phylogenetic tree is the variable sites from the alignment file. We can easily extract those sites using snp-sites. 

**snp-sites**: SNP-sites extracts single nucleotide polymorphisms ([SNPs](https://en.wikipedia.org/wiki/Single-nucleotide_polymorphism)) from a large whole genome alignment. You can read more about snp-sites [here](https://github.com/sanger-pathogens/snp-sites#introduction).

SNP-sites will create a phyllip format (.phy) file with only variable sites which can be used in the next step to build a [maximum likelihood tree](https://en.wikipedia.org/wiki/Computational_phylogenetics#Maximum_likelihood). To build a maximum likelihood tree we are going use 
RAxML.


**RAxML**: RAxML is a program for sequential and parallel Maximum Likelihood based inference of large phylogenetic trees. It can also be used for post-analyses of sets of phylogenetic trees, analyses of alignments and, evolutionary placement of short
reads. To read more about RAxML click [here](https://academic.oup.com/bioinformatics/article/30/9/1312/238053?login=true).


To run the RAxML analysis and build a phylogenetic tree with the **core genome alignment** from panaroo:

1. Navigate to the folder containing the script for RAxML 

```
cd /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/raxml/
```

2. Install SNP-sites and RAxML using conda:

```
conda install -c bioconda snp-sites
```

```
conda install -c bioconda raxml
```

**Note: If you did not run all of the analyses mentioned above, copy the core gene alignment from Teddy's folder as follows**

```
cp /network/rit/lab/bioinformaticslab/TGarciaAroca/Project2/datasets/core_genome/panaroo/output/core_gene_alignment.aln /network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/panaroo/output/
```

Otherwise, you will find your own core gene alignment at ```/network/rit/lab/bioinformaticslab/YOURFOLDER/Summer_2022_bioinformatics/datasets/core_genome/panaroo/output/```.


3. Make the appropriate changes for prokka to send the files to your folder:

```
nano run_raxml.sh
```

Replace all the instances in which you see 'TGarciaAroca/project2' with YOURFOLDER/Summer_2022_bioinformatics

Hit ```control + x``` on your keyboard and save the changes.

4. Submit the job with sbatch

```
sbatch run_raxml.sh
```

### What does the run_raxml.sh script do?

Similarly, you can inspect the script by running `cat run_raxml.sh`:

```
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

```


We run RAxML with 16 threads using the core_gene alignment file in a phylip format (Note: if you are not filtering your alignment with snp-sites, reach out and we will provide a script to conver fasta to phy format for RAxML) and the GTRGAMMA model of sequence evolution to reconstruct the evolutionary relantiopships of these genomes.


# 5. VISUALIZATION TOOLS

We will be visualizing most of our data in R. I am providing specific examples to address the scientific questions and objectives mentioned above. The example can be found in the folder named **RStudio** We will discuss these examples once everyone has ran their RAxML analyses.


## Visualizations With R 

At this point in the course you should be familiar with R, and more specifically R studio. There are a number of resources out there for making visualizations with R, but one of the best is the [R graph gallery](https://www.r-graph-gallery.com/). The R graph gallery not only provides inspiration in the form of beautiful visualizations, it also provides the code. One of the easiest ways to incorporate your own data into these graphs is to run the code for the graph you are interested in, see how they have the data set up, and then manipulate your data so it is set up the same way. Below are some of the visualization techniques you might consider using for your data:

[_Heatmaps_](https://www.r-graph-gallery.com/heatmap) A heatmap is a graphical representation of data where the individual values contained in a matrix are represented as colors. Heatmaps great for comparing things like ANI (specific code for that below), or differences in the number of antibiotic resistance or virulence factors.

[_Boxplots_](https://www.r-graph-gallery.com/boxplot.html) A boxplot is a standardized way of displaying the distribution of data based on a five-number summary (“minimum”, first quartile (Q1), median, third quartile (Q3), and “maximum”). It can tell you about your outliers and what their values are. Boxplots are great for comparing the number of accessory genes in the pan genome, differences in the number of antibiotic resistance or virulence factors based on specific groups in your dataset, or how the number of factors vary across time or any other grouping. A visually appealing variation of the boxplot is the [violin chart](https://www.r-graph-gallery.com/violin.html).

[Chord Diagrams](https://www.r-graph-gallery.com/chord-diagram.html) 
A Chord diagram allows for the visualization of flows between a set of entities. Chord diagrams can be used to show how genes are distributed across different groupings of your genomes. They can also be used to show how your genomes are interrelated based on any given factor (host, year, etc.). 


# 6. HOW TO VIDEOS

Below are links to youtube videos that explain how to carry out the analysis and visualizations above

Running analysis 1: https://youtu.be/pe3A1T1X0JY

Interpreting analysis 1 (checkm and quast): https://youtu.be/o9jKxDRdLE0

Running analysis 2 (modifying your tree and getting it in itol): https://youtu.be/AEi-hsBtgFk

ABRicate and annotating your trees in iTOL: https://youtu.be/f984TALFM4k

fastANI heat map visualization with R: https://youtu.be/LVZLESTcGxU

Editing figures with INKscape: https://youtu.be/ucSz8fifL1U

How to make a color strip in iTOL: https://youtu.be/JFb3urfgofs

How to make an AMR heatmap with diverse species: https://youtu.be/BLXKCsE1sOM



# Notes after the workshop

We have included all the output files needed, including the phylogenetic tree (in datasets/core_genome/raxml) for reproducibility of the results in the RStudio examples provided in this GitHub Repository. Please, feel free to reach out if something does not work for you.




