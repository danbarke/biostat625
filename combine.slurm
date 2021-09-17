#!/bin/bash
#SBATCH --job-name=combine
#SBATCH --time=5:00
#SBATCH --mail-type=NONE
#SBATCH --mem=1g
#SBATCH --cpus-per-task=1
#SBATCH --partition=biostat625,biostat-default
#SBATCH --account=biostat625-f2021
#SBATCH --qos=biostat625

R CMD BATCH --no-save --no-restore combine.R
