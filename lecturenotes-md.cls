% Following Example class file taken from 
% http://blog.ankurdave.com/2009/04/creating-your-own-latex-document-class.html

\ProvidesClass{lecturenotes-md}


% fields that user can set (in addition to title, author, etc)
%\makeatletter
	\newcommand{\course}[1]{\def \@course {#1}}
	\newcommand{\term}[1]{\def \@term {#1}}
%	\newcommand{\assignment}[1]{\def \@assignment {#1}}
%	\newcommand{\duedate}[1]{\def \@duedate {#1}}
	\newcommand{\topics}[1]{\def \@topics {#1}}
	\course{}
	\term{}
%	\assignment{}
%	\duedate{}
	\topics{}

\AtEndDocument{ 
  \label{pages}
}

	\LoadClass[12pt]{scrreport}
%  \usepackage{beamerarticle}

	\usepackage[letterpaper,margin=1in,head=30pt]{geometry}
	\usepackage{fancyhdr}
%	\makeatletter
	\pagestyle{fancy}
	\renewcommand{\footrulewidth}{\headrulewidth}
	\fancyhf{}

      \fancyhead[R]{\begin{tabular}{r}\@title \\ Revised: \@date \end{tabular}}
      \fancyhead[L]{\begin{tabular}{l}\@course, \@term \\ Topics: \@topics\end{tabular}}
      \fancyfoot[R]{page \thepage \ of \pageref{pages}}
%      \makeatother
 
  % title
  \renewcommand{\maketitle} {%

  \Large
  \begin{center}
  { Course notes for \@course } \\
  %{ \@title } \\
  \large
  University of New Brunswick \\
  Department of Mathematics and Statistics \\
  Prepared by James Watmough\\ 
  Revised: \@date
  \end{center}
  \normalsize
  }


  \AtBeginDocument{ \thispagestyle{empty} \maketitle }

  \message{processed notes options}

% standard packages

\message{loading standard packages}

\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{enumerate}
\usepackage{tikz}
\usetikzlibrary{arrows}
\usepackage{hyperref}



\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\dom}{dom}
\DeclareMathOperator{\ran}{ran}
\DeclareMathOperator{\Null}{Null}


\newcommand{\fig}[1]{ Figure~\ref{#1}}
\newcommand{\eqn}[1]{ Equation~(\ref{#1})}

%\theoremstyle{definition}
%\newcounter{theorem}
%\newtheorem{axiom}[theorem]{Axiom}
%\newtheorem{exercise}{Exercise}[section]
%\newtheorem*{exercise*}{Exercise}
%\newtheorem{example}{Example}[section]
%\newtheorem*{example*}{Example}
%\theoremstyle{remark}
%\newtheorem{remark}{Remark}[section]

%\numberwithin{theorem}{subsection}
%\numberwithin{table}{subsection}
%\numberwithin{figure}{subsection}

\newcounter{enumtemp}

\setlength{\parindent}{0pt}
\setlength{\parskip}{3pt}
%\usepackage{setspace}

% fonts
%\usepackage{newcent}
%\usepackage{fouriernc}
%\renewcommand{\ttdefault}{cmtt}


% references
%\usepackage{varioref}


% bibliography
\usepackage{natbib}

\message{end of class file}
