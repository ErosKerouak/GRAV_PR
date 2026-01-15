%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% RBGf Class for LaTeX files
%% August 2021
%%
%% This file is for the exclusive use of the editorial board of the Brazilian Journal of Geophysics
%%
%% Initial Class Provide by Thiago R Almeida
%%
%% Modified by Cicero Regis
%%
%% Revised by:
%%
%% Versions:
%%
%% v.02 in August, 2021
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% -------------------------------------------------------------------
%% 
%% -------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{BrJG_submit}

%   USAR AS CONFIGURACOES DA CLASSE article   %
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[twoside,a4paper,10pt]{article}

\RequirePackage{ifthen}

%% Page style
\setlength{\textheight}{25cm}
\setlength{\textwidth}{17cm}
\setlength{\oddsidemargin}{-0.5cm}
\setlength{\evensidemargin}{-0.5cm}
\setlength{\topmargin}{-1.5cm}	    
\setlength{\headheight}{0.5cm}
\setlength{\headsep}{1cm}


%% -------------------------------------------------------------------
%% Text configuration:
%% -------------------------------------------------------------------
%\RequirePackage{etoolbox}

\RequirePackage[portuguese,english]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

%\RequirePackage{microtype}

\hyphenpenalty1

%% -------------------------------------------------------------------
%% Main document font:
%% -------------------------------------------------------------------
%\RequirePackage[scaled]{helvet}
%\renewcommand{\familydefault}{\sfdefault}

%% -------------------------------------------------------------------
%% Math, units and science packages:
%% -------------------------------------------------------------------
\RequirePackage{amsmath,amsfonts,dsfont,amssymb}
\RequirePackage{mathtools}

%% -------------------------------------------------------------------
%% To control the floating elements position (graphics, tables, figures, etc):
%% -------------------------------------------------------------------
\RequirePackage{graphicx}
%\RequirePackage[labelsep=period]{caption}
\RequirePackage{subcaption}
\RequirePackage{float}
\RequirePackage{setspace}
\RequirePackage{array}
    \renewcommand{\arraystretch}{1.5}

%% -------------------------------------------------------------------
%% To merge rows and columns into tables:
%% -------------------------------------------------------------------
\RequirePackage{multirow}
\RequirePackage{multicol}
\setlength{\columnsep}{0.75cm}

%%-------------------------------------------------------------------
%% Configuration of hyperlinks:
%% -------------------------------------------------------------------
\RequirePackage[colorlinks=true,linkcolor=black,urlcolor=blue,citecolor=blue]{hyperref}
%% To have the possibility to change the urlcolor
\newcommand{\changeurlcolor}[1]{\hypersetup{urlcolor=#1}}

\RequirePackage{cleveref}


%% -------------------------------------------------------------------
%% Article numbers:
%% -------------------------------------------------------------------

\makeatletter

\DeclareRobustCommand{\correspondente}[1]{\newcommand{\correspond}{#1}}

%%-------------------------------------------------------------------
%% Commands for title and authors.
%% -------------------------------------------------------------------
\DeclareRobustCommand{\shorttitle}[1]{\newcommand{\titulocurto}{#1}}
\DeclareRobustCommand{\shortauthors}[1]{\newcommand{\autorescurto}{#1}}

%%-------------------------------------------------------------------
%% Section and subsection configuration:
%% -------------------------------------------------------------------

\setcounter{secnumdepth}{4}
%    Section titles: Uppercase, boldface.
\renewcommand{\section}{\@startsection
 {section}%                   % the name
 {1}%                         % the level
 {0mm}%                       % the indent  {-10\p@}
 {-\baselineskip}%            % the before skip
 {0.5\baselineskip}%          % the after skip
 {\bfseries\MakeUppercase}} % the style


%    Subsection titles: Normalfont, boldface.
\renewcommand{\subsection}{\@startsection
{subsection}%                   % the name
{2}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\bfseries}} % the style

%    Sub-subsection titles: Normalfont, italics, boldface.
\renewcommand{\subsubsection}{\@startsection
{subsubsection}%                   % the name
{2}%                         % the level
{0mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\it\bfseries}} % the style

%   Configurations for appendices.
\let\oldappendix\appendix% Store \appendix
\renewcommand{\appendix}{% Update \appendix
	\oldappendix% Default \appendix
	\setcounter{equation}{0}
	\setcounter{figure}{0}
	\setcounter{table}{0}
	\renewcommand*{\@seccntformat}[1]{{\bf APPENDIX} \thesection. \quad}
	\renewcommand{\theequation}{\thesection\arabic{equation}} 
	\renewcommand{\thefigure}{\thesection\arabic{figure}} 
	\renewcommand{\thetable}{\thesection\arabic{table}} 
%	\renewcommand{\theequation}{\thesection\arabic{equation}}
%	\renewcommand*{\@seccntformat}[1]{{\bf APPENDIX} \quad \csname  \endcsname}
}

%%-------------------------------------------------------------------
%% References configuration:
%% -------------------------------------------------------------------
\RequirePackage[round]{natbib} % Para fazer bibliografia no estilo autor-ano.
\setlength{\bibsep}{0cm}
%

\DeclareRobustCommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  \addtocounter{footnote}{-1}%
  \endgroup
}

\DeclareRobustCommand{\affiliation}[2]{ \blfootnote{$^{#1}$#2} }
\DeclareRobustCommand{\affil}[1]{$^{#1}$}

%%-------------------------------------------------------------------
%% Abstract configuration:
%% -------------------------------------------------------------------
%\makeatletter
\DeclareRobustCommand{\keywords}[1]{\newcommand{\@keys}{#1}}
\renewenvironment{abstract}
	{ 
	\thispagestyle{empty}
	\noindent
	\setstretch{1.5}
	\begin{minipage}{\textwidth}
	\textbf{ABSTRACT.} 
	}
	{ 
	\ifthenelse{ \isundefined{\@keys} }{}{\vskip 10\p@ \noindent{\bf Keywords:} \ \@keys }
	\end{minipage}
	\vspace{1cm}
	}
%%-------------------------------------------------------------------
%% Document header and footer (except first page):
%% -------------------------------------------------------------------
\RequirePackage{fancyhdr}
\pagestyle{fancy}
	\fancyhead[EL]{ {\Large \thepage} \hspace{1mm} {\small \MakeUppercase{\text{\titulocurto}}} }
	\fancyhead[ER]{}
	\fancyhead[OR]{ {\Large \thepage} }
	\fancyhead[OL]{}
	\fancyfoot[ER,OL]{\small Braz. J. Geophys.}
	\cfoot{}

\DeclareRobustCommand{\cover}{
%
	\setstretch{0.75}
	{\scriptsize
	\begin{tabular}{ll}
		\multirow{4}{*}{\includegraphics[scale=0.05]{Logo_BrJG.png}} & Brazilian Journal of Geophysics \\ 
                 & Brazilian Geophysical Society           \\%&                   \\
                 & ISSN 0102-261X                                  \\ %&                    \\
	\end{tabular} }
	\vspace{1cm}\\
	\setstretch{1.5}
	\begin{center}
	\begin{minipage}{0.9\textwidth}
		\centering
		{\Large\bfseries\MakeUppercase \@title}\\
		\vspace{1cm}
	\end{minipage}
	\end{center}
	}

\AtBeginDocument{
	\onecolumn
	\cover
	\setstretch{1.5}
   }

\makeatother