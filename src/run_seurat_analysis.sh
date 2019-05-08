# Script to run seurat analysis

cd ~/linscheid-2019

Rscript ./src/seurat_analysis.R --dirs_project_10x 'c("/nfsdata/data/sc-10x/data-runs/190301-lundby-coronarysinus/H4_S1-5000_cells/", "/nfsdata/data/sc-10x/data-runs/190301-lundby-coronarysinus/H5_S2-5000_cells/")' --dir_out . --flag_datatype sc --flag_organism mmusculus --prefix_data 190301-lundby-coronarysinus  --prefix_run 1  --n_cells_loaded 9000 --use_filtered_feature_bc_matrix F --nCount_RNA_min 3000  --nCount_RNA_max 50000 --run_SoupX F --nFeature_RNA_min 0 --nFeature_RNA_max 25000 --percent.mito_max 0.08 --percent.ribo_max 0.01 --rm_sc_multiplets T --vars.to.regress "c('percent.mito','percent.ribo','nCount_RNA')" --merge_group_IDs "c('all')" --n_PC 75 --use_jackstraw F --res_primary 1.2 --feats_to_plot "c('percent.mito','percent.ribo','nCount_RNA','nFeature_RNA')" --RAM_Gb_max 250

