\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{curriculum-vitae}[2023/05/17 v0.1 LaTeX class for curriculum vitae]
\LoadClass[onecolumn]{article}
\def\@name{}
\newcommand{\name}[1]{%
	\def\@name{#1}%
}
\def\@webpage{}
\newcommand{\webpage}[1]{%
	\def\@webpage{#1}%
}
\renewcommand{\maketitle}{%
	{\bf\fontsize{50}{60}\selectfont\@name}%
	\@webpage%
}
\renewcommand{\section}{%
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}%
    {1ex plus .2ex}{\large\scshape}%
}