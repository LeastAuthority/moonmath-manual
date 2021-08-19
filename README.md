This repo contains the files needed to typeset the MoonMath Manual in LaTeX. Other relevant docs:

- The planning document with initial meeting notes can be found [here](https://docs.google.com/document/d/1FrWroya2MWgugYa_44lgdfgy9KD4wXAXhgQWzwHaEl8/edit) (you need to be in the `team@leastauthority.com` Google Group to have access).
- Further meeting notes can be found [here](meeting-notes).
- The document for collecting links to sources for content and inspiration for formatting is [here](moonmath-links.md).


## Folder structure

The main `.tex` file is [`main-moonmath.tex`](main-moonmath.tex). This should only be used for formatting and front/back matter, including macros and amc theorem definitions.

The actual **content** of the chapters is stored in the folder `chapters`. Each chapter should have its own `.tex` file. Please use the following naming convention for these: `[content]-moonmath.tex `; e.g. `intro-moonmath.tex`, `zoo-moonmath.tex`, etc.

**Pre-compiled figures, graphics, logos**, etc. should be stored in the [`figures`](figures) folder. We can split these further if it becomes too messy. Please use a descriptive name for all graphic files. For consistency, use all lowercase letters in the names, with hyphens separating the words, e.g. `overleaf-github-menu.png`. For brand assets that already exist (e.g. on the company Google Drive), you can keep the original name.

**Bibliography** entries should be collected in the file [`moonmath.bib`](moonmath.bib). We're using `natbib` for **citations and references** (check out [this guide](https://www.overleaf.com/learn/latex/Bibliography_management_with_natbib) for a quick recap of how it works).

## Git workflow

Given the small number of contributors, the fact that we're mostly working with text files, and the limitations of [Overleaf integration](#overleaf-integration), we'll use a very minimal workflow with very few branches. This means that you should push to `master` in most cases, and only create a new branch if you're making breaking changes or likely to create a lot of merge conflicts.

## <a name="overleaf-integration"></a>Overleaf intergration

To facilitate collaboration with people using a WYSIWYG editor, we have an [Overleaf project for the MoonMath manual](https://www.overleaf.com/project/6061b4073b270f74b95100ad). This project is connected to the GitHub repo, but it has to be manually synced with it.

To do this, open the Overleaf project in your browser, click **Menu** in the upper left corner, then click **GitHub**. 

![](figures/overleaf-github-menu.png)

You will be able to pull changes from GitHub to Overleaf, or push Overleaf changes to GitHub.

> WARNING: Overleaf is not great at handling branches in GitHub, so it's safest to merge and delete feature branches before syncing with Overleaf.

In the best case scenario, Overleaf disregards non-`master` branches, but sometimes having a feature branch open in GitHub produces an error when trying to sync with Overleaf.


![](figures/overleaf-branch-problem.png)

> NOTE: Overleaf does not support [SageMath](https://www.sagemath.org/)'s TeX integration, so anything typeset with [SageTex](https://phubert.github.io/sagetex-tutorial.pdf) will be missing from the Overleaf version of the PDF. 





