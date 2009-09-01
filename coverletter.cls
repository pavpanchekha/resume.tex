% COVER LETTER DOCUMENT STYLE, by Pavel Panchekha
% See http://www.rpi.edu/dept/arc/training/latex/resumes/ for inspiration

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{resume}[2009/08/31 v0.5 Resume class]

\PassOptionsToClass{11pt,12pt}{letter}
\LoadClassWithOptions{letter}

\topmargin=-1in    % Make letterhead start about 1 inch from top of page
\textheight=8.5in  % text height can be bigger for a longer letter
\oddsidemargin=0pt % leftmargin is 1 inch
\textwidth=6.5in   % textwidth of 6.5in leaves 1 inch for right margin

\longindentation=0pt                       % needed to get closing flush left
\let\raggedleft\raggedright                % needed to get date flush left
\parindent=0pt

% To define the \name command
\def\name#1{\@ifundefined{@name}{\def\@name{#1}%
\signature{#1}}{}}

\pagestyle{empty} % No line numbers
\nofiles

\newcommand{\horiz}[1]{		% hrules only listen to \hoffset
    \vskip -12pt
    \nointerlineskip% so I have this code
    \moveleft\hoffset\vbox{\rule{\linewidth}{#1}}%
    \nointerlineskip
}

\newcommand{\withtab}[2][1in]{%
    \begin{tabbing}%
    \hspace{#1}\= \kill%
    #2%
    \end{tabbing}%
    \vspace{-20pt}%
}

\newcommand{\@namefont}{\Large\bf\sc}
\newcommand{\maketitle}{
    \noindent{\@namefont\@name\\}%
    \horiz{.25mm}%
    \vspace{-12pt}%
}
\newcommand{\contact}[2]{\withtab{\textbf{#1:} \> #2}}

\newenvironment{coverletter}[2]{\begin{letter}{#1}\maketitle#2\vfill}{\end{letter}}
