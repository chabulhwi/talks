;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "mathlib4-porting"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontspec" "") ("inputenc" "utf8") ("kotex" "") ("bookmark" "") ("hyperref" "") ("listings" "") ("biblatex-chicago" "authordate" "backend=biber")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-environments-local "semiverbatim")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "fontspec"
    "inputenc"
    "kotex"
    "bookmark"
    "hyperref"
    "listings"
    "biblatex-chicago")
   (LaTeX-add-bibliographies
    "refs"))
 :latex)

