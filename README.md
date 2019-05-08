# linscheid-2019
Scripts and data files related to Linscheid 2019 paper

1. Download the raw data fastq files from the [Gene Expression Omnibus](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE130710) 
2. Run 10x Genomics Cell Ranger (v3.0) on the fastq files
3. Edit `run_seurat_analysis.sh`
    * replace the value of dirs_project_10x argument by the Cell Ranger sample output folders which contain subdir `outs/raw_feature_bc_matrix` with files `matrix.mtx.gz`, `features.tsv.gz`, and `barcodes.tsv.gz` files
    * replace `dir_out` argument value by desired output directory
    * replace `run_prefix` argument value by desired prefix to append to output filenames
    * replace `RAM_Gb_max` argument value by maximum number of Gb RAM available for the script
4. Install R version 3.5.3 and package dependencies: 
    *optparse
    *openxlsx
    *Matrix
    *Matrix.utils
    *Seurat
    *ggplot2
    *scales
    *dplyr
    *tidyr
    *parallel
    *reshape
    *reshape2
    *cowplot
    *readr
    *RColorBrewer

    (see full R environment, including package versions, below)
5. Run the analysis: `time bash run_seurat_analysis.sh &> run_seurat_analysis_log.txt`


> devtools::session_info()
- Session info ---------------------------------------------------------------
 setting  value
 version  R version 3.5.3 (2019-03-11)
 os       Storage
 system   x86_64, linux-gnu
 ui       X11
 language (EN)
 collate  en_US.UTF-8
 ctype    C
 tz       Europe/Copenhagen
 date     2019-05-08

- Packages -------------------------------------------------------------------
 ! package      * version    date       lib source
   ape            5.3        2019-03-17 [1] CRAN (R 3.5.3)
 P assertthat     0.2.0      2017-04-11 [?] CRAN (R 3.5.3)
   backports      1.1.3      2018-12-14 [1] CRAN (R 3.5.3)
   bibtex         0.4.2      2017-06-30 [1] CRAN (R 3.5.3)
   bitops         1.0-6      2013-08-17 [1] CRAN (R 3.5.3)
   callr          3.2.0      2019-03-15 [1] CRAN (R 3.5.3)
   caTools        1.17.1.2   2019-03-06 [1] CRAN (R 3.5.3)
 P cli            1.0.1      2018-09-25 [?] CRAN (R 3.5.3)
 P cluster        2.0.7-1    2018-04-13 [?] CRAN (R 3.5.3)
 P codetools      0.2-16     2018-12-24 [?] CRAN (R 3.5.3)
   colorspace     1.4-1      2019-03-18 [1] CRAN (R 3.5.3)
   cowplot      * 0.9.4      2019-01-08 [1] CRAN (R 3.5.3)
   crayon         1.3.4      2017-09-16 [1] CRAN (R 3.5.3)
   data.table     1.12.0     2019-01-13 [1] CRAN (R 3.5.3)
   desc           1.2.0      2018-05-01 [1] CRAN (R 3.5.3)
   devtools       2.0.1      2018-10-26 [1] CRAN (R 3.5.3)
   digest         0.6.18     2018-10-10 [1] CRAN (R 3.5.3)
   dplyr        * 0.8.0.1    2019-02-15 [1] CRAN (R 3.5.3)
   fitdistrplus   1.0-14     2019-01-23 [1] CRAN (R 3.5.3)
   fs             1.2.7      2019-03-19 [1] CRAN (R 3.5.3)
   future         1.12.0     2019-03-08 [1] CRAN (R 3.5.3)
   future.apply   1.2.0      2019-03-07 [1] CRAN (R 3.5.3)
   gbRd           0.4-11     2012-10-01 [1] CRAN (R 3.5.3)
   gdata          2.18.0     2017-06-06 [1] CRAN (R 3.5.3)
   getopt         1.20.3     2019-03-22 [1] CRAN (R 3.5.3)
   ggplot2      * 3.1.0      2018-10-25 [1] CRAN (R 3.5.3)
