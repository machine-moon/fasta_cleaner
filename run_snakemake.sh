#!/bin/bash
#SBATCH --job-name=fasta_cleaner
#SBATCH --output=snakemake_output.log
#SBATCH --error=snakemake_error.log
#SBATCH --cluster=gpsc8
#SBATCH --partition=standard
#SBATCH --account=aafc_aac
#SBATCH --time=00:01:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --comment="first"

source /gpfs/fs7/aafc/common/miniforge/miniforge3/etc/profile.d/conda.sh
conda activate fasta_cleaner
snakemake --use-conda --cores 2
