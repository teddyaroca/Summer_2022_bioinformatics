# Andam Lab (Group 5) | 2022 RNA Institute Bioinformatics Fellowship
<img width="479" alt="Screen Shot 2021-06-01 at 1 24 25 PM" src="https://user-images.githubusercontent.com/43999021/120365648-b5958200-c2dc-11eb-8646-2845387692f8.png">

# PROJECT 2 RESOURCES

This GitHub repository serves as a resource for students during project 2 of the RNA Institute Bioinformatics Fellowship. Students can find information on the datasets available to them as well as tools for analysis and visualization here.

Our intention is to make this GitHub site available indefinitely as a resource for ongoing and future projects.

| **CONTENTS**                                         |
| -----------------------------------------------------|
| 1. [INSTRUCTIONS](#instructions)                |
| 2. [DATASETS](#datasets)                        |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Metadata](##metadata)                      |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Raw data](##raw_data)                      |
| 3. [DATA ANALYSIS TOOLS](#data-analysis-tools)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Quality Control](#quality-control)                                      | 
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Average Nucleotide Identity](#average-nucleotide-identity)                          |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Antibiotic Resistance and Virulence](#antibiotic-resistance-and-virulence)                  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Annotation](#annotation)                                           |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pan-Genome Analysis](#pan-genome-analysis)                                  |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Tree Building](#tree-building)                                        |
| 4. [VISUALIZATION TOOLS](#visualization-tools)                              |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizations with R](#visualizations-with-r)                                |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Visualizing Trees With iTOL](#visualizing-trees-with-itol)|
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Making a FastANI Heatmap](#making-a-fastani-heatmap)                             |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Pan-genome Visualizations](#pan-genome-visualizations)                            |
| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Combining Trees and Data](#combining-trees-and-data)                              |
| 5. [HOW TO VIDEOS](#how-to-videos)                              |


# INSTRUCTIONS

## Create a github account and fork the repository from the github website (top right).

<img width="479" alt="fork_repository_example" src="https://docs.github.com/assets/cb-6294/images/help/repository/fork_button.jpg"> 

## Follow the instructions below to clone this repository to your local computer/laptop and submit pull requests after changes have been made.

| Command | Description |
| :--- | :------------------------------------- |
| `git clone https://github.com/<your github username>/Summer_2022_bioinformatics.git` | Clone this repository from the command line into your laptop computer |
| `cd Summer_2022_bioinformatics` | Change directory to where you downloaded the repository |
| `cd datasets` | Change directory to the folder containing datasets |
| `mkdir <your_name>` | Make a new folder and name it as your_name |
| `cd your_name` | Change directory to the folder with your name |
| `mkdir core_genes` | Make a new directory for core genes |
| `cp ../../datasets/core_genes/<gene_name.fa> ./` | Copy your genes to the current directory for further analyses |
| `cd ../../` | Go back two levels to the main folder of the repository |
| `git status` | You should be able to see the changes you made (new folder) in red |
| `git add .` | This command will help you add all the changes to the current repository |
| `git commit -m "I added my core genes to my folder"` | This command will help you commit those changes back to github |
| `git push` | This command will help you push the changes back to your forked repository |

Once you have followed all of these steps, you can submit a "pull request" in the original repository https://github.com/teddyaroca/Summer_2022_bioinformatics.git, for your changes to take effect.

<img width="479" alt="fork_repository_example" src="https://docs.github.com/assets/cb-26570/images/help/pull_requests/pull-request-start-review-button.png">


Note: If you are having troubles when you try `git push`, follow these instructions to add your personal token in the command line:
https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token 


# DATASETS

This year, our datasets will be based on a study by Richardson et al. (2018), in which they looked at the capability of **_Staphyloccocus aureus_** to jump across host species. In the folder "datasets" you will find a "core_genome" alignment for the entire dataset (800 strains) and individual gene alignments. The following tutorial describes what you will be expected to do in order to complete this summer fellowship.

## Metadata

This folder contains a single comma separated file (.csv file) containing all the metadata for each strain used in the Richardson et al. paper. This metadata will be useful to summarize data and create figures in R Studio.




