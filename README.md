# Nipah Malaysia RBP mAb 8G3
DMS mapping of escape mutations for mAb 8G3.

Link to interactive heatmap of escape mutations: [https://dms-vep.org/Nipah_Malaysia_RBP_DMS_mAb_8G3/htmls/8G3_mut_effect.html](https://dms-vep.org/Nipah_Malaysia_RBP_DMS_mAb_8G3/htmls/8G3_mut_effect.html)


For additional information about the pipeline, including links to raw data, see [https://dms-vep.github.io/Nipah_Malaysia_RBP_DMS_mAb_8G3/](https://dms-vep.github.io/Nipah_Malaysia_RBP_DMS_mAb_8G3/).



## Information about project
This repo contains data and analyses from deep mutational scanning experiments on the Nipah virus RBP that were done using pseudotyped lentiviruses. All experiments were performed on the reference Nipah genome sequenced during the original outbreak in Malaysia [NC_002728.1](https://www.ncbi.nlm.nih.gov/nuccore/NC_002728.1). Thirty two amino acids were removed from the cytoplasmic tail to improve lentivirus titers, and all residues between RBP reference sites 71 and 602 contain every possible single missense mutation. Stop codons were designed to occur at every other position from positions 71 to 234. 

For escape mapping, three concentrations of mAb 8G3 were used to select for escape mutations (0.5,0.7,1.2 µg/mL).

## Details of repo
The analysis is mostly run by [dms-vep-pipeline-3](https://github.com/dms-vep/dms-vep-pipeline-3), which is included as a [git submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

To run the analysis, create the `conda` environment in [dms-vep-pipeline-3/environment.yml](dms-vep-pipeline-3/environment.yml), activate it, and run the `snakemake` pipeline in [dms-vep-pipeline-3/Snakefile](dms-vep-pipeline-3/Snakefile) with:
    conda activate dms-vep-pipeline-3
    snakemake -s dms-vep-pipeline-3/Snakefile -j <n_jobs>
    
The configuration for the analysis is in [config.yaml](config.yaml), and additional input data are in [./data/](data).
Additional input data are in [./data/](data).

The results of running the pipeline are placed in [./results/](results), only some of which are tracked per the [.gitignore](.gitignore) file.
HTML documentation is created by the pipeline and placed in [./docs/](docs), where it is rendered via GitHub Pages at [https://dms-vep.github.io/Nipah_Malaysia_RBP_DMS_mAb_8G3/](https://dms-vep.github.io/Nipah_Malaysia_RBP_DMS_mAb_8G3/)


