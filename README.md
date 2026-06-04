# Muk Mini GWAS Pipeline

A hands-on project designed to learn the fundamental Genome-Wide Association Study (GWAS) workflow using PLINK and Linux command-line tools.

## Objectives

This project was created to gain practical experience with genotype data processing and quality control procedures commonly used in GWAS studies.

# Muk Mini GWAS Pipeline

## 📁 Project Structure

```text
muk-gwas-project/
│
├── data/
│   ├── muk.ped
│   └── muk.map
│
├── results/
│   ├── muk.bed
│   ├── muk.bim
│   ├── muk.fam
│   ├── muk.frq
│   ├── muk.imiss
│   ├── muk.lmiss
│   ├── muk.hwe
│   ├── muk.eigenvec
│   ├── muk.eigenval
│   ├── muk.genome
│   ├── muk.prune.in
│   ├── muk.prune.out
│   ├── muk.assoc
│   └── muk.vcf
│
├── workflow.sh
└── README.md
```
## Workflow

PED/MAP

↓

BED/BIM/FAM

↓

Allele Frequency Analysis

↓

Missingness Quality Control

↓

Hardy-Weinberg Equilibrium Testing

↓

Principal Component Analysis (PCA)

↓

Relatedness Estimation

↓

LD Pruning

↓

Association Testing

## Tools Used

* Linux (WSL)
* Bash
* PLINK v1.9
* Git
* GitHub

## Files Generated

| File         | Description                        |
| ------------ | ---------------------------------- |
| muk.bed      | Binary genotype data               |
| muk.bim      | Variant information                |
| muk.fam      | Sample information                 |
| muk.frq      | Allele frequencies                 |
| muk.imiss    | Sample missingness                 |
| muk.lmiss    | Variant missingness                |
| muk.hwe      | Hardy-Weinberg equilibrium results |
| muk.eigenvec | PCA results                        |
| muk.genome   | Relatedness estimation             |
| muk.assoc    | Association test results           |

## Key Concepts Learned

* PLINK file formats
* Genotype quality control
* Minor Allele Frequency (MAF)
* Missingness filtering
* Hardy-Weinberg Equilibrium (HWE)
* Population stratification and PCA
* Identity-by-descent (IBD) and PI_HAT
* Linkage Disequilibrium (LD) pruning
* Basic GWAS association testing

## Author

Chomphunut Unmee
Bioinformatics learner
