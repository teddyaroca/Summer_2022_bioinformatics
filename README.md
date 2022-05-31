<img width="479" alt="Screen Shot 2021-06-01 at 1 24 25 PM" src="https://user-images.githubusercontent.com/43999021/120365648-b5958200-c2dc-11eb-8646-2845387692f8.png">

# 2022 RNA Institute Bioinformatics Fellowship
## Andam Lab (Group 5)

# PROJECT 2 RESOURCES

This GitHub repository serves as a resource for students in the Andam Lab (group 5) during project 2 of the 2022 RNA Institute Bioinformatics Fellowship. Students can find information on the datasets available to them as well as tools for analysis and visualization here.

Our intention is to make this GitHub site available indefinitely as a resource for ongoing and future projects. This repository is built on previous contributions by [Spencer Bruce](mailto:sbruce@albany.edu) and has been updated most recently by [Teddy Garcia-Aroca](mailto:tgarciaaroca@albany.edu). Please, visit previous versions of this github repository at [2021_Bioinformatics_Fellowship](https://github.com/spencer411/2021_Bioinformatics_Fellowship). If you are interested in collaborating with these repositories, please contact either one of the creators.


| **CONTENTS**                                         |
| -----------------------------------------------------|
| 1. [INSTRUCTIONS](#instructions)                |
|												|
| 2. [DATASETS](#datasets)                        |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Metadata](#metadata)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Raw data](#raw_data)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[analyses](#analyses & scripts)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[output](#output)                      |
|																			|
| 3. [DATA ANALYSIS TOOLS](#data-analysis-tools)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Donwloading genomes](#downloading_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Assembling genomes](#assembling_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Annotation](#annotation)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Tree Building](#tree-building)                                        |
|																			|
| 4. [VISUALIZATION TOOLS](#visualization-tools)                              |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizations with R](#visualizations-with-r)                                |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizing Trees With iTOL](#visualizing-trees-with-itol)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Making a FastANI Heatmap](#making-a-fastani-heatmap)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pan-genome Visualizations](#pan-genome-visualizations)                            |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Combining Trees and Data](#combining-trees-and-data)                              |
| 																														|
| 5. [HOW TO VIDEOS](#how-to-videos)                              |



# INSTRUCTIONS

The following tutorial describes what you will be expected to do in order to complete this summer fellowship. We will be using github for version control for files and outputs (figures, tables, etc.). Please, try to avoid adding large files (GB) to this repository, since the amount of space is limited. The purpose of this repository is to guide you through the process of analyzing bacterial genomic data and introducing you to version control with git, an important skill in both academia and industry these days.

## First, create a github account and fork this repository from the github website (top right).

<img width="479" alt="fork_repository_example" src="https://docs.github.com/assets/cb-6294/images/help/repository/fork_button.jpg"> 

## Follow the instructions below to clone this repository to your local computer/laptop and submit pull requests after changes have been made in your own computer/laptop.

| Command | Description |
| :--- | :------------------------------------- |
| `git clone https://github.com/<your github username>/Summer_2022_bioinformatics.git` | Clone this repository from the command line into your laptop computer |
| `cd Summer_2022_bioinformatics` | Change directory to where you downloaded the repository |
| `cd datasets` | Change directory to the folder containing datasets |
| `mkdir <your_name>` | Make a new folder and name it as your_name |
| `cd your_name` | Change directory to the folder with your name |
| `mkdir data` | Make a new directory for core genes |
| `cp ../../datasets/list_core_genes/<your_name_core_genes.list.csv> ./` | Copy your list of core genes to the current directory for further analyses |
| `cd ../../` | Go back two levels to the main folder of the repository |
| `git status` | You should be able to see the changes you made (new folder) in red |
| `git add .` | This command will help you add all the changes to the current repository |
| `git commit -m "I added my list of core genes to my folder"` | This command will help you commit those changes back to github |
| `git push` | This command will help you push the changes back to your forked repository |

Once you have done all of the above, you can submit a "pull request" in the original repository at [Summer_2022_bioinformatics](https://github.com/teddyaroca/Summer_2022_bioinformatics), for your changes to take effect on the master branch.

<img width="479" alt="fork_repository_example" src="https://docs.github.com/assets/cb-26570/images/help/pull_requests/pull-request-start-review-button.png">


Note: If you are having troubles when you try `git push`, follow these instructions to add your personal token in the command line:
https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token 


## Congratulations! Now you have succesfully made changes to an existing repository and submitted those changes!

This is an important skill that is widely used in bioinformatics to create new or edit existing code/programs, make data publicly available, release new information, etc... As part of this bioinformatics workshop, please continue to add your data, processing scripts, and figures in the same fashion. My suggestion is to create another folder within the **output** directory with your name and save figures or tables or any type of output that you think will be useful for your presentation at the end of the symposium. 

# DATASETS

This year, our datasets will be based on a study by Richardson et al. (2018)[^1], in which they looked at the capability of **_Staphyloccocus aureus_** to jump across host species. In the folder "datasets" you will find a "core_genome" alignment for the entire dataset (roughly 600 strains) and individual gene alignments. Your assignment thorughout this workshop will be to build a phylogenetic tree and look a gene presence/absence of your assigned genes (around 5), summarize and plot some of the metadata for visualization purposes, and prepare slides for the final sympossium.

[^1]:Richardson, E. J., Bacigalupe, R., Harrison, E. M., Weinert, L. A., Lycett, S., Vrieling, M., Robb, K., Hoskisson, P. A., Holden, M. T. G., Feil, E. J., Paterson, G. K., Tong, S. Y. C., Shittu, A., van Wamel, W., Aanensen, D. M., Parkhill, J., Peacock, S. J., Corander, J., Holmes, M., & Fitzgerald, J. R. (2018). Gene exchange drives the ecological success of a multi-host bacterial pathogen. Nature Ecology and Evolution, 2(9), 1468–1478. https://doi.org/10.1038/s41559-018-0617-0


## metadata

This folder contains a single comma separated file (.csv file) containing all the metadata for each strain used in the Richardson et al. paper. This metadata will be useful to summarize data and create figures in R Studio.

## raw_data

This folder contains raw genomic data that will be used in your analyses. Some of these data has been pre-processed by Teddy to make your workflow easier.

## analyses & scripts

This folder contains scripts and examples of useful analyses that will be covered in the workshop. If you are comfortable sharing your code, feel free to create a folder with your name and add your scripts there.

## output

This folder contains output figures/tables from the scripts mentioned above. Please, create a folder with your name inside this folder and add figures/tables that you think will be useful for your presentation at the end of the workshop (final sympossium), whether you have decided to share your scripts with the rest of the group or not.

# DATA ANALYSIS TOOLS

To better understand what was done here, I provide a little background about how the datasets were obtained, in case you want to emulate this in your own research in the future.

## downloading_genomes

In order to download genomes for this workshop, we focussed extracted the accession numbers found in Supp. Table 1 (Column "ERR number"). Then, saved those as TAB separated values with one accession per line. Once 


## Annotation

Here I provide an exmple of how the genomes were annotated prior building a core genome of the sequences selected for this workshop.


. Although there are several tools for this sort of analysis, we will use the most popular:

**Prokka:** Whole genome annotation is the process of identifying features of interest in a set of genomic DNA sequences, and labelling them with useful information. Prokka is a software tool to annotate bacterial, archaeal and viral genomes quickly and produce standards-compliant output files. More detailed information about Prokka can be found [here](https://pubmed.ncbi.nlm.nih.gov/24642063/).


To install Prokka using conda, copy and paste the code below after creating and activating the Prokka conda environment:

```
conda install -c conda-forge -c bioconda -c defaults prokka
```

Once the conda environment is activated, an example of how Prokka might be executed in a folder full of genomes can be found below:

```
for file in *.fa; do tag=${file%.fa}; prokka --prefix "$tag" --genus Salmonella --outdir "$tag"_prokka $file; done
```

The code above is a bit complicated because of the prefix and out directory names. To get rid of the extension for these names we are using "tag" which is the filename minus the extension (e.g. tag=${file%.fa}). So, for example, if you were running this on a single genome it would look like this:

```
prokka --prefix genome_1 --genus Salmonella --outdir genome_1_prokka genome_1.fa
```

The --genus option above needs to be manipulated based on the species you are examining.

Prokka creates a folder that has several files in it based on the results of the annotation. The main file we are interested in for downstream analysis is the [.gff file](https://en.wikipedia.org/wiki/General_feature_format). This file includes both the nucleotide sequence, and the position and names of genes present in the genome. Since you will likely want to move all of the .gff files to a single folder for downstream analysis, you can use the following code from the folder that contains all your genomes to do so, assuming you first make a folder called "annotations"





