#!/bin/bash

# Convert PED/MAP to BED/BIM/FAM
plink1.9 --file data/muk --make-bed --out results/muk

# Allele frequency
plink1.9 --bfile results/muk --freq --out results/muk

# Missingness QC
plink1.9 --bfile results/muk --missing --out results/muk

# Hardy-Weinberg Equilibrium
plink1.9 --bfile results/muk --hardy --out results/muk

# PCA
plink1.9 --bfile results/muk --pca --out results/muk

# Relatedness
plink1.9 --bfile results/muk --genome --out results/muk

# LD pruning
plink1.9 \
  --bfile results/muk \
  --indep-pairwise 50 5 0.2 \
  --out results/muk

# Association test
plink1.9 \
  --bfile results/muk \
  --assoc \
  --out results/muk

# Export VCF
plink1.9 \
  --bfile results/muk \
  --recode vcf \
  --out results/muk
