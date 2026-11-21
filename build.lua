-- build.lua -- l3build configuration for the vowelchart package
-- Usage:  l3build doc      typeset the documentation (vowelchart.pdf)
--         l3build ctan     build the archive for the upload to CTAN
--         l3build install  install the package in the local texmf tree

module  = "vowelchart"
pkgversion = "1.0"
pkgdate    = "2026-11-21"

-- the package is a hand-written .sty file (no .dtx / .ins)
sourcefiles  = {"vowelchart.sty"}
installfiles = {"vowelchart.sty"}

-- documentation: vowelchart.tex needs XeLaTeX or LuaLaTeX and
-- shell escape (minted)
typesetfiles = {"vowelchart.tex"}
typesetexe   = "xelatex"
typesetopts  = "-interaction=nonstopmode -shell-escape"
typesetruns  = 2
docfiles     = {"vowelchart.tex"}   -- shipped as source of the PDF
textfiles    = {"README.md"}

-- CTAN
ctanpkg = "vowelchart"
ctanzip = "vowelchart"
