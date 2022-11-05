FROM pandoc/latex

# install texlive packages
RUN tlmgr update --self --all \
    && tlmgr install \
        collection-basic \
        collection-fontsrecommended \
        collection-langjapanese \
        collection-latex \
        collection-latexextra \
        collection-latexrecommended \
        ctablestack \
        fontspec \
        latexmk \
        lualatex-math \
        luaotfload \
        luatexbase \
        sourcecodepro \
        sourcesanspro

