library(phytools)
plot(tree, type="fan")
#Question 1) There are 5 tips and the branch lengths are not present
data <- read.csv("https://jonsmitchell.com/data/svl.csv", stringsAsFactors = F, row.names = 1)
# Question 2) it is a data set that is 1 column with 82 entires
svl <- setNames(data$svl, rownames(data))
Ancestors <- fastAnc(tree, svl, vars=TRUE, CI=TRUE)
# Question 3) the estimated values are stored in anc.states and the CI95 element is to compute 95 percent confidence intervals on the estimates
# Question 4) the assumptions made is that the trait is a continuous trait and the root node of the tree during Felsenstein's contrast algorithm is also the MLE of the Root node. 
par(mar=c(0.1,0.1,0.1,0.1))
plot(tree, type="fan", lwd=2, show.tip.label = F)
tiplabels(pch=16, cex=0.25*svl[tree$tip.label])
nodelabels(pch=16, cex=0.25*Ancestors$ace)
obj <- contMap(tree, svl, plot = F)
plot(obj, type="fan", legend=0.7*max(nodeHeights(tree)), sig=2, fsize=c(0.7,0.9))
FossilData <- data.frame(svl=log(c(25.4, 23.2, 17.7, 19.7, 24, 31)), tip1=c("Anolis_aliniger", "Anolis_aliniger", "Anolis_occultus", "Anolis_ricordii", "Anolis_cristatellus", "Anolis_occultus"), tip2=c("Anolis_chlorocyanus", "Anolis_coelestinus", "Anolis_hendersoni", "Anolis_cybotes", "Anolis_angusticeps", "Anolis_angusticeps"))
FossilNodes <- c()
NodeN <- c()
Node <- fastMRCA(tree, fossilData[i, "tip1"], FossilData[i, "tip2"])
FossilNodes[i] <- FossilData[i, "svl"]
NodeN[i] <- Node
names(FossilNodes) <- NodeN
Ancestors_withFossils <- fastAnc(tree, svl, anc.states=FossilNodes, CI=TRUE, var=TRUE)
