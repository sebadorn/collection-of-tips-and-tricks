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

(Written later, after it finally worked. Had some problems on the way, so it may miss something.)

1. Find the font you want, for example [Inconsolata](http://www.ctan.org/tex-archive/fonts/inconsolata/).
2. Download the TDS archive.
3. Platziere es in `/usr/share/texmf/` und entpacke es (`unzip`).
4. `mktexlsr` und `updmap --enable Map=zi4.map` bzw. der passende Map-Name.

Source: [tex.stackexchange.com/questions/145833/inconsolata-bold-on-old-ubuntu-precise-texlive](https://tex.stackexchange.com/questions/145833/inconsolata-bold-on-old-ubuntu-precise-texlive)


### Vertically center content on a page

    \vspace*{\fill}
    Lorem ipsum dolor sit amet.
    \vspace*{\fill}


### Make URLs in a PDF clickable and add an internal ToC to the PDF

    \usepackage[hidelinks]{hyperref}

The `hidelinks` option makes the links look like before, without being colored or having a border around them. To create a working link use the `\url{}` command.


### Insert completely empty page

    \newpage\null\thispagestyle{empty}\newpage

Source: [tex.stackexchange.com/a/34935](http://tex.stackexchange.com/a/34935)
