#!/bin/bash
#
#SBATCH -c 8

snakemake -c 8 --sdm conda --rerun-incomplete -s dms-vep-pipeline-3/Snakefile