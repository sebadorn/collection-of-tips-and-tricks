## LaTeX notes

### German hyphenation

    sudo apt-get install texlive-lang-german

### Small non-breaking space

    \,

### Non-breaking hyphen

    \mbox{-}

### Mixing one-column and two-column

    \usepackage{multicol}
    \begin{multicol}{2}
    ...
    \end{multicol}

### Page margins

    \usepackage[a4paper,lmargin={2.6cm},rmargin={2.6cm},tmargin={2.6cm},bmargin={2.6cm}]{geometry}

### Hyphenation breaking in URLs

    \usepackage[hyphens]{url}

### Units in math equations

    \newcommand{\unit}[1]{\ensuremath{\,\mathrm{#1}}}

Source: [vemod.net/typesetting-units-in-latex](http://vemod.net/typesetting-units-in-latex)

### Degree symbol

    \usepackage{gensymb}
    \degree

Source: [anthony.liekens.net/index.php/LaTeX/DegreesNotation](http://anthony.liekens.net/index.php/LaTeX/DegreesNotation)

