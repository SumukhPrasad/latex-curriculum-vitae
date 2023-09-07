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
\def\@phone{}
\newcommand{\phone}[1]{%
	\def\@phone{#1}%
}
\def\@desc{}
\newcommand{\desc}[1]{%
	\def\@desc{#1}%
}
\def\@email{}
\newcommand{\email}[1]{%
	\def\@email{#1}%
}
\def\@mailingaddr{}
\newcommand{\mailingaddr}[1]{%
	\def\@mailingaddr{#1}%
}
\renewcommand{\maketitle}{%
	\begin{center}
	\noindent{\bf\Huge\@name}\vspace{0.5cm}\\{\sc\@desc}\vspace{0.5cm}\\{\it\@mailingaddr}\\{\@phone $\vert$ \@webpage}\vspace{0.25cm}\\%
	\noindent\rule{5cm}{0.4pt}\vspace{0.75cm}\\
	\end{center}
}

\RequirePackage{titlesec}
\titleformat{\section}{\scshape\Large}{\thesection}{1em}{}
\titleformat{\subsection}{\normalfont\bfseries}{\thesubsection}{0.5em}{}
\setcounter{secnumdepth}{-1}
\newcommand{\cvsection}[2][]{
	\noindent\begin{minipage}[t]{4cm}
		\begin{flushleft}{{\scshape\Large#1}\addcontentsline{toc}{section}{#1}}\end{flushleft}
	\end{minipage}
	\hspace{0.5cm}\begin{minipage}[t]{\dimexpr\linewidth-4.5cm\relax}
		{#2}
	\end{minipage}\vspace{0.2cm}\\
}

\newenvironment{detail}[3][]{%
    {{\bfseries#1}\addcontentsline{toc}{subsection}{#1}}\hfill#2 -- #3\\%
\small}{\normalsize\noindent\vspace{0.5cm}\\}