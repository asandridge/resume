%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Introduction
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This class (resume.cls) is to define the layout/structure of the template (resume.tex)
% All content should go in the template file (resume.tex), not this file

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                OS Packages (Arch Linux)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Arch packages
% sudo pacman -S texmaker texlive-most

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Identification
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProvidesClass{resume}
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Settings
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\nofiles                                   % Don't create .aux files
\pagestyle{empty}                          % Don't use page numbers

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                Packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}                  % To change page size/orientation/margins
\RequirePackage{fontawesome5}              % To use FontAwesome5
\RequirePackage[document]{ragged2e}        % To left-align everything (using [document])
\RequirePackage{enumitem}                  % To change spacing between lists 
  \setlist[itemize]{noitemsep,topsep=0pt}
\RequirePackage{titlesec}                  % To format the title
\RequirePackage{tabto}                     % To align text to a specific point
  \newcommand*{\rightsidetab}{.7\linewidth}% Set the tab on the right side
\RequirePackage{color}                     % To define specific colors
  \definecolor{darkblue}{RGB}{6,69,173}    % Custom color for URLs
\RequirePackage{hyperref}                  % To make clickable URLs and set PDF options       
  \hypersetup{
  colorlinks=true,
  linkcolor=darkblue,
  urlcolor=darkblue,
  pdftitle={Name},
  pdfauthor={Name}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Contact info
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ContactName}[1]{
  {\Huge{#1}}\\
}

\newcommand{\ContactInfoPhysical}[3]{
  {\faHome} {#1}, {#2} {#3}\\
}

\newcommand{\ContactInfoDigital}[2]{
  {\faEnvelope} {#1}  | 
  {\faPhone} {#2} \\
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sections
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\titleformat{\section}
  {\Large\textcolor{myblue}}
  {}{0em}
  {}
  [\titlerule]

\newcommand*{\PlaceAndLocation}[2]{
  {\textbf{#1} \tabto{\rightsidetab}{\faMapMarker*} {#2}}
}

\newcommand*{\TitleAndYears}[2]{
  {\textit{#1} \tabto{\rightsidetab} {#2}}
}

\newcommand*{\NameAndYears}[2]{
  {\textbf{#1} \tabto{\rightsidetab} {#2}}
}

\definecolor{myblue}{rgb}{0.227, 0.486, 1}