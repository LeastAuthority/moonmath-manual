This repo contains the files needed to typeset the MoonMath Manual in LaTeX. Other relevant docs:

- The planning document with initial meeting notes can be found [here](https://docs.google.com/document/d/1FrWroya2MWgugYa_44lgdfgy9KD4wXAXhgQWzwHaEl8/edit) (you need to be in the `team@leastauthority.com` Google Group to have access).
- Further meeting notes can be found [here](meeting-notes).
- The document for collecting links to sources for content and inspiration for formatting is [here](moonmath-links.md).

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Project status](#project-status)
  - [Current To Dos](#current-to-dos)
- [Chapter structure](#chapter-structure)
  - [Chapter 1: Introduction](#chapter-1-introduction)
    - [1.1 Target audience](#11-target-audience)
  - [Chapter X: The Zoo of Zero-Knowledge Proofs](#chapter-x-the-zoo-of-zero-knowledge-proofs)
  - [Chapter 2: Preliminaries](#chapter-2-preliminaries)
    - [2.1 Purpose of the book](#21-purpose-of-the-book)
    - [2.2 How to read this book](#22-how-to-read-this-book)
    - [2.3 Cryptological systems](#23-cryptological-systems)
    - [2.4 SNARKS](#24-snarks)
    - [2.5 Complexity theory](#25-complexity-theory)
      - [2.5.1 Runtime complexity](#251-runtime-complexity)
    - [2.6 Software used in this book](#26-software-used-in-this-book)
      - [2.6.1 Sagemath](#261-sagemath)
  - [Chapter 3: Arithmetics](#chapter-3-arithmetics)
    - [3.1 Integer Arithmetics](#31-integer-arithmetics)
    - [3.2 Modular Arithmetics](#32-modular-arithmetics)
    - [3.3 Polynomial Arithmetics](#33-polynomial-arithmetics)
  - [Chapter 4: Algebra](#chapter-4-algebra)
    - [4.1 Groups](#41-groups)
      - [4.1.1 Cryptographic Groups](#411-cryptographic-groups)
      - [4.1.2 Hashing to Groups](#412-hashing-to-groups)
    - [4.2 Commutative Rings](#42-commutative-rings)
    - [4.3 Fields](#43-fields)
    - [4.4 Projective Planes](#44-projective-planes)
  - [Chapter 5: Elliptic Curves](#chapter-5-elliptic-curves)
    - [5.1 Elliptic Curve Arithmetic](#51-elliptic-curve-arithmetic)
      - [5.1.1 Short Weierstraß Curves](#511-short-weierstraß-curves)
      - [5.1.2 Montgomery Curves](#512-montgomery-curves)
      - [5.1.3 Twisted Edwards Curves](#513-twisted-edwards-curves)
    - [5.2 Elliptic Curve Pairings](#52-elliptic-curve-pairings)
    - [5.3 Constructing Elliptic Curves](#53-constructing-elliptic-curves)
    - [5.4 Hashing to Curves](#54-hashing-to-curves)
    - [5.5 Classes of Elliptic Curves](#55-classes-of-elliptic-curves)
    - [5.6 Pend and Paper Example Curves](#56-pend-and-paper-example-curves)
      - [5.6.1 BLS6-6](#561-bls6-6)
      - [5.6.2 MNT4 MNT6 Cycles](#562-mnt4-mnt6-cycles)
      - [5.6.3 Edwards Curve Cycles](#563-edwards-curve-cycles)
  - [Chapter 6: Zero-Knowledge Proof Systems](#chapter-6-zero-knowledge-proof-systems)
    - [6.1 Computational Models](#61-computational-models)
    - [6.1.1 Formal Languages](#611-formal-languages)
    - [6.1.2 Circuits](#612-circuits)
    - [6.1.3 R1CS](#613-r1cs)
    - [6.1.4 QAP](#614-qap)
    - [6.1.5 QSP](#615-qsp)
    - [6.2 Proof System](#62-proof-system)
      - [6.2.1 Succinct NIZK](#621-succinct-nizk)
  - [Chapter 7: Exercises and Solutions](#chapter-7-exercises-and-solutions)
- [Folder structure](#folder-structure)
- [Git workflow](#git-workflow)
- [<a name="overleaf-integration"></a>Overleaf integration](#overleaf-integration)


# Project status

| Chapter  	|  Status 	|  Responsibility 	|  Comments 	|
|---	|---	|---	|---	|
| 1 Introduction  	|  to be done 🕰  	|  Anna 	|   	|
| 2 Preliminaries  	|  needs some rewriting on history and application, software use ✍️	|   	|   	|
| 3 Arithmetics  	|  fine for now and can be finalized ✅	| Sylvia?  	|   	|
| 4 Algebra  	|   needs introduction and some additions and more exercises, hashes ✍️	|   	|   	|
| 5 Elliptic Curves  	|  some introduction and small additions  ✍️	|   	|   	|
| 6 ZKP Systems  	|   to be written ✍️	|   Mirco	|   	|
| 7 Exercises and Solutions  	|   x	|   	|   	|

## Current To Dos

- [ ] Mirco said he wrote everything such that in contrast to math books there is no "definition" "theorem" "lemma" style. The target audience is not math-folks, so there are just definitions and theorems in the text... (There is a \begin{notation} ...\end{notation} block for notations \begin{jargon} ... \end{jargon} block for language used.)
- [ ] REFERENCES! The book contains no proofs, so we need to reference them everywhere properly
- [ ] The entire introduction section will be merged with the zoo of ZKPs (including a roadmap for next versions of the book: this version only Groth16/Pinocchio, 2nd version Proof-carying data, recursive snarks. Basically everything that makes mina, so we can ask Mina-Foundation for donation.) and current Chapter 2.1 and 2.2 -- Introduction chapter needs to be written
- [ ] 2.3 and 2.4 needs a rewriting, some history and application (All according to the theme "start easy, ramp up slowly then build complexity to expert level")
- [ ] Section "Software used" needs an introduction to circom.
- [ ] Chapter Arithmetics should be fine for now and can be finilized
- [ ] Algebra needs a better intro (keep wording simple, not to "math'y").
- [ ] Fundamental theorem of finite cyclic groups needs to be added
- [ ] There might be some more extensions that come up in later chapters
- [ ] needs more exercises (Mirco has some in mind)
- [ ] 4.1.2: Hash function might need some text about the random oracle model... more about crypto-hashs...
- [ ] re, 4.1.2: MimC hash is missing
- [ ] sage typesetting of long strings looks ugly
- [ ] fast exponentiation in prime fields is missing
- [ ] Elliptic Curves: The Pen-JubJub curve should be called "Tiny-JubJub"
- [ ] scalar multiplication needs a Log-fast algorithm
- [ ] Montgomery/Edwards curve intro-text
- [ ] pairings still needs all the examples (Mirco will compute them)
- [ ] curves y^2 = x^3 + ax + b is equivalent to y^2 = x^3 + ac^2x +bc^3 for quadratic residue c
- [ ] Finish example 92
- [ ] the BLs6_6 paragraph needs more intro into BLS curves
- [ ] Write up Phollard-Rho
- [ ] Write up stuff about history and naming convention for BLS curves

# Chapter structure
## Chapter 1: Introduction

| Status  | Responsibility  |
|---|---|
| to be done 🕰 -- see To Dos | Anna  |

### 1.1 Target audience

## Chapter X: The Zoo of Zero-Knowledge Proofs

| Status  | Responsibility  |
|---|---|
| Mirco and Anna decided to merge this with the introduction because it is too much intricate work, especially for the status of the MMM now ❌ | Anna  |

## Chapter 2: Preliminaries

| Status  | Responsibility  |
|---|---|
| needs some rewriting on history and application, software use ✍️ -- see To Dos |   |

### 2.1 Purpose of the book
### 2.2 How to read this book
### 2.3 Cryptological systems
### 2.4 SNARKS
### 2.5 Complexity theory
#### 2.5.1 Runtime complexity
### 2.6 Software used in this book
#### 2.6.1 Sagemath

## Chapter 3: Arithmetics

| Status  | Responsibility  |
|---|---|
| fine for now and can be finalized ✅ | Sylvia?  |

### 3.1 Integer Arithmetics
### 3.2 Modular Arithmetics
### 3.3 Polynomial Arithmetics

## Chapter 4: Algebra

| Status  | Responsibility  |
|---|---|
| needs introduction and some additions and more exercises, hashes ✍️  -- see To Dos |   |

### 4.1 Groups
#### 4.1.1 Cryptographic Groups
#### 4.1.2 Hashing to Groups
### 4.2 Commutative Rings
### 4.3 Fields
### 4.4 Projective Planes

## Chapter 5: Elliptic Curves

| Status  | Responsibility  |
|---|---|
| some introduction and small additions  ✍️ -- see To Dos |  |

### 5.1 Elliptic Curve Arithmetic

#### 5.1.1 Short Weierstraß Curves

#### 5.1.2 Montgomery Curves

#### 5.1.3 Twisted Edwards Curves

### 5.2 Elliptic Curve Pairings

### 5.3 Constructing Elliptic Curves

### 5.4 Hashing to Curves

### 5.5 Classes of Elliptic Curves

### 5.6 Pend and Paper Example Curves
#### 5.6.1 BLS6-6

#### 5.6.2 MNT4 MNT6 Cycles

#### 5.6.3 Edwards Curve Cycles

## Chapter 6: Zero-Knowledge Proof Systems

| Status  | Responsibility  |
|---|---|
| to be written ✍️ | Mirco  |

### 6.1 Computational Models
### 6.1.1 Formal Languages
### 6.1.2 Circuits
### 6.1.3 R1CS
### 6.1.4 QAP
### 6.1.5 QSP

### 6.2 Proof System

#### 6.2.1 Succinct NIZK


## Chapter 7: Exercises and Solutions


| Status  | Responsibility  |
|---|---|
| x | x |

# Folder structure

The main `.tex` file is [`main-moonmath.tex`](main-moonmath.tex). This should only be used for formatting and front/back matter, including macros and amc theorem definitions.

The actual **content** of the chapters is stored in the folder `chapters`. Each chapter should have its own `.tex` file. Please use the following naming convention for these: `[content]-moonmath.tex `; e.g. `intro-moonmath.tex`, `zoo-moonmath.tex`, etc.

**Pre-compiled figures, graphics, logos**, etc. should be stored in the [`figures`](figures) folder. We can split these further if it becomes too messy. Please use a descriptive name for all graphic files. For consistency, use all lowercase letters in the names, with hyphens separating the words, e.g. `overleaf-github-menu.png`. For brand assets that already exist (e.g. on the company Google Drive), you can keep the original name.

**Bibliography** entries should be collected in the file [`moonmath.bib`](moonmath.bib). We're using `natbib` for **citations and references** (check out [this guide](https://www.overleaf.com/learn/latex/Bibliography_management_with_natbib) for a quick recap of how it works).

# Git workflow

Given the small number of contributors, the fact that we're mostly working with text files, and the limitations of [Overleaf integration](#overleaf-integration), we'll use a very minimal workflow with very few branches. This means that you should push to `master` in most cases, and only create a new branch if you're making breaking changes or likely to create a lot of merge conflicts.

# <a name="overleaf-integration"></a>Overleaf integration

To facilitate collaboration with people using a WYSIWYG editor, we have an [Overleaf project for the MoonMath manual](https://www.overleaf.com/project/6061b4073b270f74b95100ad).

> To get access to the Overleaf project, ask [Margherita](mailto:margherita@leastauthority.com).

The Overleaf project is connected to the GitHub repo, but it has to be manually synced with it.


To do this, open the Overleaf project in your browser, click **Menu** in the upper left corner, then click **GitHub**.

![](figures/overleaf-github-menu.png)

You will be able to pull changes from GitHub to Overleaf, or push Overleaf changes to GitHub.

> WARNING: Overleaf is not great at handling branches in GitHub, so it's safest to merge and delete feature branches before syncing with Overleaf.

In the best case scenario, Overleaf disregards non-`master` branches, but sometimes having a feature branch open in GitHub produces an error when trying to sync with Overleaf.


![](figures/overleaf-branch-problem.png)

> NOTE: Overleaf does not support [SageMath](https://www.sagemath.org/)'s TeX integration, so anything typeset with [SageTex](https://phubert.github.io/sagetex-tutorial.pdf) will be missing from the Overleaf version of the PDF.
