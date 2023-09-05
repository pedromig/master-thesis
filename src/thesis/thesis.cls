% thesis.cls
% Created by: Pedro Rodrigues <pedror@student.dei.uc.pt>

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{thesis}[2023/08/06 University of Coimbra Thesis Custom Style]

% TeX Package Utils
\RequirePackage{ifthen}
\RequirePackage{xkeyval}
\RequirePackage{setspace}

% Unknown Options
\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{book}}

% Parse Options
\ProcessOptionsX\relax

%% Base Class
\LoadClass[12pt,openright]{book}

%% Packages

% Language
\usepackage[portuguese,english]{babel}

% Encoding
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{fontspec}

% Math Symbols
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}
\usepackage{amsthm}

% Geometry and Colors
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[a4paper,headheight=15pt]{geometry}

% Fonts
\usepackage[mono=false]{libertine}
\usepackage[libertine]{newtxmath}
\usepackage[scaled=0.97]{zi4}
\usepackage{roboto}
\usepackage[activate={true,nocompatibility}]{microtype}
\setmonofont{Inconsolatazi4-Regular}

% Algorithm Pseudo Code
\usepackage[algochapter,ruled,lined,linesnumbered]{algorithm2e}

% Code Listing
\usepackage{listings}

% Abreviations
\usepackage[abbreviations,british]{foreign}

% Tables, Figures, etc...
\usepackage{multirow}
\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{booktabs}
\usepackage{float}
\usepackage{caption}
\usepackage{adjustbox}
\usepackage{siunitx}

% Headers, Titles, Paragraphs, etc...
\usepackage{parskip}
\usepackage{titlesec}
\usepackage[titles]{tocloft}
\usepackage{fancyhdr}
\usepackage{sectsty}

\usepackage{setspace}
\usepackage{csquotes}
\usepackage{enumitem}

% Footnote
\usepackage{scrextend}
\deffootnote[1.5em]{1.5em}{1.5em}{\textsuperscript{\thefootnotemark}\,}

% URL Formatting
\usepackage[hyphens]{url}
\usepackage{breakurl}
\usepackage{breakcites}

% Epigraph
\usepackage{epigraph}
\usepackage{etoolbox}

% Bibliography
\usepackage[backend=biber,natbib=true,url=false,doi=true,sorting=ynt]{biblatex}

%% Customization

% Color Definitions (Colourblind friendly)
\definecolor{cb_blue}{RGB}{0, 92, 169}
\definecolor{cb_orange}{RGB}{213, 94, 0}
\definecolor{cb_green}{RGB}{0, 158, 115}
\definecolor{cb_purple}{RGB}{102, 51, 153}
\definecolor{cb_pink}{RGB}{204, 121, 167}
\definecolor{cb_gray}{RGB}{153, 153, 153}
\definecolor{cb_dark_yellow}{RGB}{230, 159, 0}
\definecolor{cb_light_blue}{RGB}{86, 180, 233}
\definecolor{cb_light_yellow}{RGB}{240, 228, 66}
\definecolor{cb_dark_blue}{RGB}{0, 114, 178}

% Detect Overflows
\overfullrule=2cm

% Line Spacing
\setstretch{1.2}

% Epigraph (Chapter)
\setlength\epigraphwidth{.55\textwidth}
\setlength\epigraphrule{0pt}
\setlength\beforeepigraphskip{1\baselineskip}
\setlength\afterepigraphskip{1\baselineskip}

