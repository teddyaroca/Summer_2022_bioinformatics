library(rhierbaps)
library(ggtree)
library(phytools)
library(ape)

#If loading "phytools" fails, try the following.
#remotes::install_github("igraph/rigraph@master")

set.seed(1234)

#AndamLab imac
#setwd("/Volumes/LaCie/teddy/TGA_PhD/Xylaria_WGS/fastbaps_Xn_157_genomes/")

#Andamlab macBook
setwd("/Volumes/bioinformaticslab/TGarciaAroca/Group_5_Andam_Lab/analyses/")

fasta.file.name <- "../datasets/core_genome/panaroo/output/core_gene_alignment.aln"
#snp.matrix <- load_fasta(fasta.file.name) #This is very computationally intensive, so try doing it in the interactive server instead of your own laptop.

hb.results <- hierBAPS(snp.matrix, max.depth = 2, n.pops = 20, quiet = TRUE)
head(hb.results$partition.df)
unique(hb.results$partition.df$`level 1`)

#write.csv(hb.results$partition.df, "../datasets/rhierbaps/aureus_571_genomes.rhierbaps.cluster.csv")

#DO not use (unless local optimum is needed)
#hb.results <- hierBAPS(snp.matrix, max.depth = 2, n.pops = 20, n.extra.rounds = Inf, 
         #              quiet = TRUE)

#system.time(hierBAPS(snp.matrix, max.depth = 2, n.pops = 20, quiet = TRUE))

newick.file.name <- "/Volumes/bioinformaticslab/TGarciaAroca/Group_5_Andam_Lab/datasets/core_genome/raxml/RAxML_bestTree.aureus_raxml_out"
#iqtree <- mclapply(newick.file.name, phytools::read.newick, mc.cores = detectCores())
iqtree <- read.tree(newick.file.name)

# midpoint root
iqtree <- midpoint.root(iqtree)

# Plot circular
#gg <- ggtree(iqtree, layout = "circular", ladderize = T)
#gg <- gg %<+% hb.results$partition.df
#levels <- as.character(hb.results$partition.df$`level 1`)
#gg <- gg + geom_tippoint(aes(color = factor(`level 1`)))
#gg



#gg <- ggtree(iqtree, layout = "circular", branch.length = "none")
#gg <- gg %<+% hb.results$partition.df
#gg <- gg + geom_tippoint(aes(color = factor(`level 1`)))
#gg <- gg + theme(legend.position = "right")
#gg <- gg + geom_tiplab(aes(label = `level 2`), size = 1, offset = 1)
#gg


#plot_sub_cluster(hb.results, iqtree, level = 1, sub.cluster = 3)


#hb.results$lml.list



#hb.results.woodmouse <- hierBAPS(woodmouse.snp.matrix, max.depth = 2, n.extra.rounds = Inf, 
 #                                quiet = TRUE, assignment.probs = TRUE)
#head(hb.results.woodmouse$cluster.assignment.prob[[1]])




#write.csv(hb.results$partition.df, file = file.path(tempdir(), "hierbaps_partition.csv"), 
 #         col.names = TRUE, row.names = FALSE)

#save_lml_logs(hb.results, file.path(tempdir(), "hierbaps_logML.txt"))


#iqtree <- phytools::read.newick(newick.file.name)
#plot.df <- data.frame(id = colnames(sparse.data$snp.matrix), fastbaps = best.partition, 
 #                     stringsAsFactors = FALSE)

#gg <- ggtree(iqtree)

#f2 <- facet_plot(gg, panel = "fastbaps", data = plot.df, geom = geom_tile, aes(x = fastbaps), 
 #                color = "blue")
#f2



sparse.data <- optimise_prior(sparse.data, type = "optimise.symmetric")
#> [1] "Optimised hyperparameter: 0.02"
boot.result <- boot_fast_baps(sparse.data)
dendro <- as.dendrogram(fast_baps(sparse.data))
#> [1] "Calculating initial clustering..."
#> [1] "Calculating initial dk values..."
#> [1] "Clustering using hierarchical Bayesian clustering..."
gplots::heatmap.2(boot.result, dendro, dendro, tracecol = NA)



lineage_metadata <- data.frame(id=metadata.alb$AssemblyAccession, iso_source=metadata.alb$isolation_source_simplified)
new_tip_labs.alb <- data.frame(id=albido_tree$tip.label)

new_iso_source_tip.alb <- merge(new_tip_labs.alb, lineage_metadata, by="id")

#add continent information
lineage_metadata <- data.frame(id=metadata.alb$AssemblyAccession, iso_source.alb=metadata.alb$continent)
new_iso_source_tip.alb <- merge(new_iso_source_tip.alb, lineage_metadata, by="id")
colnames(new_iso_source_tip.alb) <- c("id", "iso_source", "continent")


#Plot with ggplot2 and ggtree
gg1 <- ggtree(albido_tree, layout = "rectangular", ladderize = T)  #+ geom_tiplab(align = F, linesize = 0.3, as_ylab=TRUE, color='black')
gg1 <- gg1 %<+% new_iso_source_tip.alb + xlim(NA, 0.8) +
  #levels <- as.character(hb.results$partition.df$`level 1`)
  geom_tippoint(aes(color = factor(iso_source)), size=3) + 
  geom_tiplab(aes(fill = factor(continent)), color = "black", geom = "label", label.padding = unit(0.15, "lines"), label.size = 0, size=2.5, align=TRUE, family='mono', linetype = "dotted", linesize = .2) + 
  geom_treescale(x=0.08, y=35) #+
#geom_label(aes(x=branch, label=country), fill='lightgreen')
#gg1 <- add_colorbar(gg1, country, font.size=3)#+ scale_fill_discrete(name = "isolation source") #+ theme(plot.margin = unit(c(20,10,20,10), "mm")) #+ geom_tiplab(size=3)
gg1 <- gg1 + theme(legend.position="right") + labs(tag="A") + ggtitle("S. albidoflavus") +
  theme(plot.title = element_text(size = 12, hjust = 0.1, face = "bold")) +
  scale_colour_discrete(na.translate = F, name="Isolation source") #+ # + theme(plot.margin = unit(c(2,10,2,10), "cm")) +
#geom_tiplab(aes(fill = factor(iso_source.y)),
# color = "black", # color for label font
#geom = "label",  # labels not text
#label.padding = unit(0.15, "lines"), # amount of padding around the labels
#label.size = 0)# + # size of label border
gg1

