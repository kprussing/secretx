Macros for Marking Classified Documents
=======================================

This package implements a set of LaTeX macros for automating marking of
classified documents.  This is the spiritual successor to the
`secret.sty` package with the added benefit of getting the headers and
footers marked correctly.  The goal is to mark sections of the document
like

    \unclassified{This paragraph is unclassified}

    \confidential{This paragraph has a higher classification}

and let LaTeX do the hard work of getting the paragraph, header, and
footer markings correct.  In the long run, the goal is to get LaTeX to
handle marking the title page as well.

Installation
------------

To install from the git repository, run

    l3build install

Alternatively, you can run

    pdflatex secretx.ins
    pdflatex secretx.dtx

(repeat as necessary to resolve the references) by hand.

Usage
-----

To use, simply add `\usepackage{secretx}` to your document.

