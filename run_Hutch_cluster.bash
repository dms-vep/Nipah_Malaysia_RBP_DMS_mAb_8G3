#!/bin/bash
#
#SBATCH -c 8

snakemake -c 8 --use-conda --rerun-incomplete -s dms-vep-pipeline-3/Snakefile