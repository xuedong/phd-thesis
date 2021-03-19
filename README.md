# PhD Thesis
Template largely inspired by @[DorianDepriester](https://github.com/DorianDepriester)

## Structure
The thesis is composed of the following parts:

* Front Matter
  * Abstract (in English and French) 
  * Introduction (in French)
  * Table of contents
  * List of figures
  * List of tables

1. Chapitre 1
  * Beginning quote of the chapter
  * Detailed table of contents of the chapter
  * Core
  * References of the chapter
  * Appendices of the chapter
2. Chapitre 2
  * Idem
3. Etc.

* Back Matter:
  * Technical appendices
  * List of acronyms
  * List of symbols
  * Glossary

## Compilation

The following compilation instructions or the current Makefile do not work properly yet. Use TexStudio instead.

### The whole document
Include the following commands in a Makefile:
```bash
pdflatex Main
bibtex Chapitre1
bibtex Chapitre2
makeglossaries Main
pdflatex Main
pdflatex Main
````

### Partial compilation for the sake of editing
In ``Main.tex``, modify the following line of code to precise which chapters you want to edit:
````latex
\includeonly{Chapter1,Chapter2,Appendices}
````
