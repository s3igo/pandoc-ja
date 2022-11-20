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

# install pandoc-crossref
ARG PANDOC_CROSSREF_VERSION="0.3.13.0"
RUN wget -q -O - https://github.com/lierdakil/pandoc-crossref/archive/refs/tags/v${PANDOC_CROSSREF_VERSION}.tar.gz \
    | tar xz \
    && mv pandoc-crossref* pandoc-crossref \
    && mv pandoc-crossref /usr/bin/

COPY .pandoc/ /.pandoc/
ENTRYPOINT ["pandoc", "-d", "/.pandoc/default.yml"]
