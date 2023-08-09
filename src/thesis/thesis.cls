% ucthesis.cls
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

% Geometry and Colors
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[a4paper,headheight=15pt]{geometry}

% Fonts
\usepackage[mono=false]{libertine}
\usepackage[libertine]{newtxmath}
\usepackage[scaled=0.97]{zi4}
\usepackage{roboto}
\usepackage[activate={true,nocompatibility}]{microtype}

% Abreviations
\usepackage[abbreviations,british]{foreign}

% Headers, Titles, Paragraphs, etc...
\usepackage{parskip}
\usepackage{titlesec}
\usepackage[titles]{tocloft}
\usepackage{fancyhdr}
\usepackage{sectsty}
\usepackage{csquotes}

% URL Formatting
\usepackage{url}

% Epigraph
\usepackage{epigraph}
\usepackage{etoolbox}

% Bibliography
\usepackage[backend=biber,natbib=true,sorting=ynt]{biblatex}

%% Customization

% Detect Overflows
\overfullrule=2cm

% Epigraph (Chapter)
\setlength\epigraphwidth{8cm}
\setlength\epigraphrule{0pt}

\makeatletter
\patchcmd{\epigraph}{\@epitext{#1}}{\itshape\@epitext{#1}}{}{}
\makeatother

% Empty Page Customization 
\usepackage{emptypage}

% Depth of TOC
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% Headers and Footers
\renewcommand{\headrulewidth}{0.3pt}

% Micro Typographical Improvements
\microtypesetup{activate={true,nocompatibility}}

% Headings Font Customization 
\chapterfont{\sffamily}
\sectionfont{\sffamily}
\subsectionfont{\sffamily}
\subsubsectionfont{\sffamily}

% Chapter Font in Toc
\renewcommand{\cftchapfont}{\bfseries\sffamily}

% Customize Styling Based on Single/Two-Sided Document
\ifthenelse{\boolean{@twoside}}{
  % Two-Sided Version
  \geometry{a4paper,textwidth=13.3cm,top=2.5cm,bottom=3cm}
  \usepackage{varioref}
  \usepackage[hidelinks]{hyperref}
  \usepackage{cleveref}

  \let\tmp\oddsidemargin
  \let\oddsidemargin\evensidemargin
  \let\evensidemargin\tmp
  \reversemarginpar

  % Headers And Footers
  \pagestyle{fancy}

  \fancyhead{}
  \fancyhead[LE]{\thepage}
  \fancyhead[RE]{\nouppercase\rightmark}
  \fancyhead[LO]{\nouppercase\rightmark}
  \fancyhead[RO]{\thepage}

  \fancyfoot{}
}{
  % One-Sided Version
  \geometry{a4paper,textwidth=13.3cm,top=2.5cm,bottom=3cm,hcentering}
  \usepackage{varioref}
  \usepackage[colorlinks=true,citecolor=RoyalBlue,linkcolor=RoyalBlue,urlcolor=ForestGreen]{hyperref}
  \usepackage{cleveref}


  % Headers And Footers
  \pagestyle{fancy}
  \renewcommand{\sectionmark}[1]{\markright{#1}}
  \renewcommand{\subsectionmark}[1]{}

  \fancyhead{}
  \fancyhead[R]{{\nouppercase\rightmark}}
  \fancyhead[L]{{\nouppercase\leftmark}}

  \fancyfoot{}
  \fancyfoot[L]{\hfill\thepage\hfill}
}

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


% Acronyms and Glossaries
\usepackage[acronym,toc]{glossaries}


% Blank Page
\newcommand{\blankpage}{
  \clearpage
  \thispagestyle{empty}
  \addtocounter{page}{-1}
  \null
  \clearpage
}

% Cover Page Environment
\newenvironment{cover}{
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    }{
  \end{center}
}

% Funding Page
\newenvironment{funding}{
  \clearpage
  \thispagestyle{empty}
  \mbox{} \vfill
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

% Keywords Environment
