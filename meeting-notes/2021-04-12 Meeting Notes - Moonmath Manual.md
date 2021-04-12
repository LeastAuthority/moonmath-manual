# 2021-04-12 Meeting Notes – MoonMath Manual

## Attendees
- Anna
- Jan
- Mirco
- Steve
- Sylvia

## Status reports

### Anna
- Collected papers for ecosystem overview in [`zoo-moonmath.tex`](../chapters/zoo-moonmath.tex)
- Next: will write historical overview

###Mirco
- Writing [number theory chapter](../chapters/number-theory-moonmath.tex) (Google translated from German)
- Next: add easy examples/exercises
- Define a 5-bit or 6-bit field and a curve with only cca. 20 elements, so that the reader can do the Muller algorithm by had? Use it as a running example throughout the book "Finding the least secure curve"

### Jan

- Next: write an introduction/setup guide to [SageMath](https://www.sagemath.org/).


### Steve
- Next: will write an intro to pairings.

### Sylvia
- Next: look at packages Mirco had problems with: `polydiv`, `cleveref` (can't use `usepackage` with these?)
- Trial/familiarize with [KOMA Script document classes](https://ctan.org/pkg/koma-script) 

## Agreements

- Order of chapters should be determined later, we'll focus on producing text right now
- [`excercise-solutions-moonmath.tex`](../chapters/excercise-solutions-moonmath.tex) will be an appendix with all solutions to all exercises. Solutions will be hyper-referenced to the relevant exercise in the main text.
- Self-defined macros should stay in [`main-moonmath.tex`](../main-moonmath.tex) right now
- Audience of document: practical vs. academic interest: how much detail are we going to go into? We can go into a lot of detail, but we should build up to it and start at a low level (so that "laymen" can understand it).
- Focus should be on Groth right now.
- Bandwidth: the MoonMath team has no audit work for the next 2-3 weeks, so they can focus on writing the MoonMath Manual.
- Will **not** schedule a follow-up meeting. Keep communication in Slack, have topical/ad hoc meetings when needed.

## Suggested packages

- Anna: [`exercise`](https://ctan.math.illinois.edu/macros/latex/contrib/exercises/exercises.pdf) package 
- Anna: [`crypto`](https://mirror.informatik.hs-fulda.de/tex-archive/macros/latex/contrib/cryptocode/cryptocode.pdf) package  
- Jan: [KOMA Script document classes](https://ctan.org/pkg/koma-script) `scrbook`, `scrreport`








