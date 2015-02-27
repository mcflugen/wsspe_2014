NAME=article
PAPER=$(NAME)
BIBDIR=../bib
BIBFILES=./article-citations.bib

# Write stdout here
#OUTPUT=/dev/null
OUTPUT=$(PAPER).out

# Use these commands
PDFLATEX=pdflatex
LATEX=latex
BIBTEX=bibtex
RM=/bin/rm
ECHO=/usr/bin/printf

# Use these compile flags
#LATEXFLAGS=-halt-on-error -interaction=batchmode
LATEXFLAGS=-interaction=batchmode
BIBTEXFLAGS=

PASS='\033[00;32mPASS\033[00m\n'
FAIL="\033[00;31mFAIL\033[00m\n"

.PHONY: clean

all: $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex $(BIBFILES)
	@$(RM) -f $(OUTPUT) 2> /dev/null || true
	@$(ECHO) "$(LATEX) $(PAPER)... "
	@($(LATEX) $(LATEXFLAGS) $(PAPER) > $(PAPER).log && $(ECHO) $(PASS)) || $(ECHO) $(FAIL) 
	@$(ECHO) "$(BIBTEX) $(PAPER)... "
	@($(BIBTEX) $(PAPER) > $(PAPER).log && $(ECHO) $(PASS)) || $(ECHO) $(FAIL) 
	@$(ECHO) "$(LATEX) $(PAPER)... "
	@($(LATEX) $(LATEXFLAGS) $(PAPER) > $(PAPER).log && $(ECHO) $(PASS)) || $(ECHO) $(FAIL) 
	@$(ECHO) "$(PDFLATEX) $(PAPER)... "
	@($(PDFLATEX) $(LATEXFLAGS) $(PAPER) > $(PAPER).log && $(ECHO) $(PASS)) || $(ECHO) $(FAIL) 
	@$(ECHO) "$(PAPER).pdf successfully created.\n"

clean:
	@$(RM) -f $(PAPER).log $(PAPER).out $(PAPER).aux $(PAPER).bbl $(PAPER).blg $(PAPER).dvi

nuke: clean
	@$(RM) -f $(PAPER).pdf

pdf: all clean

