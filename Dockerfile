FROM "pandoc/latex"
RUN apk --update add make && \
    tlmgr update --self --all && \
    tlmgr install collection-langjapanese
