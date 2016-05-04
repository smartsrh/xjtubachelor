% !TEX program = xelatex
% smartsrh <smartsrh@gmail.com>
% https://www.github.com/smartsrh/xjtuBanchelor/
% The template is written for XJTU bachelor thesis in 2016
% To use this template requires fundementals of LaTeX
% Please follow the annotations to complete and compile these tex files
% License: MIT License
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{xjtubachelor}
\LoadClass[a4paper,openany]{book}
\RequirePackage[space]{ctexcap}\zihao{-4}
\RequirePackage[numbers,sort&compress,square,super]{natbib} % the perfect position of natbib to avoid error
\RequirePackage{graphicx,amsmath,hypernat,tabularx,array,longtable,threeparttable,booktabs}
\RequirePackage[left=2.6cm,right=2.6cm,top=3.0cm,bottom=2.5cm]{geometry}
\RequirePackage{appendix}\RequirePackage[version=3]{mhchem}
\renewcommand{\bibfont}{\normalsize}

% adjust the style of the head and the foot of the style
\RequirePackage{fancyhdr}\pagestyle{fancy}\fancyhf{}
\fancyhead[EC]{\normalsize\color{gray} 西安交通大学本科毕业设计（论文）}
\fancyhead[OC]{\color{gray}\leftmark}\fancyfoot[EL,OR]{\thepage}
\renewcommand{\headrule}{\hrule width\headwidth height.5bp\vspace{.4pt}\hrule width\headwidth height.5bp}
\fancypagestyle{plain}{\fancyhf{}%
\fancyhead[EC]{\normalsize\color{gray} 西安交通大学本科毕业设计（论文）}%
\fancyhead[OC]{\color{gray}\leftmark}\fancyfoot[EL,OR]{\thepage}}

% adjust the format of each kind of title
\setcounter{secnumdepth}{3} % include \subsubsection in the numbering
\RequirePackage{titlesec,titletoc}
\CTEXsetup[name={,},number={\arabic{chapter}}]{chapter}
\titleformat{\chapter}[block]{\center\fontsize{16bp}{0}\selectfont }{\thechapter}{1em}{}[]
\titlespacing{\chapter}{0em}{1\baselineskip}{2\baselineskip}
\titleformat{\section}[block]{\Large}{\thesection}{1em}{}[]
\titlespacing{\section}{0em}{\baselineskip}{0.5\baselineskip}
\titleformat{\subsection}[block]{\fontsize{14bp}{0}\selectfont }{\thesubsection}{1em}{}[]
\titlespacing{\subsection}{2em}{0.5\baselineskip}{0\baselineskip}
\titleformat{\subsubsection}[block]{}{\arabic{subsubsection})~}{1em}{}[]
\titlespacing{\subsubsection}{2em}{0.2\baselineskip}{0\baselineskip}
\titlecontents{chapter}[0em]{}{\thecontentslabel\quad}{}{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
\titlecontents{section}[1.5em]{}{\thecontentslabel\quad}{}{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}
\titlecontents{subsection}[3.8em]{}{\thecontentslabel\quad}{}{\dotfill\contentspage[{\makebox[0pt][r]{\thecontentspage}}]}

% basic information
\newcommand{\cntitle}{课题名称}\newcommand{\cnstu}{学生姓名}\newcommand{\cnteacher}{指导老师}
\newcommand{\entitle}{龟派气功}\newcommand{\enstu}{孙悟空}\newcommand{\enteacher}{五天老手}
\newcommand{\cncontent}{摘要}
\newcommand{\cnkeywords}{浑善达克；困难；看到你}
\newcommand{\encontent}{The key parts in drip irrigation facilities are emitters.}
\newcommand{\enkeywords}{indk; iond; bje}

% the two abstract pages
\newcommand{\abstract}{
    \chaptermark{摘\quad 要}\pagenumbering{Roman}
    \noindent {\bf
        论文题目： \cntitle\\
        学生姓名： \cnstu\\
        指导教师： \cnteacher\\
    }
    \begin{center}
        {\fontsize{16bp}{0}\selectfont 摘\quad 要}
    \end{center}
    \vspace{\baselineskip}
    \cncontent
    \\\\
    {\normalsize\noindent{\bf 关键词}：\cnkeywords}
    \newpage

    \chaptermark{ABSTRACT}\noindent {\bf
        Title: \entitle\\
        Name: \enstu\\
        Supervisor: \enteacher\\
    }
    \begin{center}
        {\fontsize{16bp}{0}\selectfont ABSTRACT}
    \end{center}
    \vspace{\baselineskip}
    {\setlength{\parindent}{0em}\setlength{\parskip}{1em}\encontent}
    \\\\
    {\normalsize\noindent{\bf KEY WORDS}: \enkeywords}
    \newpage
}

% adjust the title format of appendix
\newcommand{\appendixStart}{
    \begin{appendix}
    \renewcommand{\thechapter}{附录\arabic{chapter}}
    \chaptermark{附录}
}
\newcommand{\appendixEnd}{\end{appendix}}
\newcommand{\chapterNew}[1]{
    \stepcounter{chapter}
    \chapter{\thechapter\quad#1}
}

% circled footnote number
\renewcommand{\thefootnote}{\raisebox{.5pt}{\textcircled{\raisebox{-.5pt}{\scriptsize \arabic{footnote}}}}}

% change the label of figure, table and equation
\renewcommand\thefigure{% thanks to fitsir<at>gmail.com
     \ifnum \c@chapter>\z@\thechapter-\fi\@arabic\c@figure%
}
\renewcommand\thetable{%
    \ifnum \c@chapter >\z@ \thechapter-\fi \@arabic \c@table%
}
\renewcommand\theequation{%
    \ifnum \c@chapter >\z@ \thechapter-\fi \@arabic \c@equation%
}

% hyper references of contents
\RequirePackage{hyperref}
\hypersetup{
            bookmarksnumbered=true,
            bookmarksopen=true,
            bookmarksopenlevel=1,
            breaklinks=true,
            colorlinks=false,
            plainpages=false,
            pdfpagelabels,
            pdfborder=0 0 0,
        }
\urlstyle{same}

% the acknowledge
\newcommand\acknowledge[2]{
    \chapter*{#2}
    \chaptermark{#1}
    \addcontentsline{toc}{chapter}{#1}
}
