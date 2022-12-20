
dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

library(biomformat)
library(picante)

input <- function(inputfile) {
  pfix = prefix()
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
  # Need to get the three files
  otu.path  <<- paste(pfix, parameters["OTU", 2], sep="/")
  tree.path <<- paste(pfix, parameters["TREE", 2], sep="/")
}

run <- function() {
   x <<- read.csv(otu.path)
   y <<- read.tree(tree.path)
   y.p <<- as.phylo(y)
   z <<- pd(x, y.p)
}

output <- function(outputfile) {
   write.table(z, outputfile, sep=",")
}
