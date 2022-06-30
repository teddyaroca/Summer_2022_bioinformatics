<img width="479" alt="Screen Shot 2021-06-01 at 1 24 25 PM" src="https://user-images.githubusercontent.com/43999021/120365648-b5958200-c2dc-11eb-8646-2845387692f8.png">

# 2022 RNA Institute Bioinformatics Fellowship
## Group 5: Andam Lab

# PROJECT 2 RESOURCES

This GitHub repository serves as a resource for students in the Andam Lab (group 5) during project 2 of the 2022 RNA Institute Bioinformatics Fellowship. Students can find information on the datasets available to them as well as tools for analysis and visualization here.

Our intention is to make this GitHub site available indefinitely as a resource for ongoing and future projects. This repository is built on previous contributions by [Spencer Bruce](mailto:sbruce@albany.edu) and has been updated most recently by [Teddy Garcia-Aroca](mailto:tgarciaaroca@albany.edu). Please, visit previous versions of this github repository at [2021_Bioinformatics_Fellowship](https://github.com/spencer411/2021_Bioinformatics_Fellowship). If you are interested in collaborating with these repositories, please contact either one of the creators.


| **CONTENTS**                                         |
| -----------------------------------------------------|
| 1. [INSTRUCTIONS](#instructions)                |
|												|
| 2. [OBJECTIVES](#objectives)                |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[a. Build a phylogenetic tree](#phylogenetics)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[b. Plotting distribution of strains per host](#Plotting distribution of strains per host)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[c. Plotting distribution of resistance genes](#Plotting distribution of resistance genes)                      |
|												  |
| 3. [DATASETS](#datasets)                        |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Metadata](#metadata)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Raw data](#raw data)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[analyses](#analyses)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[output](#output)                      |
|																			|
| 4. [DATA ANALYSIS TOOLS](#data-analysis-tools)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Donwloading genomes **(Done)**](#downloading_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Assembling genomes **(Done)**](#assembling_genomes) |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Annotation **(Done)**](#annotation)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[core genome alignments](#core_genomes)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Tree Building](#tree-building)                                        |
|																			|
| 5. [VISUALIZATION TOOLS](#visualization-tools)                              |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizations with R](#visualizations-with-r)                                |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizing Trees With iTOL](#visualizing-trees-with-itol)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Making a FastANI Heatmap](#making-a-fastani-heatmap)                        |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pan-genome Visualizations](#pan-genome-visualizations)                            |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Combining Trees and Data](#combining-trees-and-data)                            |			
|																													|
| 6. [HOW TO VIDEOS](#how-to-videos)                              |



# 1. INSTRUCTIONS

The following tutorial describes what you will be expected to do in order to complete this summer fellowship. We will be using the sequences and metadata from a manuscript published in 2018 (See datasets section below). In order to use the data and examples provided in this repository, you will have to download it from github. You can also clone the repository from the command line using the following:

```
git clone https://github.com/teddyaroca/Summer_2022_bioinformatics.git
```

Please, make sure you download the repository to your copy of this repository to your desktop computer and not to the server (Do NOT log into the server with ```ssh```)


# 2. OBJECTIVES

## a. Build a phylogenetic tree

A phylogenetic tree is one of the best methods to represent evolutionary relationships between micro- and macro-organisms. This year, we will be building a phylogenetic tree using a core genome alignment (provided).

## b. Plotting distribuiton of strains per host

In order to trace the amount of host transitions (jumps), we will be making bar- and box-plots, violin plots, scatter plots, and others that accurately represent the amount of strains per host.

## c. Plotting distribution of resistance genes

Antimicrobial resistance (AMR) are some of the most studied genes in bacteria, because the widespread distribution and frequency of bacterial diseases caused by species carrying certain AMR genes. We will plot the amount of resistance genes found in our dataset by host.

# 3. DATASETS

This year, our datasets will be based on a study by Richardson et al. (2018)[^1], in which they looked at the capability of **_Staphyloccocus aureus_** to jump across host species. In the folder "datasets" you will find a "core_genome" alignment for the entire dataset (roughly 600 strains) and individual gene alignments. Your assignment thorughout this workshop will be to build a phylogenetic tree and look a gene presence/absence of your assigned genes (around 5), summarize and plot some of the metadata for visualization purposes, and prepare slides for the final sympossium.

[^1]:Richardson, E. J., Bacigalupe, R., Harrison, E. M., Weinert, L. A., Lycett, S., Vrieling, M., Robb, K., Hoskisson, P. A., Holden, M. T. G., Feil, E. J., Paterson, G. K., Tong, S. Y. C., Shittu, A., van Wamel, W., Aanensen, D. M., Parkhill, J., Peacock, S. J., Corander, J., Holmes, M., & Fitzgerald, J. R. (2018). Gene exchange drives the ecological success of a multi-host bacterial pathogen. Nature Ecology and Evolution, 2(9), 1468–1478. https://doi.org/10.1038/s41559-018-0617-0


## metadata

This folder contains a single comma separated file (.csv file) containing all the metadata for each strain used in the Richardson et al. paper. This metadata will be useful to summarize data and create figures in R Studio.

## raw_data

This folder contains raw genomic data that will be used in your analyses. Some of these data has been pre-processed by Teddy to make your workflow easier.

## analyses

This folder contains examples of useful scripts for data analyses that will be covered in this part of the workshop. If you are comfortable sharing your code, feel free to create a folder within this folder, rename it with your name (or initials), and and add your scripts there.

## output

This folder contains output figures/tables from the scripts mentioned above. Please, create a folder with your name inside this folder and add figures/tables that you think will be useful for your presentation at the end of the workshop (final sympossium), whether you have decided to share your scripts with the rest of the group or not.


# 4. DATA ANALYSIS TOOLS

To better understand what was done here, I provide a little background about how the datasets were obtained, in case you want to emulate this in your own research in the future.

## downloading_genomes

In order to download genomes for this workshop, we extracted the accession numbers found in Supp. Table 1 (Column "ERR number") of the Richardson et al. (2018)[^1] paper. Then, saved those as TAB separated values with one accession per line. Once this file was created, the genomes were donwloaded using the [sratoolkit](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=software). You can replicate this process if you want, but the raw data downloaded from [SRA](https://www.ncbi.nlm.nih.gov/sra) was close to 600 GB in space. The file mentioned and the scripts used to download the raw data are provided in the folder named "raw_data" inside the DATASETS folder. Do the following to replicate what was done (assuming you have 600 GB of empty space in your computer/laptop).

```
cd ./datasets/core_genome/raw_data/
bash download_genomes_sra.sh

```

The raw data (".fastq" files) should start downloading in your working directory.

## Assembling_genomes


## Annotation (DONE)

Here I provide an exmple of how the genomes were annotated prior building a core genome of the sequences selected for this workshop. Although there are several tools for this sort of analysis, we will use the most popular:

**Prokka:** Whole genome annotation is the process of identifying features of interest in a set of genomic DNA sequences, and labelling them with useful information. Prokka is a software tool to annotate bacterial, archaeal and viral genomes quickly and produce standards-compliant output files. More detailed information about Prokka can be found [here](https://pubmed.ncbi.nlm.nih.gov/24642063/).


To install Prokka using conda, copy and paste the code below after creating and activating the Prokka conda environment (**Note: all the software mentioned here has been installed in the cluster already. These examples are for running in your local laptop/computer if you want**):

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

Prokka creates a folder that has several files in it based on the results of the annotation. The main file we are interested in for downstream analysis is the [.gff file](https://en.wikipedia.org/wiki/General_feature_format). This file includes both the nucleotide sequence, and the position and names of genes present in the genome. Since you will likely want to move all of the .gff files to a single folder for downstream analysis, you can use the following code from the folder that contains all your genomes to do so, by first creating a folder named "annotations" and then moving all the ".gff" files from prokka into that annotations folder.

```
mkdir annotations
mv **/*.gff annotations
```

## Core_genomes (DONE)

**Panaroo:** Panaroo is a high-speed stand-alone pan genome pipeline, which takes annotated assemblies in .gff format (produced by Prokka) and calculates the pan genome. The major difference between the two algorithms is that Panaroo is a graph-based pangenome clustering tool that is able to account for many of the sources of error introduced during the annotation of prokaryotic genome assemblies. More detailed information about Panaroo can be found [here](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-020-02090-4).

To install Panaroo using conda, copy and paste the code below after creating and activating the Panaroo conda environment:

```
conda install -c bioconda panaroo

```

Once the conda environment is activated, an example of how Panaroo might be executed in a folder full of .gff files can be found below:

```
panaroo -t 16 -i *.gff -o panaroo_results --clean-mode strict -a core
```

The code above is telling Panaroo to run using 16 threads (-t 16) utilizing all .gff files in the folder (\*.gff). It is also telling Panaroo to write the results to the folder panaroo_results (-o), using strict filtering (--clean-mode strict), and to create a core genome alignment (-a).Panaroo produces a large number of output files for downstream analysis and visualization. In fact, the majority of these output files are formatted identically. Therefore, you can use the [link](https://sanger-pathogens.github.io/Roary/) provided above from Roary to understand more about the output files and what you can with them. Again, of particular interest will be the core genome alignment (ending in .aln) which can be used to create a phylogenetic tree (see next step).


## Tree Building

Building a [phylogenetic tree](https://en.wikipedia.org/wiki/Phylogenetic_tree) is one of the most informative ways to display genomic data when examining groups of isolates. To build a phylogenetic tree you will need a core alignment file produced by Panaroo (above). These alignment files are huge, as they contain the entire genome sequence for each isolate examined, aligned. Phylogenetic trees are built on genetic differences among genome sequences, therefore all we need to build a phylogenetic tree is the variable sites from the alignment file. We can easily extract those sites using snp-sites. 

**snp-sites** Snp-sites extracts single nucleotide polymorphisms ([SNPs](https://en.wikipedia.org/wiki/Single-nucleotide_polymorphism)) from a large whole genome alignment. You can read more about snp-sites [here](https://github.com/sanger-pathogens/snp-sites#introduction).

To install snp-sites using conda, copy and paste the code below after creating and activating the snp-sites conda environment:

```
conda install -c bioconda snp-sites

```

Once the conda environment is activated, you can process your .aln file produced by Roary or Panaroo using the code below:

```
snp-sites core_gene_alignment.aln -p -o core_alignement.phy
```

This will create a phyllip format (.phy) file with only variable sites which can be used in the next step to build a [maximum likelihood tree](https://en.wikipedia.org/wiki/Computational_phylogenetics#Maximum_likelihood). To build a maximum likelihood tree we are going use 
RAxML.

**RAxML** RAxML is a program for sequential and parallel Maximum Likelihood based inference of large phylogenetic trees. It can also be used for post-analyses of sets of phylogenetic trees, analyses of alignments and, evolutionary placement of short
reads. To read more about RAxML click [here](https://academic.oup.com/bioinformatics/article/30/9/1312/238053?login=true).

To install RAxML using conda, copy and paste the code below after creating and activating the RAxML conda environment:

```
conda install -c bioconda raxml
```

Once the conda environment is activated, you can build your tree using the file created by snp-sites using the code below:

```
raxmlHPC -T 16 -s core_alignement.phy -p 12345 -m GTRGAMMA -n raxml_core_output 
```
The code above will run an algorithm to determine the best tree based on variable sites within your data (SNPs). It will create multiple output files, but the one you are interested will have the word "best" in it. In this example it would read "RAxML_bestTree.raxml_core_output". Now that you've built a tree you can open it in a tree viewer, and arrange it appropriately. For that we will use FigTree.

# 5. VISUALIZATION TOOLS

**FigTree** FigTree is designed as a graphical viewer of phylogenetic trees and as a program for producing publication-ready figures. Unlike all of the other programs we have used so far FigTree has a graphical user interface (GUI), which just means it is a regular program you download and install on your computer. You can get the latest version [here](https://github.com/rambaut/figtree/releases).

Once you have FigTree installed you can open it and import your tree by clicking File > Open, and there is your tree! We will want to properly root our tree using FigTree. To do so click Tree > Midpoint Root. As you can see this organizes your tree in a more readable way. Now that our tree is properly rooted we can export it. To do so go to File > Export Trees. At the prompt select Newick from the dropdown menu and click "Save as currently displayed. Name it something like "my_tree.tre".


**Now that you have a phylogenetic tree, you will likely want to annotate it with data.**

Hopefully at this point you have a acquired a large amount of data and are interested in visualizing that data. This is how scientists really communicate the results of their work. Below is a mix of general tools (that may be used to transform your data into figures that you conceive), along with some more specific tools (based on the analyses from above). We will start with the general:


## Visualizing Trees With iTOL

[iTOL](https://itol.embl.de/) can visualize trees with 50,000 or more leaves. With advanced search capabilities and display of unrooted, circular and regular cladograms or phylograms, exploring and navigating trees of any size is simple. There are a wide range of resources for annotating your phylogenetic trees with the data you've produced. Itol includes a number of instructive pages on [tree annotation](https://itol.embl.de/help.cgi#annot) and [how-to videos](https://itol.embl.de/video_tutorial.cgi) for your convenience.

We have worked with iTOL to set up a shared account for this fellowship. 
The user info is below: 

username: bioinfo_2021 / password: ualbany

## Visualizations With R 

At this point in the course you should be familiar with R, and more specifically R studio. There are a number of resources out there for making visualizations with R, but one of the best is the [R graph gallery](https://www.r-graph-gallery.com/). The R graph gallery not only provides inspiration in the form of beautiful visualizations, it also provides the code. One of the easiest ways to incorporate your own data into these graphs is to run the code for the graph you are interested in, see how they have the data set up, and then manipulate your data so it is set up the same way. Below are some of the visualization techniques you might consider using for your data:

[_Heatmaps_](https://www.r-graph-gallery.com/heatmap) A heatmap is a graphical representation of data where the individual values contained in a matrix are represented as colors. Heatmaps great for comparing things like ANI (specific code for that below), or differences in the number of antibiotic resistance or virulence factors.

[_Boxplots_](https://www.r-graph-gallery.com/boxplot.html) A boxplot is a standardized way of displaying the distribution of data based on a five-number summary (“minimum”, first quartile (Q1), median, third quartile (Q3), and “maximum”). It can tell you about your outliers and what their values are. Boxplots are great for comparing the number of accessory genes in the pan genome, differences in the number of antibiotic resistance or virulence factors based on specific groups in your dataset, or how the number of factors vary across time or any other grouping. A visually appealing variation of the boxplot is the [violin chart](https://www.r-graph-gallery.com/violin.html).

[Chord Diagrams](https://www.r-graph-gallery.com/chord-diagram.html) 
A Chord diagram allows for the visualization of flows between a set of entities. Chord diagrams can be used to show how genes are distributed across different groupings of your genomes. They can also be used to show how your genomes are interrelated based on any given factor (host, year, etc.). 

## Making a FastANI Heatmap

One of the analysis techniques we looked at above was FastANI. FastANI allows you to calculate the average nulceotide identity (ANI) between all pairs of genomes you are examining. This can be visualized nicely with the R code here:

```
library("reshape2")
library("ComplexHeatmap")
library("gplots")

### get data, convert to matrix
x <- read.csv("fastani_schl.csv")
matrix <- acast(x, X~Y, value.var="ANI")

### define the colors within 2 zones
breaks = seq(min(matrix), max(100), length.out=100)
gradient1 = colorpanel( sum( breaks[-1]<=95 ), "blue", "white" )
gradient2 = colorpanel( sum( breaks[-1]>95 & breaks[-1]<=100), "white", "red" )

hm.colors = c(gradient1, gradient2)
heatmap.2(matrix, scale = "none", trace = "none", col = hm.colors)
```

Prior to running this code, you should open your FastANI output in excel, remove the columns that are not needed, and rename the column headings X, Y and ANI so it looks like this:

<img width="330" alt="Screen Shot 2021-06-07 at 11 06 48 AM" src="https://user-images.githubusercontent.com/43999021/121041139-7a81cb80-c780-11eb-807a-957cd05305bb.png">

After doing so, sort your ANI column by the highest value to the lowest, and save it as a .csv file. After that you should be ready to go!

## Pan-genome Visualizations

There are many tools out there to visualize the output of Roary and Panaroo along with a tree. Some of them (straight from the [Roary website](https://sanger-pathogens.github.io/Roary/)) are listed here:

_**roary_plots.py**_ This contributed script by Marco Galardini is very useful. Additional details can be found [here](https://github.com/sanger-pathogens/Roary/tree/master/contrib/roary_plots) in the repository. It provides 3 figures, showing the tree compared to a matrix with the presence and absence of core and accessory genes. The next is a pie chart of the breakdown of genes and the number of isolate they are present in, and finally there is a graph with the frequency of genes versus the number of genomes.

<img width="477" alt="Screen Shot 2021-06-07 at 11 12 58 AM" src="https://user-images.githubusercontent.com/43999021/121042243-7c985a00-c781-11eb-9876-0da6ae7243cc.png">

By dropping the python script in the same folder as your gene_presence_absence.csv you can run the following code to create them:

```
roary_plots.py name_of_your_newick_tree_file.tre gene_presence_absence.csv
```
_**Interactive visualization with Phandango**_ James Hadfield has produced the [Phandango website](http://jameshadfield.github.io/phandango/#/) which allows for interactive visualization of the output of Roary. You can drag and drop the results into your web browser, then interactively play around with the data. There is an example data set from Roary on the website.

_**Interactive visualization with FriPan**_ David Powell has produced the [FriPan website](http://drpowell.github.io/FriPan/) which allows for interactive visualization of the output of Roary. Jason Kwong has created a [converter script](https://github.com/kwongj/roary2fripan) to transform the output of Roary into a suitable format for FriPan.

_**PanVizGenerator**_ Thomas Lin Pedersen has created an R package which allows for some excellent visualisation of the output of Roary called [PanVizGenerator](https://github.com/thomasp85/PanVizGenerator).

_**panX**_ panX can use the output of roary as input to their [excellent visualization tool](https://pangenome.tuebingen.mpg.de/).

_**Roary2SVG**_ Torsten Seemann has contributed a script called [roary2svg.pl](https://github.com/sanger-pathogens/Roary/blob/master/contrib/roary2svg/roary2svg.pl) which will produce a nice figure with the gene presence and absence of each sample, plus a count of genes.

## Combining Trees and Data

Above we introduced iTOL, an excellent tool for combining trees with data, but if you are loving R and would like to go the extra mile there are a wide array of resources for tree building. Click the links below to see some examples along with their scripts:

[Phylogenetic trees in R using ggtree](https://www.molecularecologist.com/2017/02/08/phylogenetic-trees-in-r-using-ggtree/)

[phylo.heatmap: Creates a phylogenetic heat map](https://rdrr.io/cran/phytools/man/phylo.heatmap.html)

[Plotting tree with data](https://yulab-smu.top/treedata-book/chapter7.html)

## 6. HOW TO VIDEOS

Below are links to youtube videos that explain how to carry out the analysis and visualizations above

Running analysis 1: https://youtu.be/pe3A1T1X0JY

Interpreting analysis 1 (checkm and quast): https://youtu.be/o9jKxDRdLE0

Running analysis 2 (modifying your tree and getting it in itol): https://youtu.be/AEi-hsBtgFk

ABRicate and annotating your trees in iTOL: https://youtu.be/f984TALFM4k

fastANI heat map visualization with R: https://youtu.be/LVZLESTcGxU

Editing figures with INKscape: https://youtu.be/ucSz8fifL1U

How to make a color strip in iTOL: https://youtu.be/JFb3urfgofs

How to make an AMR heatmap with diverse species: https://youtu.be/BLXKCsE1sOM






