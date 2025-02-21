{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  nativeBuildInputs = with pkgs.buildPackages; [
    (texlive.combine {
      inherit (texlive)
        scheme-basic
        latexmk
        xcolor
        eurosym
        titlesec
        blindtext
        listings
        footmisc
        mdframed
        etoolbox
        zref
        needspace
        pgf
        parskip
        enumitem
        csquotes
        float
        bbm
        bbm-macros
        tcolorbox
        environ
        varwidth
        biblatex
        esint
        nicematrix
        stmaryrd
        mathtools
        extarrows
        jknapltx
        pgfplots
        multirow
        ifoddpage
        relsize
        karnaugh-map
        xstring
        circuitikz
        ulem
        tikzfill
        pdfcol
        cleveref
        collection-fontsrecommended
        fifo-stack
        tabto-ltx
        totcount
        tikzmark
        pdftex
        esint-type1
        alg
        algorithms
        algorithm2e
        algpseudocodex
        algorithmicx
        algobox
        algxpar
        todonotes
      ;}
    )
  ];
}

test
