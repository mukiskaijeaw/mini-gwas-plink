# NOTES.md

# Mini GWAS Project Notes

This file summarizes the key concepts I learned while building a mini GWAS pipeline using PLINK.

---

## 1. What is the difference between PED/MAP and BED/BIM/FAM?

PED/MAP is a text-based genotype format.

* PED contains sample information and genotypes.
* MAP contains SNP information.

BED/BIM/FAM is the binary version used by PLINK.

* BED = genotype data
* BIM = variant information
* FAM = sample information

Why convert?

Because binary files are much smaller and PLINK can process them much faster.

---

## 2. What is Minor Allele Frequency (MAF)?

MAF is the frequency of the less common allele in a population.

Example:

Genotypes:

AA, AA, AG

Allele counts:

A = 5
G = 1

MAF = 1/6 = 0.167

Why is it important?

Very rare variants are often removed before GWAS because they have limited statistical power.

PLINK command:

```bash
plink1.9 --bfile muk --freq --out muk
```

Output:

```text
muk.frq
```

---

## 3. What is Hardy-Weinberg Equilibrium (HWE)?

HWE describes the expected genotype distribution in a population under random mating.

Expected:

p² + 2pq + q²

Large deviations may indicate:

* Genotyping errors
* Population stratification
* Sample quality problems

PLINK command:

```bash
plink1.9 --bfile muk --hardy --out muk
```

Output:

```text
muk.hwe
```

---

## 4. Why do we perform PCA in GWAS?

PCA identifies population structure.

Different ancestries may have different allele frequencies.

Without PCA:

False-positive associations may occur.

PLINK command:

```bash
plink1.9 --bfile muk --pca --out muk
```

Output:

```text
muk.eigenvec
```

---

## 5. What is PI_HAT?

PI_HAT measures genetic relatedness between two individuals.

Interpretation:

* ~0.5 = parent-child or siblings
* ~0.25 = second-degree relatives
* ~0 = unrelated

PLINK command:

```bash
plink1.9 --bfile muk --genome --out muk
```

Output:

```text
muk.genome
```

---

## 6. What is LD Pruning?

LD (Linkage Disequilibrium) means nearby SNPs are correlated.

Using many highly correlated SNPs can bias PCA.

LD pruning removes redundant SNPs.

PLINK command:

```bash
plink1.9 --bfile muk \
  --indep-pairwise 50 5 0.2 \
  --out muk
```

Outputs:

```text
muk.prune.in
muk.prune.out
```

---

## 7. What is a VCF file?

VCF (Variant Call Format) is the standard format for storing genetic variants.

Many downstream tools require VCF input.

Examples:

* SHAPEIT
* Beagle
* Eagle
* Imputation pipelines

PLINK command:

```bash
plink1.9 --bfile muk \
  --recode vcf \
  --out muk
```

Output:

```text
muk.vcf
```

---

## 8. What is the overall GWAS workflow?

Input:

PED/MAP

↓

Convert to BED/BIM/FAM

↓

Calculate MAF

↓

Check Missingness

↓

Check HWE

↓

Perform PCA

↓

Estimate Relatedness

↓

LD Pruning

↓

Association Testing

↓

Export VCF

↓

Phasing (future)

↓

Imputation (future)

↓

PRS (future)

---

## Key Takeaway

This project helped me understand the fundamental genotype QC and GWAS workflow using PLINK, Linux, and Bash before moving on to larger-scale projects involving phasing, imputation, and polygenic risk scores.
