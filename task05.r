install.packages("coala")
install.packages("phytools")
library(coala)
library(phytools)
library(learnPopGen)
coalescent.plot()
coalescent.plot()
coalescent.plot()
# Questions: 
# 1) you begin with 20 alleles and change this by adding n = "the number of alleles" in the () of coalescent.plot
# 2) The average was 16 
# 3) The average is 3
# 4) Fitness does not have a role in this simulation 
# 5) The most resent common ancestor is typically not alive in generation 0 
install.packages("coala")
model <- coal_model(sample_size = 5, loci_number = 10, loci_length = 500, ploidy = 2) + feat_mutation(10) + feat_recombination(10) + sumstat_trees() + sumstat_nucleotide_div()
stats <- simulate(model, nsim = 1)
Diversity <- stats$pi
Nloci <- length(stats$trees)
t1 <- read.tree(text=stats$trees[[1]][1])
plot(t1)
axisPhylo()
Agel <- max(nodeHeights(t1))
t2 <- read.tree(text=stats$trees[[2]][1])
plot(t2)
axisPhylo()
par(mfrow=c(1,2))
plot(t1)
axisPhylo()
compare.chronograms(t1, t2)
t1_1 <- read.tree(text=stats$trees[[1]][1])
t1_2 <- read.tree(text=stats$trees[[1]][2])
compare.chronograms(t1_1, t1_2)
for(locus in 1:Nloci) {
  ntrees <- length(stats$trees[[locus]])
  for(n in 1:ntrees){
    if(locus == 1 && n == 1) {
      outPhy <- read.tree(text=stats$trees[[locus]][n])
    }
    else {
      outPhy <- ape:::c.phylo(outPhy, read.tree(text=stats$tree[[locus]][n]))
    }
  }
}
par(mfrow=c(1,1))
densityTree(outPhy)
model3 <- coal_model(10, 50) + feat_mutation(par_prior("theta", sample.int(100, 1))) + sumstat_nucleotide_div()
stats <- simulate(model3, nism = 40)
meanpi <- sapply(stats, function(x) mean(x$pi))
theta <- sapply(stats, function(x) x$pars[["theta"]])


