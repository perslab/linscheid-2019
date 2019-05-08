# linscheid-2019
Scripts and data files related to Linscheid 2019 paper

## Run the analysis

1. Download the raw data fastq files from the [Gene Expression Omnibus](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE130710) 
2. Run [10x Genomics Cell Ranger (v3.0)](https://support.10xgenomics.com/single-cell-gene-expression/software/pipelines/latest/what-is-cell-ranger) on the fastq files
3. Edit `run_seurat_analysis.sh`
    * replace the value of dirs_project_10x argument by the Cell Ranger sample output folders which contain subdir `outs/raw_feature_bc_matrix` with files `matrix.mtx.gz`, `features.tsv.gz`, and `barcodes.tsv.gz` files
    * replace `dir_out` argument value by desired output directory
    * replace `run_prefix` argument value by desired prefix to append to output filenames
    * replace `RAM_Gb_max` argument value by maximum number of Gb RAM available for the script
4. Install R version 3.5.3 and package dependencies: 
    * optparse
    * openxlsx
    * Matrix
    * Matrix.utils
    * Seurat
    * ggplot2
    * scales
    * dplyr
    * tidyr
    * parallel
    * reshape
    * reshape2
    * cowplot
    * readr
    * RColorBrewer

    (see full R environment, including package versions, below)
5. Run the analysis: `time bash run_seurat_analysis.sh &> run_seurat_analysis_log.txt`

## Session Info

> pander(sessionInfo())
**R version 3.5.3 (2019-03-11)**

**Platform:** x86_64-pc-linux-gnu (64-bit)

**locale:**
_LC_CTYPE=C_, _LC_NUMERIC=C_, _LC_TIME=en_US.UTF-8_, _LC_COLLATE=en_US.UTF-8_, _LC_MONETARY=en_US.UTF-8_, _LC_MESSAGES=en_US.UTF-8_, _LC_PAPER=en_US.UTF-8_, _LC_NAME=C_, _LC_ADDRESS=C_, _LC_TELEPHONE=C_, _LC_MEASUREMENT=en_US.UTF-8_ and _LC_IDENTIFICATION=C_

**attached base packages:**
_parallel_, _stats_, _graphics_, _grDevices_, _datasets_, _utils_, _methods_ and _base_

**other attached packages:**
_pander(v.0.6.3)_, _tidyr(v.0.8.3)_, _RColorBrewer(v.1.1-2)_, _readr(v.1.3.1)_, _openxlsx(v.4.1.0)_, _cowplot(v.0.9.4)_, _reshape2(v.1.4.3)_, _reshape(v.0.8.8)_, _dplyr(v.0.8.0.1)_, _scales(v.1.0.0)_, _ggplot2(v.3.1.0)_, _Seurat(v.3.0.0.9000)_, _Matrix.utils(v.0.9.7)_, _Matrix(v.1.2-15)_, _optparse(v.1.6.2)_ and _packrat(v.0.5.0)_

**loaded via a namespace (and not attached):**
_nlme(v.3.1-137)_, _tsne(v.0.1-3)_, _fs(v.1.2.7)_, _bitops(v.1.0-6)_, _usethis(v.1.4.0)_, _devtools(v.2.0.1)_, _httr(v.1.4.0)_, _rprojroot(v.1.3-2)_, _backports(v.1.1.3)_, _tools(v.3.5.3)_, _R6(v.2.4.0)_, _irlba(v.2.3.3)_, _KernSmooth(v.2.23-15)_, _lazyeval(v.0.2.2)_, _colorspace(v.1.4-1)_, _npsurv(v.0.4-0)_, _withr(v.2.1.2)_, _prettyunits(v.1.0.2)_, _processx(v.3.3.0)_, _tidyselect(v.0.2.5)_, _compiler(v.3.5.3)_, _cli(v.1.0.1)_, _desc(v.1.2.0)_, _plotly(v.4.8.0)_, _labeling(v.0.3)_, _caTools(v.1.17.1.2)_, _lmtest(v.0.9-36)_, _callr(v.3.2.0)_, _ggridges(v.0.5.1)_, _pbapply(v.1.4-0)_, _stringr(v.1.4.0)_, _digest(v.0.6.18)_, _R.utils(v.2.8.0)_, _pkgconfig(v.2.0.2)_, _htmltools(v.0.3.6)_, _sessioninfo(v.1.1.1)_, _bibtex(v.0.4.2)_, _htmlwidgets(v.1.3)_, _rlang(v.0.3.1)_, _zoo(v.1.8-5)_, _jsonlite(v.1.6)_, _ica(v.1.0-2)_, _gtools(v.3.8.1)_, _zip(v.2.0.1)_, _R.oo(v.1.22.0)_, _magrittr(v.1.5)_, _Rcpp(v.1.0.1)_, _munsell(v.0.5.0)_, _ape(v.5.3)_, _reticulate(v.1.11.1)_, _R.methodsS3(v.1.7.1)_, _stringi(v.1.4.3)_, _gbRd(v.0.4-11)_, _MASS(v.7.3-51.1)_, _pkgbuild(v.1.0.3)_, _gplots(v.3.0.1.1)_, _Rtsne(v.0.15)_, _plyr(v.1.8.4)_, _grid(v.3.5.3)_, _gdata(v.2.18.0)_, _listenv(v.0.7.0)_, _ggrepel(v.0.8.0)_, _crayon(v.1.3.4)_, _lattice(v.0.20-38)_, _splines(v.3.5.3)_, _hms(v.0.4.2)_, _SDMTools(v.1.1-221)_, _ps(v.1.3.0)_, _pillar(v.1.3.1)_, _igraph(v.1.2.4)_, _pkgload(v.1.0.2)_, _future.apply(v.1.2.0)_, _codetools(v.0.2-16)_, _glue(v.1.3.1)_, _lsei(v.1.2-0)_, _metap(v.1.1)_, _remotes(v.2.0.2)_, _data.table(v.1.12.0)_, _png(v.0.1-7)_, _Rdpack(v.0.10-1)_, _testthat(v.2.0.1)_, _gtable(v.0.3.0)_, _grr(v.0.9.5)_, _getopt(v.1.20.3)_, _RANN(v.2.6.1)_, _purrr(v.0.3.2)_, _future(v.1.12.0)_, _assertthat(v.0.2.0)_, _rsvd(v.1.0.0)_, _survival(v.2.43-3)_, _viridisLite(v.0.3.0)_, _jetpack(v.0.4.2)_, _tibble(v.2.0.1)_, _memoise(v.1.1.0)_, _cluster(v.2.0.7-1)_, _globals(v.0.12.4)_, _fitdistrplus(v.1.0-14)_ and _ROCR(v.1.0-7)_>
