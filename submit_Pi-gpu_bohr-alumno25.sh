#!/bin/bash
#SBATCH --job-name=pi_gpu
#SBATCH --partition=bohr-gpu
#SBATCH --chdir=/home/alumno25/lab-gpu
#SBATCH --output=salida-pi-gpu-%j.out
#SBATCH --error=error-pi-gpu-%j.err
#SBATCH --ntasks=1

module load anaconda/2025.06

ipython pi-gpu-alumno25.ipynb $1

module unload anaconda/2025.06
