library(phytools)
library(ape)
View(Genome_Size_Data)
install.packages("BAMM")
install.packages("STRAPP")
#The analysis I want to do for my project is to see if there is a correlation between the Genome Size and the rate of Net Diversification in different species of Gymnosperm.
#The data that is used in the analysis is the genome size of 420 different species of Gymnosperm plants that are put into a Phlylogenetic tree based on the genome size 
#With the Phylogenetic Tree, I will use that to perform a Bayesian Analysis of Macroevolutionary Mixtures to make estimates of the net diversification across the species of gymnosperm.  
#Finally, the estimates that is found, will be used to find the p-value to check to see if there is a correlation between the Genome Size and the rate of Net Diversification. 
data
Tree_data <- plot.default(data)
install.packages("BAMMtools")
install.packages("Biostrings")
install.packages("ggplot2")
install.packages("ggtree")
library("Biostrings")
library("ggplot2")
library("ggtree")
library("phytools")
setwd("~Desktop/Evolution/Tasks/Project")
Tree <- read.tree("gymno.tre.txt")
plot(Tree)
install.packages("geiger")
library("geiger")
library("BAMMtools")

x <- search_treebase(input="21792", by="id.study")
21792
ls
cd
?setwd
getwd()
setwd(~Users/acdcstiltner/Desktop)
setwd("~Desktop")
setwd("/Users/acdcstiltner/Desktop/Evolution/Tasks/Project")
Tree <- read.tree("gymno.tre.txt")
plot(Tree)
bd.ms(Tree)
max(branching.times(Tree))
x
setwd("/Users/acdcstiltner/Desktop/Evolution/Tasks/Project/DATA_DEPOSIT")
setwd("/Users/acdcstiltner/Desktop/Evolution/Tasks/Project/DATA_DEPOSIT/Supermatrix")
Tree2 <- read.tree("main.dated.supermatrix.tree.T9.tre")
plot(Tree2)
bd.ms(Tree2)
Tree2
ASTRALTree <- read.tree("gymnosperm.orthologs.790.bs10.species.rooted.tre")
plot(ASTRALTree)
bd.ms(ASTRALTree)
OrthoTree <- read.tree("orthologs.790.tre")
bd.ms(OrthoTree)
OrthoTree
install.packages("remotes")
remotes::install_github("ptitle/speciesRaster")
1
yes
plot(Tree2)
Tree2 <- read.tree("gymno.constr.final.tre")
plot(Tree2)
DRstat(Tree2)
install.packages("DRstat")
install.packages('devtools')
require(devtools)
install_github('ptitle/speciesRaster')
force = TRUE
library(speciesRaster)
DRstat <- 0
DRstat(Tree2)
Tree2
DRTree <- DRstat(Tree2)
plot(DRTree)
charToRaw(DRTree)
DRTree
options(max.print = 10000)
DRTree
CTree <- read.csv2("cval.data.txt")
CTree
plot(Tree2, tiplabels(FALSE))
Tree3 <- read.tree("gymno.constr.final.tre", tiplabels(FALSE))
plot(Tree3)
plot(Tree2)
