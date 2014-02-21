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

### Bold in math mode

    \usepackage{amsmath}
    \usepackage{bm}
    $\bm{v}$

Source: [tex.stackexchange.com/a/22661](http://tex.stackexchange.com/a/22661)

### Install a font from CTAN

(Nachträglich aus Erinnerung aufgeschrieben und ich hatte einige Probleme/Fehlversuche, es könnte also nicht ganz stimmen.)

1. Find the font you want, for example [Inconsolata](http://www.ctan.org/tex-archive/fonts/inconsolata/).
2. Download the TDS archive.
3. Platziere es in `/usr/share/texmf/` und entpacke es (`unzip`).
4. `mktexlsr` und `updmap --enable Map=zi4.map` bzw. der passende Map-Name.

Source: [tex.stackexchange.com/questions/145833/inconsolata-bold-on-old-ubuntu-precise-texlive](https://tex.stackexchange.com/questions/145833/inconsolata-bold-on-old-ubuntu-precise-texlive)

