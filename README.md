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
footer markings correct.  A long term goal is to add features to get
LaTeX to handle marking many features including the title page, tables,
and figures.

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

To use, simply add `\usepackage{secretx}` to your document.  Then apply
the named macros to the paragraphs of your document as appropriate.  For
more details, see the documentation (`texdoc secretx`).

Contributing
------------

Thank you for your interest in improving this package.  `Secretx` is
open sourced under the [LaTeX Project Public License][LPPL] and welcomes
feedback via bug reports, feature requested, and pull requests.  Please
report all bugs or request a feature by submitting an issue on the
[Github][github] project page.

### Reporting Issues

When submitting a but report on [github], please include as much
information as possible to allow us to figure out what is happening.
Where possible, please try to include a simplified document
demonstrating the issue.  We do understand that the expected usage of
this package prevents inclusion of a stripped down original source, but
a bet effort to show what is happening will make it easier for us to
address the problem.

### Pull Requests

Pull requests should include:

-   Update the documentation
-   Add a `\changes` command briefly explaining the changes
-   Include a test demonstrating the new/fixed behavior
-   Be against the `trunk` branch

The development uses `l3build` to run the tests using the `pdftex`,
`xetex`, and `luatex` engines.  For more details, see `texdoc l3build`.

[LPPL]: https://opensource.org/licenses/LPPL-1.3c
[github]: https://github.com/kprussing/secretx
