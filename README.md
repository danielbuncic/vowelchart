# vowelchart — vowel charts with TikZ

`vowelchart` draws vowel charts (vowel quadrilaterals and triangles) for
phonetics and linguistics with TikZ. It is a successor of the packages
`vowel` (Fukui Rei) and `pst-vowel` (Alan Munn) but works with
pdfLaTeX, XeLaTeX and LuaLaTeX and produces vector graphics.

Features:

* relative coordinates, so that vowels keep their places when the shape of
  the chart changes
* quadrilateral, rectangle, triangle, symmetric and slanted charts, or any
  shape defined by four corners; the size is set with `width` or `height`
* `\putipavowel`: place a vowel by its IPA symbol (Unicode or X-SAMPA)
* diphthong arrows (`\putdiphthong`, `\putipadiphthong`)
* labels with cleared backgrounds that interrupt the lines of the chart
  cleanly; colors and fine-tuning options for each label
* a TikZ coordinate system relative to the shape of the chart (`vowel cs`)
  and TikZ nodes for your own additions
* compatible with charts written for `vowel` and `pst-vowel`
  (`\putvowel*`, `\vowelhunit`, `\vowelvunit`)

## Example

```latex
\usepackage{vowelchart}
...
\begin{vowelchart}[width=5cm]
  \putipavowel{i}
  \putipavowel{u}
  \putipavowel[aː]{a}
  \putipadiphthong{*}{a}{ʊ}
\end{vowelchart}
```

## Installation

Put `vowelchart.sty` where LaTeX finds it, e.g. in
`texmf/tex/latex/vowelchart/`. The package requires LaTeX2e, `xparse`,
`tikz` and `contour`; all of them are part of TeX Live and MiKTeX.
(IPA symbols in Unicode require XeLaTeX or LuaLaTeX; with pdfLaTeX, use
the X-SAMPA input.)

## Documentation

`vowelchart.pdf` (source: `vowelchart.tex`). To compile the source, use
XeLaTeX or LuaLaTeX with `-shell-escape`; it needs the packages `minted`
(and Pygments), `tcolorbox`, `fontspec`, `tocloft`, `hologo`, `tipa` and
others.

## License

Copyright (C) 2026 Daniel Bunčić.

This work may be distributed and/or modified under the conditions of the
LaTeX Project Public License, either version 1.3c of this license or (at
your option) any later version. The latest version of this license is in
<https://www.latex-project.org/lppl.txt>.

This work has the LPPL maintenance status "maintained". The Current
Maintainer of this work is Daniel Bunčić.

## Contact

Daniel Bunčić, University of Cologne — <daniel.buncic@uni-koeln.de>

Source code, bug reports and feature requests: <https://github.com/danielbuncic/vowelchart>