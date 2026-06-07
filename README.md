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
## 🚀 How to Run

### 1. Install Dependencies (Ubuntu/WSL)

```bash
sudo apt update

sudo apt install plink1.9 git tree -y
```

Verify installation:

```bash
plink1.9 --version
git --version
tree --version
```

### 2. Clone Repository

```bash
git clone https://github.com/mukiskaijeaw/mini-gwas-plink.git

cd mini-gwas-plink
```

### 3. Run the Workflow

```bash
bash workflow.sh
```

### 4. Check Results

```bash
cat results/muk.frq
cat results/muk.hwe
cat results/muk.assoc
head results/muk.vcf
```
## Author

Chomphunut Unmee
Bioinformatics learner

## References

### GWAS

1. **PLINK 1.9 Documentation**

Purcell, S., Neale, B., Todd-Brown, K., Thomas, L., Ferreira, M. A., Bender, D., Maller, J., Sklar, P., de Bakker, P. I., Daly, M. J., & Sham, P. C. (2007). *PLINK: a tool set for whole-genome association and population-based linkage analyses*. American Journal of Human Genetics, 81(3), 559–575. https://doi.org/10.1086/519795

#### 1.1 PLINK 1.9 Official Documentation

https://www.cog-genomics.org/plink/1.9/

2. **Hardy–Weinberg Equilibrium (HWE)**

Wigginton, J. E., Cutler, D. J., & Abecasis, G. R. (2005). *A note on exact tests of Hardy–Weinberg equilibrium*. American Journal of Human Genetics, 76(5), 887–893. https://doi.org/10.1086/429864

3. **PCA in GWAS (`plink --pca`)**

Price, A. L., Patterson, N. J., Plenge, R. M., Weinblatt, M. E., Shadick, N. A., & Reich, D. (2006). *Principal components analysis corrects for stratification in genome-wide association studies*. Nature Genetics, 38(8), 904–909. https://doi.org/10.1038/ng1847

4. **Relatedness / IBD (`plink --genome`)**

Manichaikul, A., Mychaleckyj, J. C., Rich, S. S., Daly, K., Sale, M., & Chen, W. M. (2010). *Robust relationship inference in genome-wide association studies*. Bioinformatics, 26(22), 2867–2873. https://doi.org/10.1093/bioinformatics/btq559

