# linscheid-2019
Scripts and data files related to Linscheid 2019 paper

1. Download the raw data fastq files from the [Gene Expression Omnibus](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE130710) 
2. Run 10x Genomics Cell Ranger (v3.0) on the fastq files
3. Edit `run_seurat_analysis.sh`
    * replace the value of dirs_project_10x argument by the Cell Ranger sample output folders which contain subdir `outs/raw_feature_bc_matrix` with files `matrix.mtx.gz`, `features.tsv.gz`, and `barcodes.tsv.gz` files
    * replace `dir_out` argument value by desired output directory
    * replace `run_prefix` argument value by desired prefix to append to output filenames
    * replace `RAM_Gb_max` argument value by maximum number of Gb RAM available for the script
4. Run the analysis: `time bash run_seurat_analysis.sh &> run_seurat_analysis_log.txt`
