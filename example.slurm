#!/bin/bash
#SBATCH --job-name=hello_world
#SBATCH --time=5:00
#SBATCH --mail-type=NONE
#SBATCH --mem=1g
#SBATCH --cpus-per-task=1

R CMD BATCH --no-save --no-restore script.R
