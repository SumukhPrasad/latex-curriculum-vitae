\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{curriculum-vitae}[2023/05/17 v0.1 LaTeX class for curriculum vitae]

\renewcommand{\maketitle}{%
    \twocolumn[%
        \fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
        \fontshape{sl}\selectfont\headlinecolor
        \@title
        \medskip
        ]%
}