% ucthesis.cls
% Created by: Pedro Rodrigues <pedror@student.dei.uc.pt>

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{thesis}[2023/08/06 University of Coimbra Thesis Custom Style]

% TeX Package 
\RequirePackage{ifthen}
\RequirePackage{xkeyval}
\RequirePackage{setspace}

% Class Options
\newcommand{\thethesisdegree}{msc} % silence warning
\DeclareOptionX{degree}{\renewcommand{\thethesisdegree}{#1}}
\ExecuteOptionsX{degree=msc}

\newcommand{\thethesistype}{type} % silence warning
\DeclareOptionX{type}{\renewcommand{\thethesistype}{#1}}
\ExecuteOptionsX{type=pdf}

% Unknown Options
\DeclareOptionX*{\PassOptionsToClass{\CurrentOption}{book}}

% Parse Options
\ProcessOptionsX\relax

%% Base Class
\LoadClass{book}

%% Packages

% Language
\usepackage[portuguese,english]{babel}

% Geometry and Colors
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[a4paper,headheight=15pt]{geometry}

% Encoding
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}

% Fonts
\usepackage[mono=false]{libertine}
\usepackage[libertine]{newtxmath}
\usepackage[scaled=0.97]{zi4}
\usepackage{roboto}

% Headers, Titles, Paragraphs, etc...
\usepackage{parskip}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{sectsty}
\usepackage{csquotes}

% Empty Page Customization 
\usepackage{emptypage}

%% Customization

% Detect Overflows
\overfullrule=2cm

% Heading Font Customization 
\chapterfont{\sffamily}
\sectionfont{\sffamily}
\subsectionfont{\sffamily}
\subsubsectionfont{\sffamily}

% Customize Styling Based on Single/Two-Sided Document
\ifthenelse{\boolean{@twoside}}{
  % Two-Sided Version
  \geometry{textwidth=13.3cm,top=2.5cm,bottom=3cm}
  \usepackage[hidelinks]{hyperref}

  % Headers And Footers
  \fancypagestyle{main}{%
    \fancyhead[LO,RE]{{\nouppercase\rightmark}}
    \fancyhead[LE,RO]{\thepage}
    \fancyfoot{}
    \renewcommand{\headrulewidth}{0.3pt}}
}{
  % One-Sided Version
  \geometry{textwidth=13.3cm,top=2.5cm,bottom=3cm,hcentering}
  \usepackage[colorlinks=true,citecolor=RoyalBlue,linkcolor=RoyalBlue,urlcolor=ForestGreen]{hyperref}

  % Headers And Footers
  \fancypagestyle{main}{%
    \fancyhead[LE,LO]{{\nouppercase\rightmark}}
    \fancyhead[RE,RO]{\thepage}
    \fancyfoot{}
    \renewcommand{\headrulewidth}{0.3pt}}
}

% Blank Page
\newcommand{\blankpage}{
  \clearpage
  % \thispagestyle{empty}
  \addtocounter{page}{-1}
  \null
  \clearpage
}