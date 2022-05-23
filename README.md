# Andam Lab (Group 5) | 2022 RNA Institute Bioinformatics Fellowship
<img width="479" alt="Screen Shot 2021-06-01 at 1 24 25 PM" src="https://user-images.githubusercontent.com/43999021/120365648-b5958200-c2dc-11eb-8646-2845387692f8.png">

# PROJECT 2 RESOURCES

This GitHub repository serves as a resource for students during project 2 of the RNA Institute Bioinformatics Fellowship. Students can find information on the datasets available to them as well as tools for analysis and visualization here.

Our intention is to make this GitHub site available indefinitely as a resource for ongoing and future projects.

| **CONTENTS**                                         |
| -----------------------------------------------------|
| [INSTRUCTIONS](#instructions)                |
| [DATASETS](#datasets) 
- | [Metadata](#metadata)                      |
- | [Raw data](#metadata)                      |
| [DATA ANALYSIS TOOLS](#data-analysis-tools)                             |
- | [Quality Control](#quality-control)                                      | 
- | [Average Nucleotide Identity](#average-nucleotide-identity)                          |
- | [Antibiotic Resistance and Virulence](#antibiotic-resistance-and-virulence)                  |
- | [Annotation](#annotation)                                           |
- | [Pan-Genome Analysis](#pan-genome-analysis)                                  |
- | [Tree Building](#tree-building)                                        |
| [VISUALIZATION TOOLS](#visualization-tools)                              |
- | [Visualizations with R](#visualizations-with-r)                                |
- | [Visualizing Trees With iTOL](#visualizing-trees-with-itol)|
- | [Making a FastANI Heatmap](#making-a-fastani-heatmap)                             |
- | [Pan-genome Visualizations](#pan-genome-visualizations)                            |
- | [Combining Trees and Data](#combining-trees-and-data)                              |
| [HOW TO VIDEOS](#how-to-videos)                              |


# INSTRUCTIONS

## Create a github account and fork the repository from the website github.
<img width="479" alt="fork_repository_example" src="https://docs.github.com/assets/cb-6294/images/help/repository/fork_button.jpg"> 

## Follow the instructions below to clone this repository to your local computer and submit pull requests after changes have been made.

| Command | Description |
| --- | --- |
| `git clone https://github.com/<your github username>/Summer_2022_bioinformatics.git` | Clone this repository from the command line into your laptop computer |
| `cd Summer_2022_bioinformatics` | Change directory to where you downloaded the repository |
| `cd datasets` | Change directory to the folder containing datasets |
| `mkdir <your_name>` | Make a new folder and name it as first_last name |
| `cd you_name` | Change directory to the folder with your name |
| `mkdir core_genes` | Make a new directory for core genes |
| `cp ../../datasets/core_genes/<gene_name.fa>` ./ | Copy your genes to the current directory for further analyses |



# DATASETS

This year, our datasets will be based on a study by Richardson et al. (2018), in which they looked at the capability of **Staphyloccocus aureus** to jump across host species. In the folder "datasets" you will find a "core_genome" alignment for the entire dataset () and individual gene alignments. The following tutorial describes what you will be expected to do in order to complete this summer fellowship.
