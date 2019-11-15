#!/bin/bash
#SBATCH --job-name=hello_world
#SBATCH --time=5:00
#SBATCH --mail-type=NONE
#SBATCH --mem=1g
#SBATCH --cpus-per-task=1
#SBATCH --array=1-10

R CMD BATCH --no-save --no-restore arrayscript.R arrayscript_$SLURM_ARRAY_TASK_ID.Rout
