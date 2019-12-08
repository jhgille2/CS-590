library(NAM)       # GWAS with NAM data
library(dplyr)     # Data wrangling stuff
library(qqman)     # Nice manhattan plots
# library(caret)   # Preprocessing data (may not need)
library(reshape2)  # Reshaping data


# Load in the SoyNAM dataset
data(soynam)


# BLUPs for all traits
TraitVec <- c("yield", "maturity", "height", "lodging", "protein", "oil", "size", "fiber")
TraitBLUPs <- vector("list", length = length(TraitVec))
for(i in 1:length(TraitVec)){
  TraitBLUPs[[i]] <- BLUP(trait = TraitVec[[i]], family = "all", env = "all")
}

# Which chromosome does each marker belong to
ChrIDs <- rep(c(1:20), TraitBLUPs[[1]]$Chrom)


# GWAS for each trait
TraitGWAS <- vector('list', length = length(TraitVec))
names(TraitGWAS) <- TraitVec
for(i in 1:length(TraitGWAS)){
  TraitGWAS[[i]] <- gwas2(y = TraitBLUPs[[i]]$Phen,
                           gen = TraitBLUPs[[i]]$Gen,
                           chr = TraitBLUPs[[i]]$Chrom,
                           fam = TraitBLUPs[[i]]$Fam)

   print(noquote(paste("Finished GWAS for trait", TraitVec[[i]])))
 }

# Save to an external object
 save(TraitGWAS, file = "TraitGWAS.RData")