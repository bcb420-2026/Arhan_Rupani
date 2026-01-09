ARG TAG=winter2026-arm64
FROM risserlin/bcb420-base-image:${TAG}

RUN R -e 'BiocManager::install(c("DESeq2", "enrichplot"))'

RUN install2.r -d TRUE -r "https://cran.rstudio.com" pheatmap

EXPOSE 5000