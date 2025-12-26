#!/bin/bash
#SBATCH --job-name=pytorch_gpu
#SBATCH --partition=bohr-gpu
#SBATCH --chdir=/home/alumno25/lab-gpu
#SBATCH --output=salida-pytorch-%j.out
#SBATCH --error=error-pytorch-%j.err
#SBATCH --ntasks=1

module load anaconda/2025.06

ipython matrix-mult-alumno25.ipynb

module unload anaconda/2025.06
