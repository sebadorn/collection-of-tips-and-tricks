## LaTeX notes

### German hyphenation

    sudo apt-get install texlive-lang-german

### Small non-breaking space

    \,

### Mixing one-column and two-column

    \usepackage{multicol}
    \begin{multicol}{2}
    ...
    \end{multicol}

### Page margins

    \usepackage[a4paper,lmargin={2.6cm},rmargin={2.6cm},tmargin={2.6cm},bmargin={2.6cm}]{geometry}

### Hyphenation breaking in URLs

    \usepackage[hyphens]{url}

