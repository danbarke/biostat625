#!/bin/bash
#SBATCH --job-name=combine
#SBATCH --time=5:00
#SBATCH --mail-type=NONE
#SBATCH --mem=1g
#SBATCH --cpus-per-task=1
#SBATCH --partition=standard
#SBATCH --account=biostat625f23_class

module load Rtidyverse
R CMD BATCH --no-save --no-restore combine.R
