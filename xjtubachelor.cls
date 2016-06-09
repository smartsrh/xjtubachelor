% !TEX program = xelatex
% smartsrh <smartsrh@gmail.com>
% https://www.github.com/smartsrh/xjtubachelor/
% The template is written for XJTU bachelor thesis in 2016
% To use this template requires fundementals of LaTeX
% Please follow the annotations to complete and compile these tex files
% License: MIT License
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{xjtubachelor}
\LoadClass[a4paper,openany]{book}
\RequirePackage[space,cs4size]{ctexcap}
\RequirePackage[numbers,sort&compress,square,super]{natbib} % the perfect position of natbib to avoid error
\RequirePackage{graphicx,hypernat,tabularx,array,longtable,threeparttable,booktabs,caption,enumerate,subfigure,bm,wrapfig,pdfpages,tikzsymbols}
\RequirePackage[fleqn]{amsmath}
\RequirePackage[left=2.6cm,right=2.6cm,top=3.0cm,bottom=2.5cm]{geometry}
\RequirePackage{appendix}\RequirePackage[version=3]{mhchem}
\renewcommand{\bibfont}{\normalsize}
\captionsetup{labelsep=quad}\captionsetup[longtable]{labelsep=quad} % eliminate colon in captions

% adjust the style of the head and the foot of the style
\RequirePackage{fancyhdr}\pagestyle{fancy}\fancyhf{}
\fancyhead[EC]{\small 西安交通大学本科毕业设计（论文）}
\fancyhead[OC]{\small\leftmark}\fancyfoot[EL,OR]{\thepage}
\renewcommand{\headrule}{\hrule width\headwidth height.5bp\vspace{.5pt}\hrule width\headwidth height.5bp}
\fancypagestyle{plain}{\fancyhf{}%
\fancyhead[EC]{\small 西安交通大学本科毕业设计（论文）}%
\fancyhead[OC]{\small\leftmark}\fancyfoot[EL,OR]{\thepage}}

% adjust the format of each kind of title
\setcounter{secnumdepth}{3} % include \subsubsection in the numbering
\RequirePackage{titlesec,titletoc}
\CTEXsetup[name={,},number={\arabic{chapter}}]{chapter}
\titleformat{\chapter}[block]{\center\fontsize{16bp}{0}\selectfont }{\thechapter}{1em}{}[]
\titlespacing{\chapter}{0em}{1\baselineskip}{2\baselineskip}
\titleformat{\section}[block]{\fontsize{15bp}{0}\selectfont}{\thesection}{1em}{}[]
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
    {\small\noindent{\bf 关键词}：\cnkeywords}
    \newpage

    \chaptermark{ABSTRACT}\noindent {\bf
        Title: \entitle\\
        Name: \enstu\\
        Supervisor: \enteacher\\
    }
    \begin{center}
        {\fontsize{16bp}{0}\selectfont ABSTRACT}
    \end{center}
    %\vspace{.5\baselineskip}
    {\setlength{\parindent}{0em}\setlength{\parskip}{1em}\encontent}
    \\\\
    {\small\noindent{\bf KEY WORDS}: \enkeywords}
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

% change the label of figure, table and equation % thanks to fitsir<at>gmail.com
\renewcommand{\tablename}{\small 表} \renewcommand{\figurename}{\small 图}
\renewcommand\thefigure{\small \ifnum \c@chapter>\z@\thechapter -\fi\@arabic\c@figure}
\renewcommand\thetable{\small \ifnum \c@chapter>\z@ \thechapter -\fi \@arabic\c@table}
\renewcommand\theequation{\small \ifnum \c@chapter >\z@ \thechapter -\fi\@arabic \c@equation}

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
            pdfborder=0 0 0,}
\urlstyle{same}

% the acknowledge
\newcommand\acknowledge[2]{
    \chapter*{#2}
    \chaptermark{#1}
    \addcontentsline{toc}{chapter}{#1}
}
\renewcommand*{\bibfont}{\small}
\renewcommand*\contentsname{目\quad 录}

% the coding environment
\RequirePackage{listings, xcolor}
\lstset{
    numbers=left, 
    numberstyle= \tiny,
    basicstyle=\ttfamily\tiny,
    stringstyle=\ttfamily, 
    keywordstyle= \color{ blue!70},
    commentstyle=\color{red!50!green!50!blue!50}, 
    frame=shadowbox, 
    rulesepcolor= \color{ red!20!green!20!blue!20},
    breaklines=true 
}
% highlight apdl
\lstdefinelanguage{APDL} { 
    morekeywords ={K,SOLU,SOLVE,FINISH},keywordstyle = \bfseries, 
    classoffset = 1, 
    morekeywords={ET,SOLID185,DENS,MPTEMP,MPDATA,BLC5,VIEW,ANG,DK,REP,FAST,FLST,ORDE,FITEM,CM,LINE,LSEL,P51X,CMSEL,LESIZE,MSHAPE,3D,MSHKEY,VOLU,VSEL,CHKMSH,VMESH,CMDELE,FK,ANTYPE,PSTRES,BUCOPT,EXPASS,MXPAND,sect,secdata,EX,PRXY,shell,secoffset,MID,seccontrol,ASEL,AMESH,SHELL63,R,RMORE,K,REPLO,L,AROTAT,TYPE,REAL,DO,ENDDO,E,ACLEAR,MODOPT,LANB,EQSLV,SPAR,LUMPM,dl,all,SOL,STATUS,POST1,SET,LIST,CREATE,DIM,TABLE,CHRVAL,TREAD,TRNOPT,FULL,NSUBST,OUTRES,ERASE,AUTOTS,TIME,OUTR,ALPHAD,BETAD,F,SOLU,POST26,FILE,COLL,UI,NUMVAR,NCMIT,STORE,MERGE,FILLDATA,REALVAR,ANSOL,TOP,DEL,VGET,OUTPUT,VWRITE,OUTPUT,LSCLEAR,INPUT,FORCE},keywordstyle = \color{blue}, 
    classoffset = 0, 
    sensitive=false, 
    morecomment=[l]{!}, 
    morecomment=[s]{/*}{*/}, 
    morestring 
    =[b]", 
} 
\renewcommand{\@biblabel}[1]{[#1]\hfill} %reference item left-align