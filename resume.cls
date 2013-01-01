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
\setlength{\textheight}{9.5in}
\setlength{\topmargin}{-.25in}
\linespread{1}

\newenvironment{header}[1]{
  \begin{minipage}{0.5\textwidth} \noindent{\LARGE\bf\sc#1\\} \end{minipage} %
  \hfill %
  \begin{minipage}{0.5\textwidth} \vspace{-24pt}
}{
  \end{minipage}
}

% To define the \infoline command
\newcommand{\infoline}[2]{%
  \begin{tabbing}%
    \hspace{1in}\=\kill%
    \textbf{#1:} \> #2%
  \end{tabbing}%
  \vspace{-20pt}
}

\renewcommand{\section}[1]{
    \vfill
    \begin{center}
      \textit{\Large #1}
    \end{center}
    \vspace{-8pt}%
    \par
}

\newcommand{\withright}[4]{
  \vspace{4pt}
  \textbf{#1 \hfill #2}\\
  \textit{#3 \hfill #4}\\
  \vspace{-10pt} \par
}

}

\setdefaultleftmargin{0ex}{}{}{}{}{}
\newenvironment{bullets}{
  \vspace{-6pt}
  \begin{compactitem}
    \setlength{\topsep}{0pt}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
    \setlength{\baselineskip}{0pt}
}{
  \end{compactitem}
}

\newenvironment{block}[4]{
\withright{#1}{#2}{#3}{#4}
\begin{bullets}
}{
\end{bullets}
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
