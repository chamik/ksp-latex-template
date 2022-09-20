% Created by Kubík (https://github.com/chamik/ksp-latex-template)
% Shared under the MIT license

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ksp}[2022/03/16 A template for KSP theoretical exercises]

\LoadClass[a4paper, 11pt, fleqn]{article}

\RequirePackage[T1]{fontenc}  % modern font encoding
\RequirePackage{sectsty} % font size settings
\RequirePackage[czech]{babel} % font spacing
\RequirePackage[utf8]{inputenc}  % UTF-8
\RequirePackage{csquotes} % czech style quotation marks
\RequirePackage{amsthm, amsmath, amssymb} % math, math, math
\RequirePackage{xcolor} % colors!
\RequirePackage{tikz, wrapfig} % drawing
\RequirePackage[top=1in, bottom=1.25in, left=1.1in, right=1.1in]{geometry} % page spacing
\RequirePackage{paralist} % better lists
\RequirePackage[hyperfootnotes=false]{hyperref} % hyperlinks

\hypersetup{
  colorlinks=true,
  linkcolor=blue,
  filecolor=magenta,      
  urlcolor=cyan,
  pdftitle={\@title},
  pdfpagemode=FullScreen,
}

% no page numbers
\pagenumbering{gobble}

% section spacing
\setlength{\parindent}{0em}
\setlength{\parskip}{.5em}

% line spacing
\linespread{1.1}

% math spacing
\AtBeginDocument{
  \addtolength\abovedisplayskip{-1\baselineskip}
  \addtolength\belowdisplayskip{.1\baselineskip}
}

% section font size
\sectionfont{\LARGE\selectfont}

% centered text box
\newcommand\textbox[1]{
  \parbox{.333\textwidth}{\hspace{.4cm}#1\hspace*{.4cm}}
}

% remade title
\renewcommand{\maketitle}{
    \begin{center}
        \framebox[\textwidth]{
            %                                         \hfil - note the one 'l' here
            \noindent\textbox{\@author\hfill}\textbox{\hfil {\Large \@title\hfil}}\textbox{\hfill \@date}
        }
    \end{center}
}
