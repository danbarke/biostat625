#!/bin/bash
#SBATCH --job-name=save_array
#SBATCH --time=5:00
#SBATCH --mail-type=NONE
#SBATCH --mem=1g
#SBATCH --cpus-per-task=1
#SBATCH --array=1-10
#SBATCH --partition=biostat625,biostat-default
#SBATCH --account=biostat625-f2022
#SBATCH --qos=biostat625

R CMD BATCH --no-save --no-restore saveobjectsarrayscript.R saveobjectarrayscript_$SLURM_ARRAY_TASK_ID.Rout
