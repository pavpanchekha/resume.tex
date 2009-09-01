% RESUME DOCUMENT STYLE, by Pavel Panchekha

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{resume}[2009/08/31 v0.5 Resume class]

\PassOptionsToClass{11pt,12pt}{article}
\LoadClassWithOptions{article}
\usepackage{fullpage}
\usepackage[pdftex]{xcolor}
\usepackage{soul}
\usepackage{paralist}

\pagestyle{empty} % No page numbers
\nofiles

\setlength{\parindent}{0em}
\setlength{\parskip}{8pt}
\setlength{\textheight}{9in}
\linespread{1.1}

\newcommand{\@namefont}{\Large\bf\sc}
\newcommand{\withtab}[2][1in]{%
    \begin{tabbing}%
    \hspace{#1}\= \kill%
    #2%
    \end{tabbing}%
    \vspace{-20pt}%
}

\newcommand{\horiz}[1]{		% hrules only listen to \hoffset
    \vskip -12pt
    \nointerlineskip% so I have this code
    \moveleft\hoffset\vbox{\rule{\linewidth}{#1}}%
    \nointerlineskip
}

\renewcommand{\maketitle}{
    \noindent{\@namefont\@name\\}%
    \horiz{.25mm}%
    \vspace{-6pt}%
}


% To define the \address command
\newcommand{\contact}[2]{\vspace{-12pt}\withtab{\textbf{#1:} \> #2}}

% To define the \name command
\def\name#1{\@ifundefined{@name}{\def\@name{#1}}{}}

\renewcommand{\section}[1]{
    \vfill
    \textcolor[HTML]{000000}{\horiz{.75pt}}
    \vskip -5pt
    \so{\bf\MakeUppercase{#1}}
    \vskip -5pt
    \textcolor[HTML]{888888}{\horiz{.25pt}}
}

\newcommand{\withright}[3]{
    \vspace{-.15in}
    \begin{tabbing}
    \hspace{2.3in}\=\hspace{3.2in}\=\kill % set up two tab positions
    {\bf #1} \> #2 \> #3
    \end{tabbing}\vspace{-20pt}
}

\setdefaultleftmargin{0ex}{}{}{}{}{}
\newenvironment{bullets}{
    \begin{compactitem}
        \setlength{\topsep}{0pt}
        \setlength{\itemsep}{0pt}
        \setlength{\parskip}{0pt}
        \setlength{\parsep}{0pt}
        \setlength{\baselineskip}{0pt}
}{
    \end{compactitem}
}

\renewcommand{\st}{\ensuremath{^{\mathrm{st}}} }
\newcommand{\nd}{\ensuremath{^{\mathrm{nd}}} }
\renewcommand{\th}{\ensuremath{^{\mathrm{th}}} }


\usepackage{wrapfig}
\newcommand{\dates}[1]{%
    \vspace{-40pt}%
    \begin{tabbing}%
    \hspace{5.5in}\= \kill%
    \>(#1)%
    \end{tabbing}%
    \vspace{-20pt}%
}