\makeatletter
\patchcmd{\epigraph}{\@epitext{#1}}{\itshape\@epitext{#1}}{}{}
\makeatother

% Empty Page Customization 
\usepackage{emptypage}

% Description Environment Indentation
\setlist[description]{leftmargin=1.05cm,labelindent=0.2cm}

% Depth of TOC
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}

% Headers and Footers
\renewcommand{\headrulewidth}{0.3pt}

% Headings Font Customization 
\chapterfont{\sffamily}
\sectionfont{\sffamily}
\subsectionfont{\sffamily}
\subsubsectionfont{\sffamily}

% Theorems, Definitions, and Other 
\newtheoremstyle{definition}
{10pt}   % measure of space to leave above the theorem.
{10pt}   % measure of space to leave below the theorem.
{\itshape}  % name of the font to use in the body of the theorem 
{}          % measure of space to indent 
{\bfseries} % name of head font 
{.}          % punctuation between head and body 
{ }         % space after theorem head; " " = normal interword space 
{\thmname{#1}\thmnumber{ #2}~(\thmnote{#3})} % Manually specify head

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}[section]
\newtheorem{property}{Property}[section]

% Algorithm Style
\SetKwInOut{KwIn}{Input}
\SetKwInOut{KwOut}{Output}

\SetKwComment{Comment}{$\vartriangleright$\ }{}

\DontPrintSemicolon

% Custom Operators
\DeclareMathOperator*{\argmax}{argmax}
\DeclareMathOperator*{\argmin}{argmin}

% Chapter Font in Toc
\renewcommand{\cftchapfont}{\bfseries\sffamily}

% Customize Styling Based on Single/Two-Sided Document
\ifthenelse{\boolean{@twoside}}{
  % Two-Sided Version
  \geometry{a4paper,textwidth=13.3cm,top=2.5cm,bottom=3cm}
  \usepackage{varioref}
  \usepackage[hidelinks,breaklinks,bookmarks=true,unicode=true]{hyperref}
  \usepackage{cleveref}

  \let\tmp\oddsidemargin
  \let\oddsidemargin\evensidemargin
  \let\evensidemargin\tmp
  \reversemarginpar

  % Headers And Footers
  \fancypagestyle{thesis}{
    \fancyhead{}
    \fancyhead[LE]{\thepage}
    \fancyhead[RE]{\nouppercase\rightmark}
    \fancyhead[LO]{\nouppercase\rightmark}
    \fancyhead[RO]{\thepage}

    \fancyfoot{}
  }
}{
  % One-Sided Version
  \geometry{a4paper,textwidth=13.3cm,top=2.5cm,bottom=3cm,hcentering}
  \usepackage{varioref}
  \usepackage[breaklinks,colorlinks=true,citecolor=RoyalBlue,linkcolor=RoyalBlue,urlcolor=ForestGreen,bookmarks=true,unicode=true]{hyperref}
  \usepackage{cleveref}

  \renewcommand{\sectionmark}[1]{\markright{#1}}
  \renewcommand{\subsectionmark}[1]{}

  % Headers And Footers
  \fancypagestyle{thesis}{
    \fancyhead{}
    \fancyhead[R]{\nouppercase\rightmark}
    \fancyhead[L]{\nouppercase\leftmark}

    \fancyfoot{}
    \fancyfoot[L]{\hfill\thepage\hfill}
  }
}

% Define Default Page Style
\pagestyle{thesis}

% URL Font
\urlstyle{tt}

% Avoid Useless Cross-Referencing Loops
\makeatletter
\def\@testdef #1#2#3{%
  \def\reserved@a{#3}\expandafter \ifx \csname #1@#2\endcsname
    \reserved@a \else
    \typeout{^^Jlabel #2 changed:^^J%
      \meaning\reserved@a^^J%
      \expandafter\meaning\csname #1@#2\endcsname^^J}%
    \@tempswatrue \fi}
\makeatother

% Make sure that blank pages are actually blank
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
      \hbox{}
      \vspace*{\fill}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother

% Acronyms and Glossaries
\usepackage[acronym,toc]{glossaries}

% Blank Page
\newcommand{\blankpage}{
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  \null
  \clearpage
}

% Cover Page Environment
\newenvironment{cover}{
  \thispagestyle{empty}
  \begin{center}
    }{
  \end{center}
}

% Funding Page
\newenvironment{funding}{
  \clearpage
  \thispagestyle{empty}
  \mbox{}
  \vfill
}{
  \cleardoublepage
}

% Abstract Environment
\newenvironment{abstract}[1][Abstract]{
  \clearpage
  \chapter*{#1}
  \ifthenelse{\boolean{@twoside}}{
    \markboth{}{#1}
  }{
    \markboth{#1}{}
  }
}{
  \cleardoublepage
}

% Acknowledgements Environment
\newenvironment{acknowledgments}[1][Acknowledgments]{
  \clearpage
  \chapter*{#1}
  \ifthenelse{\boolean{@twoside}}{
    \markboth{}{#1}
  }{
    \markboth{#1}{}
  }
}{
  \cleardoublepage
}

% Chapter Epigraph
\newcommand{\chquote}[3]{
  \epigraph{#1}{---~\textup{#2}\ifthenelse{\equal{#3}{}}{}{,~\emph{#3}}}
  \vspace{0.5cm}
}

% Inline Code Listing
\newcommand{\inlinecode}[1]{\lstinline[basicstyle=\ttfamily]!#1!}
\renewcommand*\thelstnumber{\arabic{lstnumber}:}